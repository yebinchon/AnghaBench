; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tag/extr_read.c_test_object_tag_read__parse_without_message.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tag/extr_read.c_test_object_tag_read__parse_without_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [14 x i8] c"short_tag.git\00", align 1
@short_tag_id = common dso_local global i32 0, align 4
@short_tagged_commit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"no_description\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tag_read__parse_without_message() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @cl_fixture(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @git_repository_open(i32** %1, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @short_tag_id, align 4
  %10 = call i32 @git_oid_fromstr(i32* %4, i32 %9)
  %11 = load i32, i32* @short_tagged_commit, align 4
  %12 = call i32 @git_oid_fromstr(i32* %5, i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_tag_lookup(%struct.TYPE_7__** %2, i32* %13, i32* %4)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = call i32 @git_tag_name(%struct.TYPE_7__* %20)
  %22 = call i32 @cl_assert_equal_s(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = call i32 @git_tag_id(%struct.TYPE_7__* %23)
  %25 = call i64 @git_oid_cmp(i32* %4, i32 %24)
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @cl_assert(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = call i32 @git_tag_target(i32** %3, %struct.TYPE_7__* %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @git_commit_id(i32* %42)
  %44 = call i64 @git_oid_cmp(i32* %5, i32 %43)
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = call i32 @git_tag_free(%struct.TYPE_7__* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @git_commit_free(i32* %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @git_repository_free(i32* %52)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32**, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @git_tag_lookup(%struct.TYPE_7__**, i32*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @git_tag_name(%struct.TYPE_7__*) #1

declare dso_local i64 @git_oid_cmp(i32*, i32) #1

declare dso_local i32 @git_tag_id(%struct.TYPE_7__*) #1

declare dso_local i32 @git_tag_target(i32**, %struct.TYPE_7__*) #1

declare dso_local i32 @git_commit_id(i32*) #1

declare dso_local i32 @git_tag_free(%struct.TYPE_7__*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
