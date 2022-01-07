; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotSetupAlternativeRouteGoals.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotSetupAlternativeRouteGoals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@altroutegoals_setup = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@ALTROUTEGOAL_CLUSTERPORTALS = common dso_local global i32 0, align 4
@ALTROUTEGOAL_VIEWPORTALS = common dso_local global i32 0, align 4
@GT_1FCTF = common dso_local global i64 0, align 8
@GT_CTF = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i64 0, align 8
@GT_OBELISK = common dso_local global i64 0, align 8
@MAX_ALTROUTEGOALS = common dso_local global i32 0, align 4
@PRT_WARNING = common dso_local global i32 0, align 4
@TFL_DEFAULT = common dso_local global i32 0, align 4
@blue_altroutegoals = common dso_local global i32 0, align 4
@blue_numaltroutegoals = common dso_local global i8* null, align 8
@blueobelisk = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ctf_blueflag = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@ctf_neutralflag = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ctf_redflag = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@gametype = common dso_local global i64 0, align 8
@neutralobelisk = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@red_altroutegoals = common dso_local global i32 0, align 4
@red_numaltroutegoals = common dso_local global i8* null, align 8
@redobelisk = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotSetupAlternativeRouteGoals() #0 {
  %1 = load i64, i64* @altroutegoals_setup, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %6

4:                                                ; preds = %0
  %5 = load i64, i64* @qtrue, align 8
  store i64 %5, i64* @altroutegoals_setup, align 8
  br label %6

6:                                                ; preds = %4, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
