; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_git_merge_base_octopus.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_git_merge_base_octopus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"at least two commits are required to find an ancestor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_merge_base_octopus(i32* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 -1, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br label %21

21:                                               ; preds = %18, %15, %4
  %22 = phi i1 [ false, %15 ], [ false, %4 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %29 = call i32 @git_error_set(i32 %28, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %57

30:                                               ; preds = %21
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %34

34:                                               ; preds = %51, %30
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = load i64, i64* %8, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @git_merge_base(i32* %10, i32* %40, i32* %10, i32* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %57

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %11, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %34

54:                                               ; preds = %34
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %48, %27
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_merge_base(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
