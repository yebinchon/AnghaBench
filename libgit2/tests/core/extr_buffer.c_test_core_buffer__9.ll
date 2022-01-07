; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__9.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"a-\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-a-\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"b-\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"-b-\00", align 1
@__const.test_core_buffer__9.sep = private unnamed_addr constant [3 x i8] c"\00-/", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"a--\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"-a--\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"a-b-\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"-ab-\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"-a-b-\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"--b\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"a--b\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"-a-b\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"-a--b\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"--b-\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"a--b-\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"-a--b-\00", align 1
@__const.test_core_buffer__9.expect_null = private unnamed_addr constant [25 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0)], align 16
@.str.21 = private unnamed_addr constant [4 x i8] c"a-b\00", align 1
@__const.test_core_buffer__9.expect_dash = private unnamed_addr constant [25 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str.22 = private unnamed_addr constant [3 x i8] c"-/\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"a-/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"-a/\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"-a-/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"-/-\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"a-/-\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"-a/-\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"-a-/-\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"-/b-\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"a-/b-\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"-a/b-\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"-a-/b-\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"-/-b\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"a-/-b\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"-a/-b\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"-a-/-b\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"-/-b-\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"a-/-b-\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"-a/-b-\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"-a-/-b-\00", align 1
@__const.test_core_buffer__9.expect_slas = private unnamed_addr constant [25 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0)], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_buffer__9() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca [5 x i8*], align 16
  %3 = alloca [5 x i8*], align 16
  %4 = alloca [3 x i8], align 1
  %5 = alloca [25 x i8*], align 16
  %6 = alloca [25 x i8*], align 16
  %7 = alloca [25 x i8*], align 16
  %8 = alloca [3 x i8**], align 16
  %9 = alloca i8, align 1
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %15 = bitcast [5 x i8*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 40, i1 false)
  %16 = bitcast i8* %15 to [5 x i8*]*
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %18, align 8
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %19, align 16
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** %20, align 8
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %21, align 16
  %22 = bitcast [5 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 40, i1 false)
  %23 = bitcast i8* %22 to [5 x i8*]*
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %24, align 16
  %25 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %25, align 8
  %26 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8** %26, align 16
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8** %27, align 8
  %28 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8** %28, align 16
  %29 = bitcast [3 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.test_core_buffer__9.sep, i32 0, i32 0), i64 3, i1 false)
  %30 = bitcast [25 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %30, i8* align 16 bitcast ([25 x i8*]* @__const.test_core_buffer__9.expect_null to i8*), i64 200, i1 false)
  %31 = bitcast [25 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 bitcast ([25 x i8*]* @__const.test_core_buffer__9.expect_dash to i8*), i64 200, i1 false)
  %32 = bitcast [25 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 16 bitcast ([25 x i8*]* @__const.test_core_buffer__9.expect_slas to i8*), i64 200, i1 false)
  %33 = getelementptr inbounds [3 x i8**], [3 x i8**]* %8, i64 0, i64 0
  %34 = getelementptr inbounds [25 x i8*], [25 x i8*]* %5, i64 0, i64 0
  store i8** %34, i8*** %33, align 8
  %35 = getelementptr inbounds i8**, i8*** %33, i64 1
  %36 = getelementptr inbounds [25 x i8*], [25 x i8*]* %6, i64 0, i64 0
  store i8** %36, i8*** %35, align 8
  %37 = getelementptr inbounds i8**, i8*** %35, i64 1
  %38 = getelementptr inbounds [25 x i8*], [25 x i8*]* %7, i64 0, i64 0
  store i8** %38, i8*** %37, align 8
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %87, %0
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %41, 3
  br i1 %42, label %43, label %90

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %9, align 1
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [3 x i8**], [3 x i8**]* %8, i64 0, i64 %49
  %51 = load i8**, i8*** %50, align 8
  store i8** %51, i8*** %10, align 8
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %83, %43
  %53 = load i32, i32* %13, align 4
  %54 = zext i32 %53 to i64
  %55 = icmp ult i64 %54, 5
  br i1 %55, label %56, label %86

56:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %79, %56
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = icmp ult i64 %59, 5
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load i8, i8* %9, align 1
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i64 0, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @git_buf_join(%struct.TYPE_5__* %1, i8 signext %62, i8* %66, i8* %70)
  %72 = load i8**, i8*** %10, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @cl_assert_equal_s(i8* %73, i32 %75)
  %77 = load i8**, i8*** %10, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i32 1
  store i8** %78, i8*** %10, align 8
  br label %79

79:                                               ; preds = %61
  %80 = load i32, i32* %12, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %57

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %52

86:                                               ; preds = %52
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %39

90:                                               ; preds = %39
  %91 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_buf_join(%struct.TYPE_5__*, i8 signext, i8*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
