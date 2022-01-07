; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_path.c_test_core_path__14_apply_relative.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_path.c_test_core_path__14_apply_relative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"/this/is/a/base\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"../test\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"/this/is/a/test\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"../../the/./end\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"/this/is/the/end\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"./of/this/../the/string\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"/this/is/the/end/of/the/string\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"../../../../../..\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"/this/\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"../../..\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"d:/another/test\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"../..\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"d:/\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"from/here/to/../and/./back/.\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"d:/from/here/and/back/\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"https://my.url.com/test.git\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"../another.git\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"https://my.url.com/another.git\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"../full/path/url.patch\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"https://my.url.com/full/path/url.patch\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"https://my.url.com/full/path/\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"../../../\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"../../this/is/relative\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"../../preserves/the/prefix\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"../../this/preserves/the/prefix\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"../../../../that\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"../../that\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"../there\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"../../there\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_path__14_apply_relative() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %3 = call i32 @git_buf_sets(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = call i32 @git_path_apply_relative(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %8)
  %10 = call i32 @git_path_apply_relative(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %13)
  %15 = call i32 @git_path_apply_relative(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %18)
  %20 = call i32 @git_path_apply_relative(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %23)
  %25 = call i32 @git_path_apply_relative(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 %28)
  %30 = call i32 @git_path_apply_relative(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %31 = call i32 @cl_git_fail(i32 %30)
  %32 = call i32 @git_buf_sets(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = call i32 @git_path_apply_relative(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %37)
  %39 = call i32 @git_path_apply_relative(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 %42)
  %44 = call i32 @git_buf_sets(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = call i32 @git_path_apply_relative(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i32 %49)
  %51 = call i32 @git_path_apply_relative(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i32 %54)
  %56 = call i32 @git_path_apply_relative(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), i32 %59)
  %61 = call i32 @git_path_apply_relative(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 %64)
  %66 = call i32 @git_buf_sets(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0))
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = call i32 @git_path_apply_relative(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0))
  %69 = call i32 @cl_git_pass(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i64 0, i64 0), i32 %71)
  %73 = call i32 @git_path_apply_relative(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0))
  %74 = call i32 @cl_git_pass(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i32 %76)
  %78 = call i32 @git_path_apply_relative(%struct.TYPE_6__* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0))
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 %81)
  %83 = call i32 @git_buf_dispose(%struct.TYPE_6__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @git_path_apply_relative(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
