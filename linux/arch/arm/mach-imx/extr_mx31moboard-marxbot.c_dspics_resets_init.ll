; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mx31moboard-marxbot.c_dspics_resets_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mx31moboard-marxbot.c_dspics_resets_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRSLAT_RST_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"translator-rst\00", align 1
@DSPICS_RST_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"dspics-rst\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dspics_resets_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dspics_resets_init() #0 {
  %1 = load i32, i32* @TRSLAT_RST_B, align 4
  %2 = call i32 @gpio_request(i32 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @TRSLAT_RST_B, align 4
  %6 = call i32 @gpio_direction_output(i32 %5, i32 0)
  %7 = load i32, i32* @TRSLAT_RST_B, align 4
  %8 = call i32 @gpio_export(i32 %7, i32 0)
  br label %9

9:                                                ; preds = %4, %0
  %10 = load i32, i32* @DSPICS_RST_B, align 4
  %11 = call i32 @gpio_request(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @DSPICS_RST_B, align 4
  %15 = call i32 @gpio_direction_output(i32 %14, i32 0)
  %16 = load i32, i32* @DSPICS_RST_B, align 4
  %17 = call i32 @gpio_export(i32 %16, i32 0)
  br label %18

18:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_export(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
