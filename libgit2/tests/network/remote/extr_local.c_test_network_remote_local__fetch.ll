; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_local.c_test_network_remote_local__fetch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_local.c_test_network_remote_local__fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"master:remotes/sloppy/master\00", align 1
@__const.test_network_remote_local__fetch.refspec_strings = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0)], align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@remote = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"UPDAAAAAATE!!\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"refs/remotes/sloppy/master\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"foo@example.com\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_local__fetch() #0 {
  %1 = alloca [1 x i8*], align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = bitcast [1 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast ([1 x i8*]* @__const.test_network_remote_local__fetch.refspec_strings to i8*), i64 8, i1 false)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %8 = getelementptr inbounds [1 x i8*], [1 x i8*]* %1, i64 0, i64 0
  store i8** %8, i8*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 1, i32* %9, align 8
  %10 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @connect_to_local_repository(i32 %10)
  %12 = load i32, i32* @remote, align 4
  %13 = call i32 @git_remote_fetch(i32 %12, %struct.TYPE_4__* %2, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @repo, align 4
  %16 = call i32 @git_reference_lookup(i32** %5, i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @git_reference_free(i32* %18)
  %20 = load i32, i32* @repo, align 4
  %21 = call i32 @git_reflog_read(i32** %3, i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @git_reflog_entrycount(i32* %23)
  %25 = call i32 @cl_assert_equal_i(i32 1, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32* @git_reflog_entry_byindex(i32* %26, i32 0)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call %struct.TYPE_5__* @git_reflog_entry_committer(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @git_reflog_entry_message(i32* %33)
  %35 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @git_reflog_free(i32* %36)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @connect_to_local_repository(i32) #2

declare dso_local i32 @cl_fixture(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_remote_fetch(i32, %struct.TYPE_4__*, i32*, i8*) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_reference_free(i32*) #2

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
