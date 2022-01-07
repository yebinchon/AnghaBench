; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-ref-store.c_cmd_update_ref.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-ref-store.c_cmd_update_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"refname\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"new-sha1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"old-sha1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"not sha-1\00", align 1
@UPDATE_REFS_DIE_ON_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, i8**)* @cmd_update_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_update_ref(%struct.ref_store* %0, i8** %1) #0 {
  %3 = alloca %struct.ref_store*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id, align 4
  %11 = alloca %struct.object_id, align 4
  store %struct.ref_store* %0, %struct.ref_store** %3, align 8
  store i8** %1, i8*** %4, align 8
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %13, i8*** %4, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = call i8* @notnull(i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %5, align 8
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %18, i8*** %4, align 8
  %19 = load i8*, i8** %17, align 8
  %20 = ptrtoint i8* %19 to i32
  %21 = call i8* @notnull(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %6, align 8
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %23, i8*** %4, align 8
  %24 = load i8*, i8** %22, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = call i8* @notnull(i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %26, i8** %7, align 8
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %28, i8*** %4, align 8
  %29 = load i8*, i8** %27, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = call i8* @notnull(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %31, i8** %8, align 8
  %32 = load i8**, i8*** %4, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %33, i8*** %4, align 8
  %34 = load i8*, i8** %32, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = call i32 @arg_flags(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %36, i32* %9, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @get_oid_hex(i8* %37, %struct.object_id* %10)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %2
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @get_oid_hex(i8* %41, %struct.object_id* %11)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %2
  %45 = call i32 @die(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  %47 = load %struct.ref_store*, %struct.ref_store** %3, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @UPDATE_REFS_DIE_ON_ERR, align 4
  %52 = call i32 @refs_update_ref(%struct.ref_store* %47, i8* %48, i8* %49, %struct.object_id* %11, %struct.object_id* %10, i32 %50, i32 %51)
  ret i32 %52
}

declare dso_local i8* @notnull(i32, i8*) #1

declare dso_local i32 @arg_flags(i32, i8*) #1

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @refs_update_ref(%struct.ref_store*, i8*, i8*, %struct.object_id*, %struct.object_id*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
