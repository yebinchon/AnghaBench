; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_weap.c_BotShutdownWeaponAI.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_weap.c_BotShutdownWeaponAI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@weaponconfig = common dso_local global i32* null, align 8
@MAX_CLIENTS = common dso_local global i32 0, align 4
@botweaponstates = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotShutdownWeaponAI() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @weaponconfig, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32*, i32** @weaponconfig, align 8
  %6 = call i32 @FreeMemory(i32* %5)
  br label %7

7:                                                ; preds = %4, %0
  store i32* null, i32** @weaponconfig, align 8
  store i32 1, i32* %1, align 4
  br label %8

8:                                                ; preds = %23, %7
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @MAX_CLIENTS, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load i64*, i64** @botweaponstates, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @BotFreeWeaponState(i32 %20)
  br label %22

22:                                               ; preds = %19, %12
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %8

26:                                               ; preds = %8
  ret void
}

declare dso_local i32 @FreeMemory(i32*) #1

declare dso_local i32 @BotFreeWeaponState(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
