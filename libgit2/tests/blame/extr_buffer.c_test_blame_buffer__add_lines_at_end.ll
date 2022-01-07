; ModuleID = '/home/carl/AnghaBench/libgit2/tests/blame/extr_buffer.c_test_blame_buffer__add_lines_at_end.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/blame/extr_buffer.c_test_blame_buffer__add_lines_at_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [984 x i8] c"EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\0AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\0AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\0AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\0A\0ABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\0ABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\0ABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\0ABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\0A\0ACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\0ACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\0ACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\0ACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\0A\0Aabc\0Adef\0A\00", align 1
@g_bufferblame = common dso_local global i32 0, align 4
@g_fileblame = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"da237394\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"b.txt\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"b99f7ac0\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"63d671eb\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"aa06ecca\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"00000000\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_blame_buffer__add_lines_at_end() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([984 x i8], [984 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %2 = load i32, i32* @g_fileblame, align 4
  %3 = load i8*, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i32 @strlen(i8* %4)
  %6 = call i32 @git_blame_buffer(i32* @g_bufferblame, i32 %2, i8* %3, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @g_bufferblame, align 4
  %9 = call i32 @git_blame_get_hunk_count(i32 %8)
  %10 = call i32 @cl_assert_equal_i(i32 5, i32 %9)
  %11 = load i32, i32* @g_repo, align 4
  %12 = load i32, i32* @g_bufferblame, align 4
  %13 = call i32 @check_blame_hunk_index(i32 %11, i32 %12, i32 0, i32 1, i32 4, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32, i32* @g_repo, align 4
  %15 = load i32, i32* @g_bufferblame, align 4
  %16 = call i32 @check_blame_hunk_index(i32 %14, i32 %15, i32 1, i32 5, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32, i32* @g_repo, align 4
  %18 = load i32, i32* @g_bufferblame, align 4
  %19 = call i32 @check_blame_hunk_index(i32 %17, i32 %18, i32 2, i32 6, i32 5, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @g_repo, align 4
  %21 = load i32, i32* @g_bufferblame, align 4
  %22 = call i32 @check_blame_hunk_index(i32 %20, i32 %21, i32 3, i32 11, i32 5, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @g_repo, align 4
  %24 = load i32, i32* @g_bufferblame, align 4
  %25 = call i32 @check_blame_hunk_index(i32 %23, i32 %24, i32 4, i32 16, i32 2, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_blame_buffer(i32*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_blame_get_hunk_count(i32) #1

declare dso_local i32 @check_blame_hunk_index(i32, i32, i32, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
