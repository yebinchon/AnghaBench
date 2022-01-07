; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_local.c_test_network_remote_local__reflog.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_local.c_test_network_remote_local__reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"master:remotes/sloppy/master\00", align 1
@__const.test_network_remote_local__reflog.refspec_strings = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0)], align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@remote = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"UPDAAAAAATE!!\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"refs/remotes/sloppy/master\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"foo@example.com\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_local__reflog() #0 {
  %1 = alloca [1 x i8*], align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = bitcast [1 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast ([1 x i8*]* @__const.test_network_remote_local__reflog.refspec_strings to i8*), i64 8, i1 false)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %7 = getelementptr inbounds [1 x i8*], [1 x i8*]* %1, i64 0, i64 0
  store i8** %7, i8*** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 1, i32* %8, align 8
  %9 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @connect_to_local_repository(i32 %9)
  %11 = load i32, i32* @remote, align 4
  %12 = call i32 @git_remote_fetch(i32 %11, %struct.TYPE_4__* %2, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @repo, align 4
  %15 = call i32 @git_reflog_read(i32** %3, i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @git_reflog_entrycount(i32* %17)
  %19 = call i32 @cl_assert_equal_i(i32 1, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @git_reflog_entry_byindex(i32* %20, i32 0)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call %struct.TYPE_5__* @git_reflog_entry_committer(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @git_reflog_entry_message(i32* %27)
  %29 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @git_reflog_free(i32* %30)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @connect_to_local_repository(i32) #2

declare dso_local i32 @cl_fixture(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_remote_fetch(i32, %struct.TYPE_4__*, i32*, i8*) #2

declare dso_local i32 @git_reflog_read(i32**, i32, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_reflog_entrycount(i32*) #2

declare dso_local i32* @git_reflog_entry_byindex(i32*, i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local %struct.TYPE_5__* @git_reflog_entry_committer(i32*) #2

declare dso_local i32 @git_reflog_entry_message(i32*) #2

declare dso_local i32 @git_reflog_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
