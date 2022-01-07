; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__parsing.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__parsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@_remote = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"git://github.com/libgit2/libgit2\00", align 1
@GIT_DIRECTION_FETCH = common dso_local global i32 0, align 4
@GIT_DIRECTION_PUSH = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"test_with_pushurl\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"git://github.com/libgit2/fetchlibgit2\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"git://github.com/libgit2/pushlibgit2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_remotes__parsing() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i32*, align 8
  %3 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i32* null, i32** %2, align 8
  %4 = load i32*, i32** @_remote, align 8
  %5 = call i32* @git_remote_name(i32* %4)
  %6 = call i32 @cl_assert_equal_s(i32* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** @_remote, align 8
  %8 = call i32* @git_remote_url(i32* %7)
  %9 = call i32 @cl_assert_equal_s(i32* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32*, i32** @_remote, align 8
  %11 = call i32* @git_remote_pushurl(i32* %10)
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load i32*, i32** @_remote, align 8
  %16 = load i32, i32* @GIT_DIRECTION_FETCH, align 4
  %17 = call i32 @git_remote__urlfordirection(%struct.TYPE_5__* %1, i32* %15, i32 %16, i32* null)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @cl_assert_equal_s(i32* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** @_remote, align 8
  %23 = load i32, i32* @GIT_DIRECTION_PUSH, align 4
  %24 = call i32 @git_remote__urlfordirection(%struct.TYPE_5__* %1, i32* %22, i32 %23, i32* null)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @cl_assert_equal_s(i32* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @_repo, align 4
  %30 = call i32 @git_remote_lookup(i32** %2, i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32* @git_remote_name(i32* %32)
  %34 = call i32 @cl_assert_equal_s(i32* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32*, i32** %2, align 8
  %36 = call i32* @git_remote_url(i32* %35)
  %37 = call i32 @cl_assert_equal_s(i32* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32*, i32** %2, align 8
  %39 = call i32* @git_remote_pushurl(i32* %38)
  %40 = call i32 @cl_assert_equal_s(i32* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* @GIT_DIRECTION_FETCH, align 4
  %43 = call i32 @git_remote__urlfordirection(%struct.TYPE_5__* %1, i32* %41, i32 %42, i32* null)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @cl_assert_equal_s(i32* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* @GIT_DIRECTION_PUSH, align 4
  %50 = call i32 @git_remote__urlfordirection(%struct.TYPE_5__* %1, i32* %48, i32 %49, i32* null)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @cl_assert_equal_s(i32* %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @git_remote_free(i32* %55)
  %57 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_assert_equal_s(i32*, i8*) #2

declare dso_local i32* @git_remote_name(i32*) #2

declare dso_local i32* @git_remote_url(i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32* @git_remote_pushurl(i32*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_remote__urlfordirection(%struct.TYPE_5__*, i32*, i32, i32*) #2

declare dso_local i32 @git_remote_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
