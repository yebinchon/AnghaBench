; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_normalize.c_test_refs_normalize__jgit_suite.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_normalize.c_test_refs_normalize__jgit_suite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@GIT_REFERENCE_FORMAT_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"heads/master\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"refs/heads/pu\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"refs/heads/z\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"refs/heads/FoO\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"refs/tags/v1.0\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"refs/heads/master.lock\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"refs/heads/master/\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"refs/heads/i haz space\00", align 1
@GIT_REFNAME_MAX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"refs/heads/mast%cer\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"refs/heads/.\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"refs/heads/..\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"refs/heads/./master\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"refs/heads/../master\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"refs/heads/.bar\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"refs/heads/..bar\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"refs/heads/bar.\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"refs/heads/m.a.s.t.e.r\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"refs/heads/master..pu\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"refs/heads/master^\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"refs/heads/^master\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"^refs/heads/master\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"refs/heads/master~\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"refs/heads/~master\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"~refs/heads/master\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"refs/heads/master:\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"refs/heads/:master\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c":refs/heads/master\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"refs/heads/master?\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"refs/heads/?master\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"?refs/heads/master\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"refs/heads/master[\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"refs/heads/[master\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"[refs/heads/master\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"refs/heads/master*\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"refs/heads/*master\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"*refs/heads/master\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"refs/heads/!\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"refs/heads/\22\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"refs/heads/#\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"refs/heads/$\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"refs/heads/%\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"refs/heads/&\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"refs/heads/'\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"refs/heads/(\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"refs/heads/)\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"refs/heads/+\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"refs/heads/,\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"refs/heads/-\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"refs/heads/;\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"refs/heads/<\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"refs/heads/=\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"refs/heads/>\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"refs/heads/@\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"refs/heads/]\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"refs/heads/_\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"refs/heads/`\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"refs/heads/{\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"refs/heads/|\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"refs/heads/}\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"refs/heads/\\\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"refs/heads/master@{1}\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"refs/heads/master@{1.hour.ago}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_normalize__jgit_suite() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %5 = call i32 @ensure_refname_invalid(i32 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %7 = call i32 @ensure_refname_invalid(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @GIT_REFERENCE_FORMAT_NORMAL, align 4
  %9 = call i32 @ensure_refname_invalid(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32, i32* @GIT_REFERENCE_FORMAT_NORMAL, align 4
  %11 = call i32 @ensure_refname_normalized(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %12 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %13 = call i32 @ensure_refname_normalized(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %14 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %15 = call i32 @ensure_refname_normalized(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %16 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %17 = call i32 @ensure_refname_normalized(i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %18 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %19 = call i32 @ensure_refname_normalized(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %20 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %21 = call i32 @ensure_refname_normalized(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %22 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %23 = call i32 @ensure_refname_invalid(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %24 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %25 = call i32 @ensure_refname_invalid(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %26 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %27 = call i32 @ensure_refname_invalid(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %28 = load i32, i32* @GIT_REFNAME_MAX, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %2, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %3, align 8
  store i8 1, i8* %1, align 1
  br label %32

32:                                               ; preds = %42, %0
  %33 = load i8, i8* %1, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp slt i32 %34, 32
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = trunc i64 %29 to i32
  %38 = load i8, i8* %1, align 1
  %39 = call i32 @p_snprintf(i8* %31, i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8 signext %38)
  %40 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %41 = call i32 @ensure_refname_invalid(i32 %40, i8* %31)
  br label %42

42:                                               ; preds = %36
  %43 = load i8, i8* %1, align 1
  %44 = add i8 %43, 1
  store i8 %44, i8* %1, align 1
  br label %32

45:                                               ; preds = %32
  %46 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %48 = call i32 @ensure_refname_invalid(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %49 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %50 = call i32 @ensure_refname_invalid(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %51 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %52 = call i32 @ensure_refname_invalid(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %53 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %54 = call i32 @ensure_refname_invalid(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %55 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %56 = call i32 @ensure_refname_invalid(i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %57 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %58 = call i32 @ensure_refname_invalid(i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  %59 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %60 = call i32 @ensure_refname_invalid(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %61 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %62 = call i32 @ensure_refname_invalid(i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %63 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %64 = call i32 @ensure_refname_normalized(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  %65 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %66 = call i32 @ensure_refname_invalid(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0))
  %67 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %68 = call i32 @ensure_refname_invalid(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  %69 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %70 = call i32 @ensure_refname_invalid(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %71 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %72 = call i32 @ensure_refname_invalid(i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %73 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %74 = call i32 @ensure_refname_invalid(i32 %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  %75 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %76 = call i32 @ensure_refname_invalid(i32 %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  %77 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %78 = call i32 @ensure_refname_invalid(i32 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  %79 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %80 = call i32 @ensure_refname_invalid(i32 %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0))
  %81 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %82 = call i32 @ensure_refname_invalid(i32 %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0))
  %83 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %84 = call i32 @ensure_refname_invalid(i32 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0))
  %85 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %86 = call i32 @ensure_refname_invalid(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0))
  %87 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %88 = call i32 @ensure_refname_invalid(i32 %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0))
  %89 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %90 = call i32 @ensure_refname_invalid(i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0))
  %91 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %92 = call i32 @ensure_refname_invalid(i32 %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0))
  %93 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %94 = call i32 @ensure_refname_invalid(i32 %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0))
  %95 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %96 = call i32 @ensure_refname_invalid(i32 %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i64 0, i64 0))
  %97 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %98 = call i32 @ensure_refname_invalid(i32 %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0))
  %99 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %100 = call i32 @ensure_refname_invalid(i32 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0))
  %101 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %102 = call i32 @ensure_refname_invalid(i32 %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i64 0, i64 0))
  %103 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %104 = call i32 @ensure_refname_normalized(i32 %103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0))
  %105 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %106 = call i32 @ensure_refname_normalized(i32 %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0))
  %107 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %108 = call i32 @ensure_refname_normalized(i32 %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0))
  %109 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %110 = call i32 @ensure_refname_normalized(i32 %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0))
  %111 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %112 = call i32 @ensure_refname_normalized(i32 %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0))
  %113 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %114 = call i32 @ensure_refname_normalized(i32 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0))
  %115 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %116 = call i32 @ensure_refname_normalized(i32 %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0))
  %117 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %118 = call i32 @ensure_refname_normalized(i32 %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0))
  %119 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %120 = call i32 @ensure_refname_normalized(i32 %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0))
  %121 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %122 = call i32 @ensure_refname_normalized(i32 %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i64 0, i64 0))
  %123 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %124 = call i32 @ensure_refname_normalized(i32 %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i64 0, i64 0))
  %125 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %126 = call i32 @ensure_refname_normalized(i32 %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0))
  %127 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %128 = call i32 @ensure_refname_normalized(i32 %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0))
  %129 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %130 = call i32 @ensure_refname_normalized(i32 %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0))
  %131 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %132 = call i32 @ensure_refname_normalized(i32 %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i64 0, i64 0))
  %133 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %134 = call i32 @ensure_refname_normalized(i32 %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0))
  %135 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %136 = call i32 @ensure_refname_normalized(i32 %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0))
  %137 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %138 = call i32 @ensure_refname_normalized(i32 %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0))
  %139 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %140 = call i32 @ensure_refname_normalized(i32 %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i64 0, i64 0))
  %141 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %142 = call i32 @ensure_refname_normalized(i32 %141, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0))
  %143 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %144 = call i32 @ensure_refname_normalized(i32 %143, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i64 0, i64 0))
  %145 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %146 = call i32 @ensure_refname_normalized(i32 %145, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0))
  %147 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %148 = call i32 @ensure_refname_normalized(i32 %147, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0))
  %149 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %150 = call i32 @ensure_refname_invalid(i32 %149, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i64 0, i64 0))
  %151 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %152 = call i32 @ensure_refname_invalid(i32 %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0))
  %153 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %154 = call i32 @ensure_refname_invalid(i32 %153, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.66, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ensure_refname_invalid(i32, i8*) #1

declare dso_local i32 @ensure_refname_normalized(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @p_snprintf(i8*, i32, i8*, i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
