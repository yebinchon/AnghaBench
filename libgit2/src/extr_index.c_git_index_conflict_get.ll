; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_conflict_get.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_conflict_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_index_conflict_get(i32** %0, i32** %1, i32** %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32**, i32*** %7, align 8
  %15 = icmp ne i32** %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %5
  %17 = load i32**, i32*** %8, align 8
  %18 = icmp ne i32** %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32**, i32*** %9, align 8
  %21 = icmp ne i32** %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br label %28

28:                                               ; preds = %25, %22, %19, %16, %5
  %29 = phi i1 [ false, %22 ], [ false, %19 ], [ false, %16 ], [ false, %5 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32**, i32*** %7, align 8
  store i32* null, i32** %32, align 8
  %33 = load i32**, i32*** %8, align 8
  store i32* null, i32** %33, align 8
  %34 = load i32**, i32*** %9, align 8
  store i32* null, i32** %34, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i64 @git_index_find(i64* %12, i32* %35, i8* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %40, i32* %6, align 4
  br label %58

41:                                               ; preds = %28
  %42 = load i32**, i32*** %7, align 8
  %43 = load i32**, i32*** %8, align 8
  %44 = load i32**, i32*** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @index_conflict__get_byindex(i32** %42, i32** %43, i32** %44, i32* %45, i64 %46)
  store i32 %47, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %58

51:                                               ; preds = %41
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %55, i32* %6, align 4
  br label %58

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %54, %49, %39
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_index_find(i64*, i32*, i8*) #1

declare dso_local i32 @index_conflict__get_byindex(i32**, i32**, i32**, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
