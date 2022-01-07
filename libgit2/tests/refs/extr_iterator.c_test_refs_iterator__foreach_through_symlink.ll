; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_iterator.c_test_refs_iterator__foreach_through_symlink.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_iterator.c_test_refs_iterator__foreach_through_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@refcmp_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"refs\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"refs/a\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"1234567890123456789012345678901234567890\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"refs/b\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"refs/c\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"refs/d\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"../../../refs\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"testrepo.git/refs/heads/link\00", align 1
@repo = common dso_local global i32 0, align 4
@refs_foreach_cb = common dso_local global i32 0, align 4
@refnames_with_symlink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_iterator__foreach_through_symlink() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @git_vector_init(i32* %1, i32 32, i32* @refcmp_cb)
  %3 = call i32 @cl_git_pass(i32 %2)
  %4 = call i32 @p_mkdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 511)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @p_symlink(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @repo, align 4
  %13 = load i32, i32* @refs_foreach_cb, align 4
  %14 = call i32 @git_reference_foreach(i32 %12, i32 %13, i32* %1)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @refnames_with_symlink, align 4
  %17 = call i32 @assert_all_refnames_match(i32 %16, i32* %1)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_vector_init(i32*, i32, i32*) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @p_symlink(i8*, i8*) #1

declare dso_local i32 @git_reference_foreach(i32, i32, i32*) #1

declare dso_local i32 @assert_all_refnames_match(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
