; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/extr_lookupbypath.c_test_object_lookupbypath__from_subdir_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/extr_lookupbypath.c_test_object_lookupbypath__from_subdir_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_root_tree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"subdir\00", align 1
@g_repo = common dso_local global i32 0, align 4
@g_actualobject = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"subdir_test2.txt\00", align 1
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@g_expectedobject = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_lookupbypath__from_subdir_tree() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %3 = load i32, i32* @g_root_tree, align 4
  %4 = call i32 @git_tree_entry_bypath(i32** %1, i32 %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @g_repo, align 4
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_tree_entry_id(i32* %7)
  %9 = call i32 @git_tree_lookup(i32** %2, i32 %6, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %13 = call i32 @git_object_lookup_bypath(i32* @g_actualobject, i32* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @g_expectedobject, align 4
  %16 = call i32 @git_object_id(i32 %15)
  %17 = load i32, i32* @g_actualobject, align 4
  %18 = call i32 @git_object_id(i32 %17)
  %19 = call i32 @cl_assert_equal_oid(i32 %16, i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_tree_entry_free(i32* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_tree_free(i32* %22)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_tree_entry_bypath(i32**, i32, i8*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32) #1

declare dso_local i32 @git_tree_entry_id(i32*) #1

declare dso_local i32 @git_object_lookup_bypath(i32*, i32*, i8*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32, i32) #1

declare dso_local i32 @git_object_id(i32) #1

declare dso_local i32 @git_tree_entry_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
