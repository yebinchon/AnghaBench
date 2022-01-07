; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_push.c_test_network_remote_push__create_notification.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_push.c_test_network_remote_push__create_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_9__ = type { i8**, i32 }

@GIT_PUSH_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"refs/heads/empty-tree\00", align 1
@_dummy = common dso_local global i32 0, align 4
@negotiation_cb = common dso_local global i32 0, align 4
@_remote = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_push__create_notification() #0 {
  %1 = alloca %struct.TYPE_11__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = bitcast %struct.TYPE_11__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_PUSH_OPTIONS_INIT to i8*), i64 16, i1 false)
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i8** %4, i8*** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* @_dummy, align 4
  %10 = call i32 @create_dummy_commit(i32** %2, i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 3
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @git_reference_target(i32* %14)
  %16 = call i32 @git_oid_cpy(i32* %13, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  %18 = call i32 @memset(i32* %17, i32 0, i32 4)
  %19 = load i32, i32* @negotiation_cb, align 4
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %23, align 8
  %24 = load i32, i32* @_remote, align 4
  %25 = call i32 @git_remote_push(i32 %24, %struct.TYPE_9__* %5, %struct.TYPE_11__* %1)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_reference_free(i32* %27)
  %29 = load i32, i32* @_repo, align 4
  %30 = call i32 @git_reference_lookup(i32** %2, i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @git_reference_free(i32* %32)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @create_dummy_commit(i32**, i32) #2

declare dso_local i32 @git_oid_cpy(i32*, i32) #2

declare dso_local i32 @git_reference_target(i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_remote_push(i32, %struct.TYPE_9__*, %struct.TYPE_11__*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
