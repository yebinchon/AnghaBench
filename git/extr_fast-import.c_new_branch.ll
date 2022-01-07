; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_new_branch.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_new_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i32, i64, i64, %struct.TYPE_4__, %struct.branch*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@branch_table_sz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Invalid attempt to create duplicate branch: %s\00", align 1
@REFNAME_ALLOW_ONELEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Branch name doesn't conform to GIT standards: %s\00", align 1
@fi_mem_pool = common dso_local global i32 0, align 4
@branch_table = common dso_local global %struct.branch** null, align 8
@S_IFDIR = common dso_local global i8* null, align 8
@MAX_PACK_ID = common dso_local global i32 0, align 4
@branch_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.branch* (i8*)* @new_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.branch* @new_branch(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.branch*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @strlen(i8* %6)
  %8 = call i32 @hc_str(i8* %5, i32 %7)
  %9 = load i32, i32* @branch_table_sz, align 4
  %10 = urem i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call %struct.branch* @lookup_branch(i8* %11)
  store %struct.branch* %12, %struct.branch** %4, align 8
  %13 = load %struct.branch*, %struct.branch** %4, align 8
  %14 = icmp ne %struct.branch* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @die(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* @REFNAME_ALLOW_ONELEVEL, align 4
  %21 = call i64 @check_refname_format(i8* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @die(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = call %struct.branch* @mem_pool_calloc(i32* @fi_mem_pool, i32 1, i32 48)
  store %struct.branch* %27, %struct.branch** %4, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @pool_strdup(i8* %28)
  %30 = load %struct.branch*, %struct.branch** %4, align 8
  %31 = getelementptr inbounds %struct.branch, %struct.branch* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.branch**, %struct.branch*** @branch_table, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.branch*, %struct.branch** %32, i64 %34
  %36 = load %struct.branch*, %struct.branch** %35, align 8
  %37 = load %struct.branch*, %struct.branch** %4, align 8
  %38 = getelementptr inbounds %struct.branch, %struct.branch* %37, i32 0, i32 4
  store %struct.branch* %36, %struct.branch** %38, align 8
  %39 = load i8*, i8** @S_IFDIR, align 8
  %40 = load %struct.branch*, %struct.branch** %4, align 8
  %41 = getelementptr inbounds %struct.branch, %struct.branch* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i8* %39, i8** %45, align 8
  %46 = load i8*, i8** @S_IFDIR, align 8
  %47 = load %struct.branch*, %struct.branch** %4, align 8
  %48 = getelementptr inbounds %struct.branch, %struct.branch* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i8* %46, i8** %52, align 8
  %53 = load %struct.branch*, %struct.branch** %4, align 8
  %54 = getelementptr inbounds %struct.branch, %struct.branch* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.branch*, %struct.branch** %4, align 8
  %56 = getelementptr inbounds %struct.branch, %struct.branch* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @MAX_PACK_ID, align 4
  %58 = load %struct.branch*, %struct.branch** %4, align 8
  %59 = getelementptr inbounds %struct.branch, %struct.branch* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.branch*, %struct.branch** %4, align 8
  %61 = load %struct.branch**, %struct.branch*** @branch_table, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.branch*, %struct.branch** %61, i64 %63
  store %struct.branch* %60, %struct.branch** %64, align 8
  %65 = load i32, i32* @branch_count, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @branch_count, align 4
  %67 = load %struct.branch*, %struct.branch** %4, align 8
  ret %struct.branch* %67
}

declare dso_local i32 @hc_str(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.branch* @lookup_branch(i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i64 @check_refname_format(i8*, i32) #1

declare dso_local %struct.branch* @mem_pool_calloc(i32*, i32, i32) #1

declare dso_local i32 @pool_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
