; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_iterator.c_contains_branches.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_iterator.c_contains_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expectations = type { i32, i32 }

@GIT_ITEROVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expectations*, i32*)* @contains_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @contains_branches(%struct.expectations* %0, i32* %1) #0 {
  %3 = alloca %struct.expectations*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.expectations* %0, %struct.expectations** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %45, %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @git_branch_next(i32** %5, i32* %6, i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %42, %13
  %15 = load %struct.expectations*, %struct.expectations** %3, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.expectations, %struct.expectations* %15, i64 %17
  %19 = getelementptr inbounds %struct.expectations, %struct.expectations* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %14
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @git_reference_shorthand(i32* %23)
  %25 = load %struct.expectations*, %struct.expectations** %3, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.expectations, %struct.expectations* %25, i64 %27
  %29 = getelementptr inbounds %struct.expectations, %struct.expectations* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strcmp(i32 %24, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %22
  %34 = load %struct.expectations*, %struct.expectations** %3, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.expectations, %struct.expectations* %34, i64 %36
  %38 = getelementptr inbounds %struct.expectations, %struct.expectations* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %33, %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %14

45:                                               ; preds = %14
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @git_reference_free(i32* %46)
  br label %9

48:                                               ; preds = %9
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @GIT_ITEROVER, align 4
  %51 = call i32 @cl_assert_equal_i(i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @git_branch_next(i32**, i32*, i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @git_reference_shorthand(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
