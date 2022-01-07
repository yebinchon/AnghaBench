; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_attributes.c_test_object_tree_attributes__group_writable_tree_entries_created_with_an_antique_git_version_can_still_be_accessed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_attributes.c_test_object_tree_attributes__group_writable_tree_entries_created_with_an_antique_git_version_can_still_be_accessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree_oid = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"old_mode.txt\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_attributes__group_writable_tree_entries_created_with_an_antique_git_version_can_still_be_accessed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @tree_oid, align 4
  %5 = call i32 @git_oid_fromstr(i32* %1, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @repo, align 4
  %8 = call i32 @git_tree_lookup(i32** %2, i32 %7, i32* %1)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @git_tree_entry_byname(i32* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %3, align 8
  %12 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @git_tree_entry_filemode(i32* %13)
  %15 = call i32 @cl_assert_equal_i(i32 %12, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @git_tree_free(i32* %16)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32* @git_tree_entry_byname(i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_tree_entry_filemode(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
