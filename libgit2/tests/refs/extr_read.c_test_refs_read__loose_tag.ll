; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_read.c_test_refs_read__loose_tag.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_read.c_test_refs_read__loose_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@loose_tag_ref_name = common dso_local global i32 0, align 4
@GIT_REFERENCE_DIRECT = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@GIT_OBJECT_TAG = common dso_local global i64 0, align 8
@GIT_REFS_TAGS_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_read__loose_tag() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %5 = load i32, i32* @g_repo, align 4
  %6 = load i32, i32* @loose_tag_ref_name, align 4
  %7 = call i32 @git_reference_lookup(%struct.TYPE_11__** %1, i32 %5, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %10 = call i32 @git_reference_type(%struct.TYPE_11__* %9)
  %11 = load i32, i32* @GIT_REFERENCE_DIRECT, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @cl_assert(i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %15 = call i64 @reference_is_packed(%struct.TYPE_11__* %14)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @cl_assert(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @loose_tag_ref_name, align 4
  %23 = call i32 @cl_assert_equal_s(i32 %21, i32 %22)
  %24 = load i32, i32* @g_repo, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %26 = call i32 @git_reference_target(%struct.TYPE_11__* %25)
  %27 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %28 = call i32 @git_object_lookup(i32** %2, i32 %24, i32 %26, i32 %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call i64 @git_object_type(i32* %34)
  %36 = load i64, i64* @GIT_OBJECT_TAG, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @cl_assert(i32 %38)
  %40 = load i32, i32* @GIT_REFS_TAGS_DIR, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @git_tag_name(i32* %41)
  %43 = call i32 @git_buf_joinpath(%struct.TYPE_12__* %3, i32 %40, i32 %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @loose_tag_ref_name, align 4
  %48 = call i32 @cl_assert_equal_s(i32 %46, i32 %47)
  %49 = call i32 @git_buf_dispose(%struct.TYPE_12__* %3)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @git_object_free(i32* %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %53 = call i32 @git_reference_free(%struct.TYPE_11__* %52)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(%struct.TYPE_11__**, i32, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_reference_type(%struct.TYPE_11__*) #2

declare dso_local i64 @reference_is_packed(%struct.TYPE_11__*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @git_object_lookup(i32**, i32, i32, i32) #2

declare dso_local i32 @git_reference_target(%struct.TYPE_11__*) #2

declare dso_local i64 @git_object_type(i32*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @git_tag_name(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_reference_free(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
