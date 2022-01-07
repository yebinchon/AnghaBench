; ModuleID = '/home/carl/AnghaBench/libgit2/tests/clone/extr_transport.c_test_clone_transport__custom_transport.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/clone/extr_transport.c_test_clone_transport__custom_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32 }

@GIT_CLONE_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@custom_transport_remote_create = common dso_local global i32 0, align 4
@custom_transport = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"./custom_transport.git\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_clone_transport__custom_transport() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = alloca i32, align 4
  %4 = bitcast %struct.TYPE_8__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_CLONE_OPTIONS_INIT to i8*), i64 24, i1 false)
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @custom_transport_remote_create, align 4
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i32 %5, i32* %6, align 8
  %7 = load i32, i32* @custom_transport, align 4
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32* %3, i32** %13, align 8
  %14 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @git_clone(i32** %1, i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %2)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_repository_free(i32* %17)
  %19 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %20 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_clone(i32**, i32, i8*, %struct.TYPE_8__*) #2

declare dso_local i32 @cl_fixture(i8*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
