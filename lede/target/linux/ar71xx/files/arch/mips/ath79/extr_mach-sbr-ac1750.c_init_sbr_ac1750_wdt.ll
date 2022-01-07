; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/arch/mips/ath79/extr_mach-sbr-ac1750.c_init_sbr_ac1750_wdt.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/arch/mips/ath79/extr_mach-sbr-ac1750.c_init_sbr_ac1750_wdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@gpio_wdt_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @init_sbr_ac1750_wdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sbr_ac1750_wdt(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %8 = call i32 @gpio_request_one(i32 %6, i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @gpio_set_value(i32 %9, i32 0)
  %11 = call i32 @ndelay(i32 1000)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @gpio_set_value(i32 %12, i32 1)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @setup_timer(i32* @gpio_wdt_timer, i32 (i32)* @gpio_wdt_toggle, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @gpio_wdt_toggle(i32 %16)
  br label %18

18:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @gpio_request_one(i32, i32, i8*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @setup_timer(i32*, i32 (i32)*, i32) #1

declare dso_local i32 @gpio_wdt_toggle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
