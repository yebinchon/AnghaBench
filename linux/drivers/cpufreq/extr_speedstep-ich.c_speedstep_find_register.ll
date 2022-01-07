; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-ich.c_speedstep_find_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-ich.c_speedstep_find_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@speedstep_chipset_dev = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@pmbase = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not find speedstep register\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"pmbase is 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @speedstep_find_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speedstep_find_register() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @speedstep_chipset_dev, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @ENODEV, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %1, align 4
  br label %29

7:                                                ; preds = %0
  %8 = load i32, i32* @speedstep_chipset_dev, align 4
  %9 = call i32 @pci_read_config_dword(i32 %8, i32 64, i32* @pmbase)
  %10 = load i32, i32* @pmbase, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %29

17:                                               ; preds = %7
  %18 = load i32, i32* @pmbase, align 4
  %19 = and i32 %18, -2
  store i32 %19, i32* @pmbase, align 4
  %20 = load i32, i32* @pmbase, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %1, align 4
  br label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @pmbase, align 4
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %26, %22, %13, %4
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
