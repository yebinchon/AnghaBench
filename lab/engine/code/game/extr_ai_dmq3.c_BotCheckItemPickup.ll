; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotCheckItemPickup.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotCheckItemPickup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32, i64, i64, i64, i64, i32 }

@GT_1FCTF = common dso_local global i64 0, align 8
@GT_CTF = common dso_local global i64 0, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@INVENTORY_AMMOREGEN = common dso_local global i64 0, align 8
@INVENTORY_DOUBLER = common dso_local global i64 0, align 8
@INVENTORY_GUARD = common dso_local global i64 0, align 8
@INVENTORY_INVULNERABILITY = common dso_local global i64 0, align 8
@INVENTORY_KAMIKAZE = common dso_local global i64 0, align 8
@INVENTORY_SCOUT = common dso_local global i64 0, align 8
@LTG_ATTACKENEMYBASE = common dso_local global i64 0, align 8
@LTG_DEFENDKEYAREA = common dso_local global i64 0, align 8
@LTG_GETFLAG = common dso_local global i64 0, align 8
@LTG_HARVEST = common dso_local global i64 0, align 8
@TEAMTP_ATTACKER = common dso_local global i32 0, align 4
@TEAMTP_DEFENDER = common dso_local global i32 0, align 4
@VOICECHAT_WANTONDEFENSE = common dso_local global i32 0, align 4
@VOICECHAT_WANTONOFFENSE = common dso_local global i32 0, align 4
@g_spSkill = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@gametype = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotCheckItemPickup(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
