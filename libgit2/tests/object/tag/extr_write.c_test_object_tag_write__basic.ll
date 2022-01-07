; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tag/extr_write.c_test_object_tag_write__basic.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tag/extr_write.c_test_object_tag_write__basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@tagged_commit = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@tagger_name = common dso_local global i32 0, align 4
@tagger_email = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"the-tag\00", align 1
@tagger_message = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/tags/the-tag\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tag_write__basic() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = load i32, i32* @tagged_commit, align 4
  %9 = call i32 @git_oid_fromstr(i32* %2, i32 %8)
  %10 = load i32, i32* @g_repo, align 4
  %11 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %12 = call i32 @git_object_lookup(i32** %7, i32 %10, i32* %2, i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @tagger_name, align 4
  %15 = load i32, i32* @tagger_email, align 4
  %16 = call i32 @git_signature_new(%struct.TYPE_8__** %4, i32 %14, i32 %15, i32 123456789, i32 60)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @g_repo, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = load i32, i32* @tagger_message, align 4
  %22 = call i32 @git_tag_create(i32* %3, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %19, %struct.TYPE_8__* %20, i32 %21, i32 0)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @git_object_free(i32* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = call i32 @git_signature_free(%struct.TYPE_8__* %26)
  %28 = load i32, i32* @g_repo, align 4
  %29 = call i32 @git_tag_lookup(i32** %1, i32 %28, i32* %3)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @git_tag_target_id(i32* %31)
  %33 = call i64 @git_oid_cmp(i32 %32, i32* %2)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @cl_assert(i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call %struct.TYPE_8__* @git_tag_tagger(i32* %37)
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %5, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert(i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @tagger_name, align 4
  %47 = call i32 @cl_assert_equal_s(i32 %45, i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @tagger_email, align 4
  %52 = call i32 @cl_assert_equal_s(i32 %50, i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 123456789
  %58 = zext i1 %57 to i32
  %59 = call i32 @cl_assert(i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 60
  %65 = zext i1 %64 to i32
  %66 = call i32 @cl_assert(i32 %65)
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @git_tag_message(i32* %67)
  %69 = load i32, i32* @tagger_message, align 4
  %70 = call i32 @cl_assert_equal_s(i32 %68, i32 %69)
  %71 = load i32, i32* @g_repo, align 4
  %72 = call i32 @git_reference_lookup(i32** %6, i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %73 = call i32 @cl_git_pass(i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @git_reference_target(i32* %74)
  %76 = call i64 @git_oid_cmp(i32 %75, i32* %3)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @cl_assert(i32 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @git_reference_delete(i32* %80)
  %82 = call i32 @cl_git_pass(i32 %81)
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @git_reference_free(i32* %83)
  %85 = load i32*, i32** %1, align 8
  %86 = call i32 @git_tag_free(i32* %85)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #1

declare dso_local i32 @git_signature_new(%struct.TYPE_8__**, i32, i32, i32, i32) #1

declare dso_local i32 @git_tag_create(i32*, i32, i8*, i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_signature_free(%struct.TYPE_8__*) #1

declare dso_local i32 @git_tag_lookup(i32**, i32, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_oid_cmp(i32, i32*) #1

declare dso_local i32 @git_tag_target_id(i32*) #1

declare dso_local %struct.TYPE_8__* @git_tag_tagger(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

declare dso_local i32 @git_tag_message(i32*) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @git_reference_delete(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_tag_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
