; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_largefiles.c_test_odb_largefiles__streamread.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_largefiles.c_test_odb_largefiles__streamread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"GITTEST_INVASIVE_FS_SIZE\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"GITTEST_SLOW\00", align 1
@odb = common dso_local global i32 0, align 4
@LARGEFILE_SIZE = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_largefiles__streamread() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [10240 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 0, i64* %8, align 8
  %12 = call i32 (...) @cl_skip()
  %13 = call i32 @cl_is_env_set(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = call i32 @cl_is_env_set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15, %0
  %19 = call i32 (...) @cl_skip()
  br label %20

20:                                               ; preds = %18, %15
  %21 = call i32 @writefile(i32* %1)
  %22 = load i32, i32* @odb, align 4
  %23 = call i32 @git_odb_open_rstream(i32** %3, i64* %6, i32* %10, i32 %22, i32* %1)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @LARGEFILE_SIZE, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @cl_assert_equal_sz(i32 %25, i64 %26)
  %28 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @cl_assert_equal_i(i32 %28, i32 %29)
  %31 = call i32 @git_hash_ctx_init(i32* %9)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @git_odb__format_object_header(i64* %7, i8* %33, i32 64, i64 %34, i32 %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @git_hash_update(i32* %9, i8* %38, i32 %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  br label %43

43:                                               ; preds = %48, %20
  %44 = load i32*, i32** %3, align 8
  %45 = getelementptr inbounds [10240 x i8], [10240 x i8]* %4, i64 0, i64 0
  %46 = call i32 @git_odb_stream_read(i32* %44, i8* %45, i32 10240)
  store i32 %46, i32* %11, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = getelementptr inbounds [10240 x i8], [10240 x i8]* %4, i64 0, i64 0
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @git_hash_update(i32* %9, i8* %49, i32 %50)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %8, align 8
  br label %43

57:                                               ; preds = %43
  %58 = load i32, i32* @LARGEFILE_SIZE, align 4
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @cl_assert_equal_sz(i32 %58, i64 %59)
  %61 = call i32 @git_hash_final(i32* %2, i32* %9)
  %62 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  %63 = call i32 @git_hash_ctx_cleanup(i32* %9)
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @git_odb_stream_free(i32* %64)
  ret void
}

declare dso_local i32 @cl_skip(...) #1

declare dso_local i32 @cl_is_env_set(i8*) #1

declare dso_local i32 @writefile(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_odb_open_rstream(i32**, i64*, i32*, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i64) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_hash_ctx_init(i32*) #1

declare dso_local i32 @git_odb__format_object_header(i64*, i8*, i32, i64, i32) #1

declare dso_local i32 @git_hash_update(i32*, i8*, i32) #1

declare dso_local i32 @git_odb_stream_read(i32*, i8*, i32) #1

declare dso_local i32 @git_hash_final(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @git_hash_ctx_cleanup(i32*) #1

declare dso_local i32 @git_odb_stream_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
