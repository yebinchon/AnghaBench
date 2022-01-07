; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_Base_Shutdown.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_Base_Shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_soundStarted = common dso_local global i64 0, align 8
@s_numSfx = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"s_info\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_Base_Shutdown() #0 {
  %1 = load i64, i64* @s_soundStarted, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %8

4:                                                ; preds = %0
  %5 = call i32 (...) @SNDDMA_Shutdown()
  %6 = call i32 (...) @SND_shutdown()
  store i64 0, i64* @s_soundStarted, align 8
  store i64 0, i64* @s_numSfx, align 8
  %7 = call i32 @Cmd_RemoveCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %4, %3
  ret void
}

declare dso_local i32 @SNDDMA_Shutdown(...) #1

declare dso_local i32 @SND_shutdown(...) #1

declare dso_local i32 @Cmd_RemoveCommand(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
