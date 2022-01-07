; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_parse.c_test_commit_parse__only_lf.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_parse.c_test_commit_parse__only_lf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [213 x i8] c"tree 1810dff58d8a660512d4832e740f692884338ccd\0Aparent e90810b8df3e80c413d903f631643c716887138d\0Aauthor Vicent Marti <tanoku@gmail.com> 1273848544 +0200\0Acommitter Vicent Marti <tanoku@gmail.com> 1273848544 +0200\0A\0A\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_parse__only_lf() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @parse_commit(i32** %1, i8* %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i8*, i8** %3, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_commit_message(i32* %9)
  %11 = call i32 @cl_assert_equal_s(i8* %8, i32 %10)
  %12 = load i8*, i8** %4, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_commit_message_raw(i32* %13)
  %15 = call i32 @cl_assert_equal_s(i8* %12, i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_commit__free(i32* %16)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @parse_commit(i32**, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_commit_message(i32*) #1

declare dso_local i32 @git_commit_message_raw(i32*) #1

declare dso_local i32 @git_commit__free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
