; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_atfork_prepare.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_atfork_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atfork_state = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"sigfillset\00", align 1
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"blocking all signals\00", align 1
@PTHREAD_CANCEL_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"disabling cancellation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atfork_state*)* @atfork_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atfork_prepare(%struct.atfork_state* %0) #0 {
  %2 = alloca %struct.atfork_state*, align 8
  %3 = alloca i32, align 4
  store %struct.atfork_state* %0, %struct.atfork_state** %2, align 8
  %4 = call i64 @sigfillset(i32* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @die_errno(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* @SIG_SETMASK, align 4
  %10 = load %struct.atfork_state*, %struct.atfork_state** %2, align 8
  %11 = getelementptr inbounds %struct.atfork_state, %struct.atfork_state* %10, i32 0, i32 1
  %12 = call i32 @pthread_sigmask(i32 %9, i32* %3, i32* %11)
  %13 = call i32 @CHECK_BUG(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @PTHREAD_CANCEL_DISABLE, align 4
  %15 = load %struct.atfork_state*, %struct.atfork_state** %2, align 8
  %16 = getelementptr inbounds %struct.atfork_state, %struct.atfork_state* %15, i32 0, i32 0
  %17 = call i32 @pthread_setcancelstate(i32 %14, i32* %16)
  %18 = call i32 @CHECK_BUG(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i64 @sigfillset(i32*) #1

declare dso_local i32 @die_errno(i8*) #1

declare dso_local i32 @CHECK_BUG(i32, i8*) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @pthread_setcancelstate(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
