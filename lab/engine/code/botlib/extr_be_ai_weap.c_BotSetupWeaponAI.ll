; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_weap.c_BotSetupWeaponAI.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_weap.c_BotSetupWeaponAI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*)* }

@.str = private unnamed_addr constant [13 x i8] c"weaponconfig\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"weapons.c\00", align 1
@weaponconfig = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PRT_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"couldn't load the weapon config\0A\00", align 1
@BLERR_CANNOTLOADWEAPONCONFIG = common dso_local global i32 0, align 4
@BLERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotSetupWeaponAI() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = call i8* @LibVarString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %3, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @LoadWeaponConfig(i8* %4)
  store i32 %5, i32* @weaponconfig, align 4
  %6 = load i32, i32* @weaponconfig, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %0
  %9 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %10 = load i32, i32* @PRT_FATAL, align 4
  %11 = call i32 %9(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32, i32* @BLERR_CANNOTLOADWEAPONCONFIG, align 4
  store i32 %12, i32* %1, align 4
  br label %15

13:                                               ; preds = %0
  %14 = load i32, i32* @BLERR_NOERROR, align 4
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %13, %8
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i8* @LibVarString(i8*, i8*) #1

declare dso_local i32 @LoadWeaponConfig(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
