; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_push.c_test_network_remote_push__delete_notification.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_push.c_test_network_remote_push__delete_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_9__ = type { i8**, i32 }

@GIT_PUSH_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c":refs/heads/master\00", align 1
@_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@negotiation_cb = common dso_local global i32 0, align 4
@_remote = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_push__delete_notification() #0 {
  %1 = alloca %struct.TYPE_11__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = bitcast %struct.TYPE_11__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_PUSH_OPTIONS_INIT to i8*), i64 16, i1 false)
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i8** %4, i8*** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* @_repo, align 4
  %10 = call i32 @git_reference_lookup(i32** %2, i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 3
  %15 = call i32 @memset(i32* %14, i32 0, i32 4)
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @git_reference_target(i32* %17)
  %19 = call i32 @git_oid_cpy(i32* %16, i32 %18)
  %20 = load i32, i32* @negotiation_cb, align 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %24, align 8
  %25 = load i32, i32* @_remote, align 4
  %26 = call i32 @git_remote_push(i32 %25, %struct.TYPE_9__* %5, %struct.TYPE_11__* %1)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @git_reference_free(i32* %28)
  %30 = load i32, i32* @GIT_ENOTFOUND, align 4
  %31 = load i32, i32* @_repo, align 4
  %32 = call i32 @git_reference_lookup(i32** %2, i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @cl_git_fail_with(i32 %30, i32 %32)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @git_oid_cpy(i32*, i32) #2

declare dso_local i32 @git_reference_target(i32*) #2

declare dso_local i32 @git_remote_push(i32, %struct.TYPE_9__*, %struct.TYPE_11__*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
