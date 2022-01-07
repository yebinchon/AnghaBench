; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_reflog.c_test_refs_reflog_reflog__reading_a_reflog_with_invalid_format_succeeds.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_reflog.c_test_refs_reflog_reflog__reading_a_reflog_with_invalid_format_succeeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"refs/heads/newline\00", align 1
@.str.1 = private unnamed_addr constant [117 x i8] c"Reflog*message with a newline and enough content after it to pass the GIT_REFLOG_SIZE_MIN check inside reflog_parse.\00", align 1
@GIT_BUF_INIT = common dso_local global i32 0, align 4
@current_master_tip = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_REFLOG_DIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Reflog\0Amessage\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Reflog\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_reflog_reflog__reading_a_reflog_with_invalid_format_succeeds() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %10 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @current_master_tip, align 4
  %13 = call i32 @git_oid_fromstr(i32* %6, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @git_reference_create(i32** %5, i32 %15, i8* %16, i32* %6, i32 1, i8* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_repository_path(i32 %20)
  %22 = load i32, i32* @GIT_REFLOG_DIR, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @git_buf_join_n(i32* %7, i8 signext 47, i32 3, i32 %21, i32 %22, i8* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = call i32 @git_buf_cstr(i32* %7)
  %27 = call i32 @git_futils_readbuffer(i32* %8, i32 %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = call i32 @git_buf_cstr(i32* %8)
  %30 = call i8* @strchr(i32 %29, i8 signext 42)
  store i8* %30, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  %35 = call i32 @cl_assert(i32* %34)
  %36 = load i8*, i8** %9, align 8
  store i8 10, i8* %36, align 1
  %37 = call i32 @git_buf_cstr(i32* %7)
  %38 = call i32 @git_buf_cstr(i32* %8)
  %39 = call i32 @cl_git_rewritefile(i32 %37, i32 %38)
  %40 = call i32 @git_buf_cstr(i32* %7)
  %41 = call i32 @git_futils_readbuffer(i32* %8, i32 %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = call i32 @git_buf_cstr(i32* %8)
  %44 = call i32* @strstr(i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32*
  %49 = call i32 @cl_assert(i32* %48)
  %50 = load i32, i32* @g_repo, align 4
  %51 = load i8*, i8** %2, align 8
  %52 = call i32 @git_reflog_read(i32** %1, i32 %50, i8* %51)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32* @git_reflog_entry_byindex(i32* %54, i32 0)
  store i32* %55, i32** %4, align 8
  %56 = call i32 @cl_assert(i32* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @git_reflog_entry_message(i32* %57)
  %59 = call i32 @cl_assert_equal_s(i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @git_reference_free(i32* %60)
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @git_reflog_free(i32* %62)
  %64 = call i32 @git_buf_dispose(i32* %7)
  %65 = call i32 @git_buf_dispose(i32* %8)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @git_reference_create(i32**, i32, i8*, i32*, i32, i8*) #1

declare dso_local i32 @git_buf_join_n(i32*, i8 signext, i32, i32, i32, i8*) #1

declare dso_local i32 @git_repository_path(i32) #1

declare dso_local i32 @git_futils_readbuffer(i32*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @cl_git_rewritefile(i32, i32) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i32 @git_reflog_read(i32**, i32, i8*) #1

declare dso_local i32* @git_reflog_entry_byindex(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @git_reflog_entry_message(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
