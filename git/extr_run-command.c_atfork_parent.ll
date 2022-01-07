; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_atfork_parent.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_atfork_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atfork_state = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"re-enabling cancellation\00", align 1
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"restoring signal mask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atfork_state*)* @atfork_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atfork_parent(%struct.atfork_state* %0) #0 {
  %2 = alloca %struct.atfork_state*, align 8
  store %struct.atfork_state* %0, %struct.atfork_state** %2, align 8
  %3 = load %struct.atfork_state*, %struct.atfork_state** %2, align 8
  %4 = getelementptr inbounds %struct.atfork_state, %struct.atfork_state* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @pthread_setcancelstate(i32 %5, i32* null)
  %7 = call i32 @CHECK_BUG(i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @SIG_SETMASK, align 4
  %9 = load %struct.atfork_state*, %struct.atfork_state** %2, align 8
  %10 = getelementptr inbounds %struct.atfork_state, %struct.atfork_state* %9, i32 0, i32 0
  %11 = call i32 @pthread_sigmask(i32 %8, i32* %10, i32* null)
  %12 = call i32 @CHECK_BUG(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @CHECK_BUG(i32, i8*) #1

declare dso_local i32 @pthread_setcancelstate(i32, i32*) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
