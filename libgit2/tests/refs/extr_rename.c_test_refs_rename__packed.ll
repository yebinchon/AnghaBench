; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_rename.c_test_refs_rename__packed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_rename.c_test_refs_rename__packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"refs/heads/brand_new_name\00", align 1
@g_repo = common dso_local global i32 0, align 4
@packed_head_name = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_rename__packed() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__, align 4
  %5 = alloca i8*, align 8
  %6 = bitcast %struct.TYPE_12__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @git_repository_path(i32 %7)
  %9 = load i8*, i8** @packed_head_name, align 8
  %10 = call i32 @git_buf_joinpath(%struct.TYPE_12__* %4, i32 %8, i8* %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @git_path_exists(i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @cl_assert(i32 %17)
  %19 = load i32, i32* @g_repo, align 4
  %20 = load i8*, i8** @packed_head_name, align 8
  %21 = call i32 @git_reference_lookup(%struct.TYPE_11__** %1, i32 %19, i8* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %24 = call i64 @reference_is_packed(%struct.TYPE_11__* %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @cl_assert(i32 %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @git_reference_rename(%struct.TYPE_11__** %2, %struct.TYPE_11__* %28, i8* %29, i32 0, i32* null)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @cl_assert_equal_s(i32 %34, i8* %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %38 = call i32 @git_reference_free(%struct.TYPE_11__* %37)
  %39 = load i32, i32* @g_repo, align 4
  %40 = load i8*, i8** @packed_head_name, align 8
  %41 = call i32 @git_reference_lookup(%struct.TYPE_11__** %3, i32 %39, i8* %40)
  %42 = call i32 @cl_git_fail(i32 %41)
  %43 = load i32, i32* @g_repo, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @git_reference_lookup(%struct.TYPE_11__** %3, i32 %43, i8* %44)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @cl_assert_equal_s(i32 %49, i8* %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = call i64 @reference_is_packed(%struct.TYPE_11__* %52)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @cl_assert(i32 %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %58 = call i64 @reference_is_packed(%struct.TYPE_11__* %57)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @cl_assert(i32 %60)
  %62 = load i32, i32* @g_repo, align 4
  %63 = call i32 @git_repository_path(i32 %62)
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @git_buf_joinpath(%struct.TYPE_12__* %4, i32 %63, i8* %64)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @git_path_exists(i32 %68)
  %70 = call i32 @cl_assert(i32 %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = call i32 @git_reference_free(%struct.TYPE_11__* %71)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = call i32 @git_reference_free(%struct.TYPE_11__* %73)
  %75 = call i32 @git_buf_dispose(%struct.TYPE_12__* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_12__*, i32, i8*) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_exists(i32) #2

declare dso_local i32 @git_reference_lookup(%struct.TYPE_11__**, i32, i8*) #2

declare dso_local i64 @reference_is_packed(%struct.TYPE_11__*) #2

declare dso_local i32 @git_reference_rename(%struct.TYPE_11__**, %struct.TYPE_11__*, i8*, i32, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #2

declare dso_local i32 @git_reference_free(%struct.TYPE_11__*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
