; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_preferences.c_Preferences_Cache.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_preferences.c_Preferences_Cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@ART_FRAMEL = common dso_local global i32 0, align 4
@ART_FRAMER = common dso_local global i32 0, align 4
@ART_BACK0 = common dso_local global i32 0, align 4
@ART_BACK1 = common dso_local global i32 0, align 4
@NUM_CROSSHAIRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"gfx/2d/crosshair%c\00", align 1
@s_preferences = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Preferences_Cache() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ART_FRAMEL, align 4
  %3 = call i32 @trap_R_RegisterShaderNoMip(i32 %2)
  %4 = load i32, i32* @ART_FRAMER, align 4
  %5 = call i32 @trap_R_RegisterShaderNoMip(i32 %4)
  %6 = load i32, i32* @ART_BACK0, align 4
  %7 = call i32 @trap_R_RegisterShaderNoMip(i32 %6)
  %8 = load i32, i32* @ART_BACK1, align 4
  %9 = call i32 @trap_R_RegisterShaderNoMip(i32 %8)
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %24, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @NUM_CROSSHAIRS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 97, %15
  %17 = trunc i32 %16 to i8
  %18 = call i32 @va(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8 signext %17)
  %19 = call i32 @trap_R_RegisterShaderNoMip(i32 %18)
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_preferences, i32 0, i32 0), align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %19, i32* %23, align 4
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %10

27:                                               ; preds = %10
  ret void
}

declare dso_local i32 @trap_R_RegisterShaderNoMip(i32) #1

declare dso_local i32 @va(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
