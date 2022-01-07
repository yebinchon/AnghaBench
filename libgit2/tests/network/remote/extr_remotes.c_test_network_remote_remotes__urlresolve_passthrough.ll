; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__urlresolve_passthrough.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__urlresolve_passthrough.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"git://github.com/libgit2/libgit2\00", align 1
@GIT_REMOTE_CALLBACKS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@urlresolve_passthrough_callback = common dso_local global i32 0, align 4
@_remote = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@GIT_DIRECTION_FETCH = common dso_local global i32 0, align 4
@GIT_DIRECTION_PUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_remotes__urlresolve_passthrough() #0 {
  %1 = alloca %struct.TYPE_9__, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = bitcast %struct.TYPE_9__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %5 = bitcast %struct.TYPE_8__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_REMOTE_CALLBACKS_INIT to i8*), i64 4, i1 false)
  %6 = load i32, i32* @urlresolve_passthrough_callback, align 4
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @_remote, align 4
  %9 = call i32 @git_remote_name(i32 %8)
  %10 = call i32 @cl_assert_equal_s(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @_remote, align 4
  %12 = call i32 @git_remote_url(i32 %11)
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @cl_assert_equal_s(i32 %12, i8* %13)
  %15 = load i32, i32* @_remote, align 4
  %16 = call i32* @git_remote_pushurl(i32 %15)
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32, i32* @_remote, align 4
  %21 = load i32, i32* @GIT_DIRECTION_FETCH, align 4
  %22 = call i32 @git_remote__urlfordirection(%struct.TYPE_9__* %1, i32 %20, i32 %21, %struct.TYPE_8__* %3)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @cl_assert_equal_s(i32 %25, i8* %26)
  %28 = load i32, i32* @_remote, align 4
  %29 = load i32, i32* @GIT_DIRECTION_PUSH, align 4
  %30 = call i32 @git_remote__urlfordirection(%struct.TYPE_9__* %1, i32 %28, i32 %29, %struct.TYPE_8__* %3)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @cl_assert_equal_s(i32 %33, i8* %34)
  %36 = call i32 @git_buf_dispose(%struct.TYPE_9__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #2

declare dso_local i32 @git_remote_name(i32) #2

declare dso_local i32 @git_remote_url(i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32* @git_remote_pushurl(i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_remote__urlfordirection(%struct.TYPE_9__*, i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
