; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_crlf.c_test_index_crlf__autocrlf_true_no_attrs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_crlf.c_test_index_crlf__autocrlf_true_no_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"./crlf/newfile.txt\00", align 1
@GIT_EOL_NATIVE = common dso_local global i64 0, align 8
@GIT_EOL_CRLF = common dso_local global i64 0, align 8
@FILE_CONTENTS_CRLF = common dso_local global i32 0, align 4
@FILE_CONTENTS_LF = common dso_local global i32 0, align 4
@g_index = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"newfile.txt\00", align 1
@FILE_OID_LF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_crlf__autocrlf_true_no_attrs() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @g_repo, align 4
  %4 = call i32 @cl_repo_set_bool(i32 %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  %5 = load i64, i64* @GIT_EOL_NATIVE, align 8
  %6 = load i64, i64* @GIT_EOL_CRLF, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @FILE_CONTENTS_CRLF, align 4
  br label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @FILE_CONTENTS_LF, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @g_index, align 4
  %16 = call i32 @git_index_add_bypath(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @g_index, align 4
  %19 = call %struct.TYPE_3__* @git_index_get_bypath(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %1, align 8
  %20 = load i32, i32* @FILE_OID_LF, align 4
  %21 = call i32 @git_oid_fromstr(i32* %2, i32 %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @cl_assert_equal_oid(i32* %2, i32* %24)
  ret void
}

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_add_bypath(i32, i8*) #1

declare dso_local %struct.TYPE_3__* @git_index_get_bypath(i32, i8*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
