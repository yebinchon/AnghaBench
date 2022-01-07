; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_crlf.c_test_index_crlf__safecrlf_true_autocrlf_input_text_auto_attr.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_crlf.c_test_index_crlf__safecrlf_true_autocrlf_input_text_auto_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"./crlf/.gitattributes\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"* text=auto\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"core.safecrlf\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"./crlf/newfile.txt\00", align 1
@FILE_CONTENTS_LF = common dso_local global i8* null, align 8
@g_index = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"newfile.txt\00", align 1
@FILE_OID_LF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"./crlf/newfile2.txt\00", align 1
@FILE_CONTENTS_CRLF = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"newfile2.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_crlf__safecrlf_true_autocrlf_input_text_auto_attr() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @cl_repo_set_string(i32 %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @cl_repo_set_bool(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %8 = load i8*, i8** @FILE_CONTENTS_LF, align 8
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* @g_index, align 4
  %11 = call i32 @git_index_add_bypath(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @g_index, align 4
  %14 = call %struct.TYPE_4__* @git_index_get_bypath(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %1, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %16 = call i32 @cl_assert(%struct.TYPE_4__* %15)
  %17 = load i32, i32* @FILE_OID_LF, align 4
  %18 = call i32 @git_oid_fromstr(i32* %2, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @cl_assert_equal_oid(i32* %2, i32* %21)
  %23 = load i8*, i8** @FILE_CONTENTS_CRLF, align 8
  %24 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @g_index, align 4
  %26 = call i32 @git_index_add_bypath(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %27 = call i32 @cl_git_fail(i32 %26)
  ret void
}

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_repo_set_string(i32, i8*, i8*) #1

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_add_bypath(i32, i8*) #1

declare dso_local %struct.TYPE_4__* @git_index_get_bypath(i32, i8*, i32) #1

declare dso_local i32 @cl_assert(%struct.TYPE_4__*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @cl_git_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
