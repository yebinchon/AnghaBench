; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_mkdir.c_test_core_mkdir__absolute.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_mkdir.c_test_core_mkdir__absolute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@cleanup_basic_dirs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"d0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"subdir\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"another\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"d1/foo/bar/asdf\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"d2/foo/bar/asdf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_mkdir__absolute() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %3 = load i32, i32* @cleanup_basic_dirs, align 4
  %4 = call i32 @cl_set_cleanup(i32 %3, i32* null)
  %5 = call i32 (...) @clar_sandbox_path()
  %6 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %1, i32 %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @git_path_isdir(i32 %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @cl_assert(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @git_futils_mkdir(i32 %15, i32 493, i32 0)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @git_path_isdir(i32 %19)
  %21 = call i32 @cl_assert(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %1, i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @git_path_isdir(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @git_futils_mkdir(i32 %33, i32 493, i32 0)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @git_path_isdir(i32 %37)
  %39 = call i32 @cl_assert(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %1, i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @git_path_isdir(i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @cl_assert(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @git_futils_mkdir_r(i32 %51, i32 493)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @git_path_isdir(i32 %55)
  %57 = call i32 @cl_assert(i32 %56)
  %58 = call i32 (...) @clar_sandbox_path()
  %59 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %1, i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @git_path_isdir(i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @cl_assert(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @git_futils_mkdir_r(i32 %68, i32 493)
  %70 = call i32 @cl_git_pass(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @git_path_isdir(i32 %72)
  %74 = call i32 @cl_assert(i32 %73)
  %75 = call i32 (...) @clar_sandbox_path()
  %76 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %1, i32 %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @git_path_isdir(i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @cl_assert(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @git_futils_mkdir(i32 %85, i32 493, i32 0)
  %87 = call i32 @cl_git_fail(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @git_path_isdir(i32 %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @cl_assert(i32 %93)
  %95 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_set_cleanup(i32, i32*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @clar_sandbox_path(...) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_isdir(i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_futils_mkdir(i32, i32, i32) #2

declare dso_local i32 @git_futils_mkdir_r(i32, i32) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
