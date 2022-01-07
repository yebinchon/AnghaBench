; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__similarity_metric_whitespace.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__similarity_metric_whitespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [324 x i8] c"\09for (s = 0; s < sizeof(sep) / sizeof(char); ++s) {\0A\09\09separator = sep[s];\0A\09\09expect = expect_values[s];\0A\0A\09\09for (j = 0; j < sizeof(b) / sizeof(char*); ++j) {\0A\09\09\09for (i = 0; i < sizeof(a) / sizeof(char*); ++i) {\0A\09\09\09\09git_buf_join(&buf, separator, a[i], b[j]);\0A\09\09\09\09cl_assert_equal_s(*expect, buf.ptr);\0A\09\09\09\09expect++;\0A\09\09\09}\0A\09\09}\0A\09}\0A\00", align 1
@.str.1 = private unnamed_addr constant [397 x i8] c"   for (s = 0; s < sizeof(sep) / sizeof(char); ++s) {\0A       separator = sep[s];\0A       expect = expect_values[s];\0A\0A       for (j = 0; j < sizeof(b) / sizeof(char*); ++j) {\0A           for (i = 0; i < sizeof(a) / sizeof(char*); ++i) {\0A               git_buf_join(&buf, separator, a[i], b[j]);\0A               cl_assert_equal_s(*expect, buf.ptr);\0A               expect++;\0A           }\0A       }\0A   }\0A\00", align 1
@.str.2 = private unnamed_addr constant [364 x i8] c"  for (s = 0; s < sizeof(sep) / sizeof(char); ++s) {\0D\0A    separator = sep[s];\0D\0A    expect = expect_values[s];\0D\0A\0D\0A    for (j = 0; j < sizeof(b) / sizeof(char*); ++j) {\0D\0A      for (i = 0; i < sizeof(a) / sizeof(char*); ++i) {\0D\0A        git_buf_join(&buf, separator, a[i], b[j]);\0D\0A        cl_assert_equal_s(*expect, buf.ptr);\0D\0A        expect++;\0D\0A      }\0D\0A    }\0D\0A  }\0D\0A\00", align 1
@GIT_HASHSIG_NORMAL = common dso_local global i64 0, align 8
@GIT_HASHSIG_SMART_WHITESPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_buffer__similarity_metric_whitespace() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [3 x i8*], align 16
  %12 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i8* getelementptr inbounds ([324 x i8], [324 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([397 x i8], [397 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([364 x i8], [364 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  %13 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 1
  %16 = load i8*, i8** %9, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 1
  %18 = load i8*, i8** %10, align 8
  store i8* %18, i8** %17, align 8
  %19 = load i64, i64* @GIT_HASHSIG_NORMAL, align 8
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %92, %0
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @GIT_HASHSIG_SMART_WHITESPACE, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %95

24:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %88, %24
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %91

28:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %84, %28
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %87

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @git_buf_sets(%struct.TYPE_5__* %3, i8* %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @git_hashsig_create(i32** %1, i32 %40, i32 %42, i64 %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @git_buf_sets(%struct.TYPE_5__* %3, i8* %49)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @git_hashsig_create(i32** %2, i32 %53, i32 %55, i64 %56)
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = load i32*, i32** %1, align 8
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @git_hashsig_compare(i32* %59, i32* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @GIT_HASHSIG_NORMAL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %32
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @cl_assert_equal_i(i32 100, i32 %70)
  br label %75

72:                                               ; preds = %65
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @cl_assert_in_range(i32 0, i32 %73, i32 30)
  br label %75

75:                                               ; preds = %72, %69
  br label %79

76:                                               ; preds = %32
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @cl_assert_equal_i(i32 100, i32 %77)
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @git_hashsig_free(i32* %80)
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @git_hashsig_free(i32* %82)
  br label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %29

87:                                               ; preds = %29
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %25

91:                                               ; preds = %25
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %7, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %7, align 8
  br label %20

95:                                               ; preds = %20
  %96 = call i32 @git_buf_dispose(%struct.TYPE_5__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @git_hashsig_create(i32**, i32, i32, i64) #2

declare dso_local i32 @git_hashsig_compare(i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @cl_assert_in_range(i32, i32, i32) #2

declare dso_local i32 @git_hashsig_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
