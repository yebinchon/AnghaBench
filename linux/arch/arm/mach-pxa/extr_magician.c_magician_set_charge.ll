; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_magician.c_magician_set_charge.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_magician.c_magician_set_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PDA_POWER_CHARGE_AC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Charging from AC\0A\00", align 1
@EGPIO_MAGICIAN_NICD_CHARGE = common dso_local global i32 0, align 4
@PDA_POWER_CHARGE_USB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Charging from USB\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Charging disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @magician_set_charge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @magician_set_charge(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @PDA_POWER_CHARGE_AC, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @EGPIO_MAGICIAN_NICD_CHARGE, align 4
  %10 = call i32 @gpio_set_value(i32 %9, i32 1)
  br label %25

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @PDA_POWER_CHARGE_USB, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @EGPIO_MAGICIAN_NICD_CHARGE, align 4
  %19 = call i32 @gpio_set_value(i32 %18, i32 1)
  br label %24

20:                                               ; preds = %11
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @EGPIO_MAGICIAN_NICD_CHARGE, align 4
  %23 = call i32 @gpio_set_value(i32 %22, i32 0)
  br label %24

24:                                               ; preds = %20, %16
  br label %25

25:                                               ; preds = %24, %7
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
