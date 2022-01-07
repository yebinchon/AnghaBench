; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_lookup_branch.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_lookup_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i32, %struct.branch* }

@branch_table_sz = common dso_local global i32 0, align 4
@branch_table = common dso_local global %struct.branch** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.branch* (i8*)* @lookup_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.branch* @lookup_branch(i8* %0) #0 {
  %2 = alloca %struct.branch*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.branch*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = call i32 @hc_str(i8* %6, i32 %8)
  %10 = load i32, i32* @branch_table_sz, align 4
  %11 = urem i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.branch**, %struct.branch*** @branch_table, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.branch*, %struct.branch** %12, i64 %14
  %16 = load %struct.branch*, %struct.branch** %15, align 8
  store %struct.branch* %16, %struct.branch** %5, align 8
  br label %17

17:                                               ; preds = %30, %1
  %18 = load %struct.branch*, %struct.branch** %5, align 8
  %19 = icmp ne %struct.branch* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.branch*, %struct.branch** %5, align 8
  %23 = getelementptr inbounds %struct.branch, %struct.branch* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @strcmp(i8* %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = load %struct.branch*, %struct.branch** %5, align 8
  store %struct.branch* %28, %struct.branch** %2, align 8
  br label %35

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.branch*, %struct.branch** %5, align 8
  %32 = getelementptr inbounds %struct.branch, %struct.branch* %31, i32 0, i32 1
  %33 = load %struct.branch*, %struct.branch** %32, align 8
  store %struct.branch* %33, %struct.branch** %5, align 8
  br label %17

34:                                               ; preds = %17
  store %struct.branch* null, %struct.branch** %2, align 8
  br label %35

35:                                               ; preds = %34, %27
  %36 = load %struct.branch*, %struct.branch** %2, align 8
  ret %struct.branch* %36
}

declare dso_local i32 @hc_str(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
