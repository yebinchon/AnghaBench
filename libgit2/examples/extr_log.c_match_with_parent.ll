; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_log.c_match_with_parent.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_log.c_match_with_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Get parent\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Tree for parent\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Tree for commit\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Checking diff between parent and commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @match_with_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_with_parent(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = call i32 @git_commit_parent(i32** %7, i32* %12, i64 %14)
  %16 = call i32 @check_lg2(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @git_commit_tree(i32** %8, i32* %17)
  %19 = call i32 @check_lg2(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @git_commit_tree(i32** %9, i32* %20)
  %22 = call i32 @check_lg2(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @git_commit_owner(i32* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @git_diff_tree_to_tree(i32** %10, i32 %24, i32* %25, i32* %26, i32* %27)
  %29 = call i32 @check_lg2(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %30 = load i32*, i32** %10, align 8
  %31 = call i64 @git_diff_num_deltas(i32* %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @git_diff_free(i32* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @git_tree_free(i32* %35)
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @git_tree_free(i32* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @git_commit_free(i32* %39)
  %41 = load i32, i32* %11, align 4
  %42 = icmp sgt i32 %41, 0
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local i32 @check_lg2(i32, i8*, i32*) #1

declare dso_local i32 @git_commit_parent(i32**, i32*, i64) #1

declare dso_local i32 @git_commit_tree(i32**, i32*) #1

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, i32*) #1

declare dso_local i32 @git_commit_owner(i32*) #1

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
