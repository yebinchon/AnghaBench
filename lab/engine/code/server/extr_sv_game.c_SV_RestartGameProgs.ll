; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_game.c_SV_RestartGameProgs.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_game.c_SV_RestartGameProgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gvm = common dso_local global i64 0, align 8
@GAME_SHUTDOWN = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"VM_Restart on game failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_RestartGameProgs() #0 {
  %1 = load i64, i64* @gvm, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %20

4:                                                ; preds = %0
  %5 = load i64, i64* @gvm, align 8
  %6 = load i32, i32* @GAME_SHUTDOWN, align 4
  %7 = load i32, i32* @qtrue, align 4
  %8 = call i32 @VM_Call(i64 %5, i32 %6, i32 %7)
  %9 = load i64, i64* @gvm, align 8
  %10 = load i32, i32* @qtrue, align 4
  %11 = call i64 @VM_Restart(i64 %9, i32 %10)
  store i64 %11, i64* @gvm, align 8
  %12 = load i64, i64* @gvm, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ERR_FATAL, align 4
  %16 = call i32 @Com_Error(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %4
  %18 = load i32, i32* @qtrue, align 4
  %19 = call i32 @SV_InitGameVM(i32 %18)
  br label %20

20:                                               ; preds = %17, %3
  ret void
}

declare dso_local i32 @VM_Call(i64, i32, i32) #1

declare dso_local i64 @VM_Restart(i64, i32) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @SV_InitGameVM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
