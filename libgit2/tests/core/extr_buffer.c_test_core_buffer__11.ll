; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__11.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8**, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"nothing\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@__const.test_core_buffer__11.t1 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [10 x i8] c"something\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"something else\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"some other\00", align 1
@__const.test_core_buffer__11.t2 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str.6 = private unnamed_addr constant [9 x i8] c"some fun\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"no fun\00", align 1
@__const.test_core_buffer__11.t3 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [6 x i8] c"happy\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"happier\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"happiest\00", align 1
@__const.test_core_buffer__11.t4 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)], align 16
@__const.test_core_buffer__11.t5 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.11 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"nope\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.test_core_buffer__11.t6 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str.14 = private unnamed_addr constant [15 x i8] c"doesn't matter\00", align 1
@__const.test_core_buffer__11.t7 = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0)], align 16
@.str.15 = private unnamed_addr constant [5 x i8] c"some\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"happ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_buffer__11() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca [3 x i8*], align 16
  %4 = alloca [3 x i8*], align 16
  %5 = alloca [3 x i8*], align 16
  %6 = alloca [3 x i8*], align 16
  %7 = alloca [3 x i8*], align 16
  %8 = alloca [3 x i8*], align 16
  %9 = alloca [2 x i8*], align 16
  %10 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %11 = bitcast [3 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([3 x i8*]* @__const.test_core_buffer__11.t1 to i8*), i64 24, i1 false)
  %12 = bitcast [3 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([3 x i8*]* @__const.test_core_buffer__11.t2 to i8*), i64 24, i1 false)
  %13 = bitcast [3 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([3 x i8*]* @__const.test_core_buffer__11.t3 to i8*), i64 24, i1 false)
  %14 = bitcast [3 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([3 x i8*]* @__const.test_core_buffer__11.t4 to i8*), i64 24, i1 false)
  %15 = bitcast [3 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([3 x i8*]* @__const.test_core_buffer__11.t5 to i8*), i64 24, i1 false)
  %16 = bitcast [3 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([3 x i8*]* @__const.test_core_buffer__11.t6 to i8*), i64 24, i1 false)
  %17 = bitcast [2 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([2 x i8*]* @__const.test_core_buffer__11.t7 to i8*), i64 16, i1 false)
  %18 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i8** %18, i8*** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 3, i32* %20, align 8
  %21 = call i32 @git_buf_text_common_prefix(%struct.TYPE_8__* %1, %struct.TYPE_7__* %2)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cl_assert_equal_s(i32 %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0))
  %26 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i8** %26, i8*** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 3, i32* %28, align 8
  %29 = call i32 @git_buf_text_common_prefix(%struct.TYPE_8__* %1, %struct.TYPE_7__* %2)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cl_assert_equal_s(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %34 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i8** %34, i8*** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 3, i32* %36, align 8
  %37 = call i32 @git_buf_text_common_prefix(%struct.TYPE_8__* %1, %struct.TYPE_7__* %2)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cl_assert_equal_s(i32 %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0))
  %42 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i8** %42, i8*** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 3, i32* %44, align 8
  %45 = call i32 @git_buf_text_common_prefix(%struct.TYPE_8__* %1, %struct.TYPE_7__* %2)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cl_assert_equal_s(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %50 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i8** %50, i8*** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 3, i32* %52, align 8
  %53 = call i32 @git_buf_text_common_prefix(%struct.TYPE_8__* %1, %struct.TYPE_7__* %2)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cl_assert_equal_s(i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %58 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i8** %58, i8*** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 3, i32* %60, align 8
  %61 = call i32 @git_buf_text_common_prefix(%struct.TYPE_8__* %1, %struct.TYPE_7__* %2)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cl_assert_equal_s(i32 %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0))
  %66 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i8** %66, i8*** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 3, i32* %68, align 8
  %69 = call i32 @git_buf_text_common_prefix(%struct.TYPE_8__* %1, %struct.TYPE_7__* %2)
  %70 = call i32 @cl_git_pass(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cl_assert_equal_s(i32 %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0))
  %74 = call i32 @git_buf_dispose(%struct.TYPE_8__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_text_common_prefix(%struct.TYPE_8__*, %struct.TYPE_7__*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
