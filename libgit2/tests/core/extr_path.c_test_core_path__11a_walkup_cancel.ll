; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_path.c_test_core_path__11a_walkup_cancel.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_path.c_test_core_path__11a_walkup_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@__const.test_core_path__11a_walkup_cancel.cancel = private unnamed_addr constant [4 x i32] [i32 3, i32 2, i32 1, i32 0], align 16
@.str = private unnamed_addr constant [12 x i8] c"/a/b/c/d/e/\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/a/b/c/d/\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/a/b/c/\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"[CANCEL]\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"/a/b/c/d/e\00", align 1
@__const.test_core_path__11a_walkup_cancel.expect = private unnamed_addr constant [15 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null], align 16
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CANCEL_VALUE = common dso_local global i32 0, align 4
@check_one_walkup_step = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_path__11a_walkup_cancel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca [15 x i8*], align 16
  %4 = alloca [5 x i8*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %8, i32* %1, align 4
  %9 = bitcast [4 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x i32]* @__const.test_core_path__11a_walkup_cancel.cancel to i8*), i64 16, i1 false)
  %10 = bitcast [15 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([15 x i8*]* @__const.test_core_path__11a_walkup_cancel.expect to i8*), i64 120, i1 false)
  %11 = bitcast [5 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 40, i1 false)
  %12 = bitcast i8* %11 to [5 x i8*]*
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8** %13, align 16
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i32 0, i32 3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8** %14, align 8
  %15 = getelementptr inbounds [15 x i8*], [15 x i8*]* %3, i64 0, i64 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i8** %15, i8*** %16, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %54, %0
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [15 x i8*], [15 x i8*]* %3, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %59

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [15 x i8*], [15 x i8*]* %3, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @git_buf_sets(i32* %1, i8* %27)
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @CANCEL_VALUE, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @check_one_walkup_step, align 4
  %42 = call i32 @git_path_walk_up(i32* %1, i8* %40, i32 %41, %struct.TYPE_3__* %7)
  %43 = call i32 @cl_assert_equal_i(i32 %36, i32 %42)
  br label %44

44:                                               ; preds = %50, %23
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [15 x i8*], [15 x i8*]* %3, i64 0, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %44

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %17

59:                                               ; preds = %17
  %60 = call i32 @git_buf_dispose(i32* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_buf_sets(i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_path_walk_up(i32*, i8*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @git_buf_dispose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
