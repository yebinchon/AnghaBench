; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_crlf.c_test_index_crlf__safecrlf_true_no_attrs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_crlf.c_test_index_crlf__safecrlf_true_no_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"core.safecrlf\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"crlf/newfile.txt\00", align 1
@ALL_LF_TEXT_RAW = common dso_local global i32 0, align 4
@g_index = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"newfile.txt\00", align 1
@ALL_CRLF_TEXT_RAW = common dso_local global i32 0, align 4
@MORE_CRLF_TEXT_RAW = common dso_local global i32 0, align 4
@MORE_LF_TEXT_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_crlf__safecrlf_true_no_attrs() #0 {
  %1 = load i32, i32* @g_repo, align 4
  %2 = call i32 @cl_repo_set_bool(i32 %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  %3 = load i32, i32* @g_repo, align 4
  %4 = call i32 @cl_repo_set_bool(i32 %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %5 = load i32, i32* @ALL_LF_TEXT_RAW, align 4
  %6 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @g_index, align 4
  %8 = call i32 @git_index_add_bypath(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 @cl_git_fail(i32 %8)
  %10 = load i32, i32* @ALL_CRLF_TEXT_RAW, align 4
  %11 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @g_index, align 4
  %13 = call i32 @git_index_add_bypath(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @MORE_CRLF_TEXT_RAW, align 4
  %16 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @g_index, align 4
  %18 = call i32 @git_index_add_bypath(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @cl_git_fail(i32 %18)
  %20 = load i32, i32* @MORE_LF_TEXT_RAW, align 4
  %21 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @g_index, align 4
  %23 = call i32 @git_index_add_bypath(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 @cl_git_fail(i32 %23)
  ret void
}

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_index_add_bypath(i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
