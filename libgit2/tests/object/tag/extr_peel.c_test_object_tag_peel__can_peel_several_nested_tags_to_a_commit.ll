; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tag/extr_peel.c_test_object_tag_peel__can_peel_several_nested_tags_to_a_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tag/extr_peel.c_test_object_tag_peel__can_peel_several_nested_tags_to_a_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tag = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"b25fa35b38051e4ae45d4222e795f9df2e43f1d1\00", align 1
@target = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"e90810b8df3e80c413d903f631643c716887138d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tag_peel__can_peel_several_nested_tags_to_a_commit() #0 {
  %1 = load i32, i32* @repo, align 4
  %2 = call i32 @retrieve_tag_from_oid(i32* @tag, i32 %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @tag, align 4
  %4 = call i32 @git_tag_peel(i32* @target, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @target, align 4
  %7 = call i64 @git_object_type(i32 %6)
  %8 = load i64, i64* @GIT_OBJECT_COMMIT, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @cl_assert(i32 %10)
  %12 = load i32, i32* @target, align 4
  %13 = call i32 @git_object_id(i32 %12)
  %14 = call i32 @git_oid_streq(i32 %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  ret void
}

declare dso_local i32 @retrieve_tag_from_oid(i32*, i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_tag_peel(i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_object_type(i32) #1

declare dso_local i32 @git_oid_streq(i32, i8*) #1

declare dso_local i32 @git_object_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
