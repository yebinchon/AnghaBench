; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/blob/extr_filter.c_test_object_blob_filter__unfiltered.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/blob/extr_filter.c_test_object_blob_filter__unfiltered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRLF_NUM_TEST_OBJECTS = common dso_local global i32 0, align 4
@g_crlf_raw_len = common dso_local global i64* null, align 8
@g_repo = common dso_local global i32 0, align 4
@g_crlf_oids = common dso_local global i32* null, align 8
@g_crlf_raw = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_blob_filter__unfiltered() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %37, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @CRLF_NUM_TEST_OBJECTS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %40

8:                                                ; preds = %4
  %9 = load i64*, i64** @g_crlf_raw_len, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = load i32, i32* @g_repo, align 4
  %15 = load i32*, i32** @g_crlf_oids, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @git_blob_lookup(i32** %2, i32 %14, i32* %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i64, i64* %3, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i64 @git_blob_rawsize(i32* %22)
  %24 = call i32 @cl_assert_equal_sz(i64 %21, i64 %23)
  %25 = load i32*, i32** @g_crlf_raw, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @git_blob_rawcontent(i32* %30)
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @memcmp(i32 %29, i32 %31, i64 %32)
  %34 = call i32 @cl_assert_equal_i(i32 0, i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @git_blob_free(i32* %35)
  br label %37

37:                                               ; preds = %8
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %4

40:                                               ; preds = %4
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_blob_lookup(i32**, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i64, i64) #1

declare dso_local i64 @git_blob_rawsize(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

declare dso_local i32 @git_blob_rawcontent(i32*) #1

declare dso_local i32 @git_blob_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
