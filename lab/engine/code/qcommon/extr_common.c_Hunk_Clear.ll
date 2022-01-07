; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Hunk_Clear.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Hunk_Clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@hunk_low = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@hunk_high = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@hunk_permanent = common dso_local global %struct.TYPE_6__* null, align 8
@hunk_temp = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Hunk_Clear: reset the hunk ok\0A\00", align 1
@hunkblocks = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hunk_Clear() #0 {
  %1 = call i32 (...) @CL_ShutdownCGame()
  %2 = call i32 (...) @CL_ShutdownUI()
  %3 = call i32 (...) @SV_ShutdownGameProgs()
  %4 = call i32 (...) @CIN_CloseAllVideos()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hunk_low, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hunk_low, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hunk_low, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hunk_low, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @hunk_high, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @hunk_high, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @hunk_high, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @hunk_high, i32 0, i32 0), align 8
  store %struct.TYPE_6__* @hunk_low, %struct.TYPE_6__** @hunk_permanent, align 8
  store %struct.TYPE_5__* @hunk_high, %struct.TYPE_5__** @hunk_temp, align 8
  %5 = call i32 @Com_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @VM_Clear()
  ret void
}

declare dso_local i32 @CL_ShutdownCGame(...) #1

declare dso_local i32 @CL_ShutdownUI(...) #1

declare dso_local i32 @SV_ShutdownGameProgs(...) #1

declare dso_local i32 @CIN_CloseAllVideos(...) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @VM_Clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
