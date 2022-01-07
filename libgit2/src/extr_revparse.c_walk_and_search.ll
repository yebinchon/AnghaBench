; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revparse.c_walk_and_search.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revparse.c_walk_and_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*)* @walk_and_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_and_search(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  br label %11

11:                                               ; preds = %37, %3
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @git_revwalk_next(i32* %9, i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @git_revwalk_repository(i32* %17)
  %19 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %20 = call i32 @git_object_lookup(i32** %10, i32 %18, i32* %9, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @GIT_ENOTFOUND, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %51

28:                                               ; preds = %23, %16
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @git_commit_message(i32* %30)
  %32 = call i32 @git_regexp_match(i32* %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32*, i32** %10, align 8
  %36 = load i32**, i32*** %5, align 8
  store i32* %35, i32** %36, align 8
  store i32 0, i32* %4, align 4
  br label %51

37:                                               ; preds = %28
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @git_object_free(i32* %38)
  br label %11

40:                                               ; preds = %11
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @GIT_ITEROVER, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %47, %43, %40
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %34, %27
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @git_revwalk_next(i32*, i32*) #1

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #1

declare dso_local i32 @git_revwalk_repository(i32*) #1

declare dso_local i32 @git_regexp_match(i32*, i32) #1

declare dso_local i32 @git_commit_message(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
