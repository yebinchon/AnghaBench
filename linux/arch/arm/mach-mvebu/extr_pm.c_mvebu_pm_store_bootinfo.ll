; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_pm.c_mvebu_pm_store_bootinfo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_pm.c_mvebu_pm_store_bootinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BOOT_INFO_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"marvell,armadaxp\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mvebu_pm_store_bootinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_pm_store_bootinfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @BOOT_INFO_ADDR, align 4
  %4 = call i32* @phys_to_virt(i32 %3)
  store i32* %4, i32** %2, align 8
  %5 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @mvebu_pm_store_armadaxp_bootinfo(i32* %8)
  br label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %14

13:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32* @phys_to_virt(i32) #1

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @mvebu_pm_store_armadaxp_bootinfo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
