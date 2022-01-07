; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__ssh_memory_auth.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__ssh_memory_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_remote_url = common dso_local global i32 0, align 4
@_remote_user = common dso_local global i32 0, align 4
@_remote_ssh_privkey = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ssh://\00", align 1
@ssh_memory_cred_cb = common dso_local global i32 0, align 4
@g_options = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"./foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_clone__ssh_memory_auth() #0 {
  %1 = call i32 (...) @clar__skip()
  %2 = load i32, i32* @_remote_url, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = load i32, i32* @_remote_user, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, i32* @_remote_ssh_privkey, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* @_remote_url, align 4
  %12 = call i64 @strncmp(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 5)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %7, %4, %0
  %15 = call i32 (...) @clar__skip()
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* @ssh_memory_cred_cb, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_options, i32 0, i32 0, i32 0, i32 0), align 4
  %18 = load i32, i32* @_remote_url, align 4
  %19 = call i32 @git_clone(i32* @g_repo, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* @g_options)
  %20 = call i32 @cl_git_pass(i32 %19)
  ret void
}

declare dso_local i32 @clar__skip(...) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_clone(i32*, i32, i8*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
