; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_stash.c_commit_untracked.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_stash.c_commit_untracked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"untracked files on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i8*, i32*, i32)* @commit_untracked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_untracked(i32** %0, i32* %1, i32* %2, i8* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %17 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %17, i32* %15, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @build_untracked_tree(i32** %13, i32* %18, i32* %19, i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %42

24:                                               ; preds = %6
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @git_buf_printf(i32* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %16, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %42

29:                                               ; preds = %24
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @git_buf_cstr(i32* %15)
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @git_commit_create(i32* %14, i32* %30, i32* null, i32* %31, i32* %32, i32* null, i32 %33, i32* %34, i32 0, i32* null)
  store i32 %35, i32* %16, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %42

38:                                               ; preds = %29
  %39 = load i32**, i32*** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @git_commit_lookup(i32** %39, i32* %40, i32* %14)
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %38, %37, %28, %23
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @git_tree_free(i32* %43)
  %45 = call i32 @git_buf_dispose(i32* %15)
  %46 = load i32, i32* %16, align 4
  ret i32 %46
}

declare dso_local i32 @build_untracked_tree(i32**, i32*, i32*, i32) #1

declare dso_local i32 @git_buf_printf(i32*, i8*, i8*) #1

declare dso_local i32 @git_commit_create(i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_commit_lookup(i32**, i32*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
