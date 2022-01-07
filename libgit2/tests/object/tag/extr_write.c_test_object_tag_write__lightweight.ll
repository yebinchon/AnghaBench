; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tag/extr_write.c_test_object_tag_write__lightweight.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tag/extr_write.c_test_object_tag_write__lightweight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tagged_commit = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"light-tag\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"refs/tags/light-tag\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tag_write__lightweight() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @tagged_commit, align 4
  %6 = call i32 @git_oid_fromstr(i32* %1, i32 %5)
  %7 = load i32, i32* @g_repo, align 4
  %8 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %9 = call i32 @git_object_lookup(i32** %4, i32 %7, i32* %1, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @g_repo, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @git_tag_create_lightweight(i32* %2, i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %12, i32 0)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @git_object_free(i32* %15)
  %17 = call i64 @git_oid_cmp(i32* %2, i32* %1)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_reference_lookup(i32** %3, i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @git_reference_target(i32* %24)
  %26 = call i64 @git_oid_cmp(i32* %25, i32* %1)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @cl_assert(i32 %28)
  %30 = load i32, i32* @g_repo, align 4
  %31 = call i32 @git_tag_delete(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @git_reference_free(i32* %33)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #1

declare dso_local i32 @git_tag_create_lightweight(i32*, i32, i8*, i32*, i32) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32* @git_reference_target(i32*) #1

declare dso_local i32 @git_tag_delete(i32, i8*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
