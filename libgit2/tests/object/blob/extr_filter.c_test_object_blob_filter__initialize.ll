; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/blob/extr_filter.c_test_object_blob_filter__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/blob/extr_filter.c_test_object_blob_filter__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@CRLF_NUM_TEST_OBJECTS = common dso_local global i32 0, align 4
@g_crlf_raw_len = common dso_local global i64* null, align 8
@g_crlf_raw = common dso_local global i32* null, align 8
@g_crlf_oids = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_blob_filter__initialize() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* @g_repo, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %43, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @CRLF_NUM_TEST_OBJECTS, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %46

7:                                                ; preds = %3
  %8 = load i64*, i64** @g_crlf_raw_len, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %7
  %15 = load i32*, i32** @g_crlf_raw, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strlen(i32 %19)
  %21 = load i64*, i64** @g_crlf_raw_len, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 %20, i64* %24, align 8
  br label %25

25:                                               ; preds = %14, %7
  %26 = load i32*, i32** @g_crlf_oids, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* @g_repo, align 4
  %31 = load i32*, i32** @g_crlf_raw, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i64*, i64** @g_crlf_raw_len, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @git_blob_create_from_buffer(i32* %29, i32 %30, i32 %35, i64 %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  br label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %3

46:                                               ; preds = %3
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_blob_create_from_buffer(i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
