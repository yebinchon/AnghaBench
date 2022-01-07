; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_iterator.c_assert_branch_has_been_found.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_iterator.c_assert_branch_has_been_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expectations = type { i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"expected branch not found in list.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expectations*, i8*)* @assert_branch_has_been_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_branch_has_been_found(%struct.expectations* %0, i8* %1) #0 {
  %3 = alloca %struct.expectations*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.expectations* %0, %struct.expectations** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %33, %2
  %7 = load %struct.expectations*, %struct.expectations** %3, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.expectations, %struct.expectations* %7, i64 %9
  %11 = getelementptr inbounds %struct.expectations, %struct.expectations* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %6
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.expectations*, %struct.expectations** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.expectations, %struct.expectations* %16, i64 %18
  %20 = getelementptr inbounds %struct.expectations, %struct.expectations* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @strcmp(i8* %15, i64 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %14
  %25 = load %struct.expectations*, %struct.expectations** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.expectations, %struct.expectations* %25, i64 %27
  %29 = getelementptr inbounds %struct.expectations, %struct.expectations* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @cl_assert_equal_i(i32 1, i32 %30)
  br label %38

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6

36:                                               ; preds = %6
  %37 = call i32 @cl_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %24
  ret void
}

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @cl_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
