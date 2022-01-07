; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tag/extr_read.c_test_object_tag_read__without_tagger_nor_message.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tag/extr_read.c_test_object_tag_read__without_tagger_nor_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@taggerless = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"taggerless\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tag_read__without_tagger_nor_message() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @git_repository_open(i32** %3, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @taggerless, align 4
  %8 = call i32 @git_oid_fromstr(i32* %2, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @git_tag_lookup(%struct.TYPE_6__** %1, i32* %10, i32* %2)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %14 = call i32 @git_tag_name(%struct.TYPE_6__* %13)
  %15 = call i32 @cl_assert_equal_s(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %17 = call i64 @git_tag_target_type(%struct.TYPE_6__* %16)
  %18 = load i64, i64* @GIT_OBJECT_COMMIT, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @cl_assert(i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @cl_assert(i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %35 = call i32 @git_tag_free(%struct.TYPE_6__* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @git_repository_free(i32* %36)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32**, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @git_tag_lookup(%struct.TYPE_6__**, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @git_tag_name(%struct.TYPE_6__*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_tag_target_type(%struct.TYPE_6__*) #1

declare dso_local i32 @git_tag_free(%struct.TYPE_6__*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
