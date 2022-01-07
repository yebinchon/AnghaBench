; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_tree.c_process_tree_to_tree_diffing.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_tree.c_process_tree_to_tree_diffing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"unsymlinked.git\00", align 1
@g_repo = common dso_local global i32 0, align 4
@a = common dso_local global i32* null, align 8
@b = common dso_local global i32* null, align 8
@diff = common dso_local global i32 0, align 4
@opts = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@expect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_tree_to_tree_diffing(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* @g_repo, align 4
  %6 = load i32, i32* @g_repo, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @resolve_commit_oid_to_tree(i32 %6, i8* %7)
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** @a, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @cl_assert(i32 %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @resolve_commit_oid_to_tree(i32 %13, i8* %14)
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** @b, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = load i32*, i32** @a, align 8
  %22 = load i32*, i32** @b, align 8
  %23 = call i32 @git_diff_tree_to_tree(i32* @diff, i32 %20, i32* %21, i32* %22, i32* @opts)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @diff, align 4
  %26 = load i32, i32* @diff_file_cb, align 4
  %27 = call i32 @git_diff_foreach(i32 %25, i32 %26, i32* null, i32* null, i32* null, i32* @expect)
  %28 = call i32 @cl_git_pass(i32 %27)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i8* @resolve_commit_oid_to_tree(i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_tree_to_tree(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @git_diff_foreach(i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
