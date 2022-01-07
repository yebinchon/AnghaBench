; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_emptyobjects.c_test_odb_emptyobjects__read_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_emptyobjects.c_test_odb_emptyobjects__read_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"4b825dc642cb6eb9a060e54bf8d69288fbee4904\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_OBJECT_TREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_emptyobjects__read_tree() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i32 @git_tree_lookup(i32** %2, i32 %5, i32* %1)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @GIT_OBJECT_TREE, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @git_object_type(i32* %9)
  %11 = call i32 @cl_assert_equal_i(i32 %8, i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @git_tree_entrycount(i32* %12)
  %14 = call i32 @cl_assert_equal_i(i32 0, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @git_tree_entry_byname(i32* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @cl_assert_equal_p(i32* null, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @git_tree_free(i32* %18)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_object_type(i32*) #1

declare dso_local i32 @git_tree_entrycount(i32*) #1

declare dso_local i32 @cl_assert_equal_p(i32*, i32) #1

declare dso_local i32 @git_tree_entry_byname(i32*, i8*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
