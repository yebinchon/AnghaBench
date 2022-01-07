; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blame.c_git_blame_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blame.c_git_blame_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BLAME_OPTIONS_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_blame_file(i32** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  %13 = load i32, i32* @GIT_BLAME_OPTIONS_INIT, align 4
  store i32 %13, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = icmp ne i32** %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br label %22

22:                                               ; preds = %19, %16, %4
  %23 = phi i1 [ false, %16 ], [ false, %4 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @normalize_options(i32* %11, i32* %26, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %50

31:                                               ; preds = %22
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = call i32* @git_blame__alloc(i32* %32, i32 %33, i8* %34)
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @GIT_ERROR_CHECK_ALLOC(i32* %36)
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @load_blob(i32* %38)
  store i32 %39, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %50

42:                                               ; preds = %31
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @blame_internal(i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %50

47:                                               ; preds = %42
  %48 = load i32*, i32** %12, align 8
  %49 = load i32**, i32*** %6, align 8
  store i32* %48, i32** %49, align 8
  store i32 0, i32* %5, align 4
  br label %54

50:                                               ; preds = %46, %41, %30
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @git_blame_free(i32* %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @normalize_options(i32*, i32*, i32*) #1

declare dso_local i32* @git_blame__alloc(i32*, i32, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i32*) #1

declare dso_local i32 @load_blob(i32*) #1

declare dso_local i32 @blame_internal(i32*) #1

declare dso_local i32 @git_blame_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
