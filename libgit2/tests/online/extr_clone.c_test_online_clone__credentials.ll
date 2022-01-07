; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__credentials.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__credentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@_remote_user = common dso_local global i32 0, align 4
@_remote_pass = common dso_local global i32 0, align 4
@_remote_url = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"GITTEST_REMOTE_DEFAULT\00", align 1
@cred_default = common dso_local global i32 0, align 4
@g_options = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@git_cred_userpass = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"./foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_clone__credentials() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %3 = load i32, i32* @_remote_user, align 4
  store i32 %3, i32* %2, align 4
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %5 = load i32, i32* @_remote_pass, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @_remote_url, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 (...) @clar__skip()
  br label %10

10:                                               ; preds = %8, %0
  %11 = call i64 @cl_is_env_set(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @cred_default, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_options, i32 0, i32 0, i32 0, i32 1), align 8
  br label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @git_cred_userpass, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_options, i32 0, i32 0, i32 0, i32 1), align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_options, i32 0, i32 0, i32 0, i32 0), align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32, i32* @_remote_url, align 4
  %19 = call i32 @git_clone(i32** @g_repo, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* @g_options)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** @g_repo, align 8
  %22 = call i32 @git_repository_free(i32* %21)
  store i32* null, i32** @g_repo, align 8
  %23 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @clar__skip(...) #1

declare dso_local i64 @cl_is_env_set(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_clone(i32**, i32, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @cl_fixture_cleanup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
