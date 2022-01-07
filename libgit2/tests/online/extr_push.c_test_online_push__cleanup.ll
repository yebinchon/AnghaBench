; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_push.c_test_online_push__cleanup.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_push.c_test_online_push__cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_remote = common dso_local global i32* null, align 8
@_remote_url = common dso_local global i32 0, align 4
@_remote_user = common dso_local global i32 0, align 4
@_remote_pass = common dso_local global i32 0, align 4
@_remote_ssh_key = common dso_local global i32 0, align 4
@_remote_ssh_pubkey = common dso_local global i32 0, align 4
@_remote_ssh_passphrase = common dso_local global i32 0, align 4
@_remote_default = common dso_local global i32 0, align 4
@_repo = common dso_local global i32* null, align 8
@_record_cbs_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_push__cleanup() #0 {
  %1 = load i32*, i32** @_remote, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32*, i32** @_remote, align 8
  %5 = call i32 @git_remote_free(i32* %4)
  br label %6

6:                                                ; preds = %3, %0
  store i32* null, i32** @_remote, align 8
  %7 = load i32, i32* @_remote_url, align 4
  %8 = call i32 @git__free(i32 %7)
  %9 = load i32, i32* @_remote_user, align 4
  %10 = call i32 @git__free(i32 %9)
  %11 = load i32, i32* @_remote_pass, align 4
  %12 = call i32 @git__free(i32 %11)
  %13 = load i32, i32* @_remote_ssh_key, align 4
  %14 = call i32 @git__free(i32 %13)
  %15 = load i32, i32* @_remote_ssh_pubkey, align 4
  %16 = call i32 @git__free(i32 %15)
  %17 = load i32, i32* @_remote_ssh_passphrase, align 4
  %18 = call i32 @git__free(i32 %17)
  %19 = load i32, i32* @_remote_default, align 4
  %20 = call i32 @git__free(i32 %19)
  store i32* null, i32** @_repo, align 8
  %21 = call i32 @record_callbacks_data_clear(i32* @_record_cbs_data)
  %22 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 (...) @cl_git_sandbox_cleanup()
  ret void
}

declare dso_local i32 @git_remote_free(i32*) #1

declare dso_local i32 @git__free(i32) #1

declare dso_local i32 @record_callbacks_data_clear(i32*) #1

declare dso_local i32 @cl_fixture_cleanup(i8*) #1

declare dso_local i32 @cl_git_sandbox_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
