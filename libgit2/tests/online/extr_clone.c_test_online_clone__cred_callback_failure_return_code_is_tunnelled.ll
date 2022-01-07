; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__cred_callback_failure_return_code_is_tunnelled.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__cred_callback_failure_return_code_is_tunnelled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_remote_url = common dso_local global i32 0, align 4
@_remote_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"https://github.com/libgit2/non-existent\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"libgit2test\00", align 1
@cred_failure_cb = common dso_local global i32 0, align 4
@g_options = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"./foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_clone__cred_callback_failure_return_code_is_tunnelled() #0 {
  %1 = load i32, i32* @_remote_url, align 4
  %2 = call i32 @git__free(i32 %1)
  %3 = load i32, i32* @_remote_user, align 4
  %4 = call i32 @git__free(i32 %3)
  %5 = call i32 @git__strdup(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* @_remote_url, align 4
  %6 = call i32 @git__strdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %6, i32* @_remote_user, align 4
  %7 = load i32, i32* @cred_failure_cb, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_options, i32 0, i32 0, i32 0, i32 0), align 4
  %8 = load i32, i32* @_remote_url, align 4
  %9 = call i32 @git_clone(i32* @g_repo, i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_7__* @g_options)
  %10 = call i32 @cl_git_fail_with(i32 -172, i32 %9)
  ret void
}

declare dso_local i32 @git__free(i32) #1

declare dso_local i32 @git__strdup(i8*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_clone(i32*, i32, i8*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
