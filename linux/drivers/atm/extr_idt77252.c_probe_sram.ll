; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_probe_sram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_probe_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32 }

@SAR_REG_DR0 = common dso_local global i32 0, align 4
@SAR_CMD_WRITE_SRAM = common dso_local global i32 0, align 4
@SAR_REG_CMD = common dso_local global i32 0, align 4
@ATM_POISON = common dso_local global i32 0, align 4
@SAR_CMD_READ_SRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.idt77252_dev*)* @probe_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @probe_sram(%struct.idt77252_dev* %0) #0 {
  %2 = alloca %struct.idt77252_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %2, align 8
  %5 = load i32, i32* @SAR_REG_DR0, align 4
  %6 = call i32 @writel(i32 0, i32 %5)
  %7 = load i32, i32* @SAR_CMD_WRITE_SRAM, align 4
  %8 = load i32, i32* @SAR_REG_CMD, align 4
  %9 = call i32 @writel(i32 %7, i32 %8)
  store i32 16384, i32* %4, align 4
  br label %10

10:                                               ; preds = %32, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 524288
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load i32, i32* @ATM_POISON, align 4
  %15 = load i32, i32* @SAR_REG_DR0, align 4
  %16 = call i32 @writel(i32 %14, i32 %15)
  %17 = load i32, i32* @SAR_CMD_WRITE_SRAM, align 4
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 %18, 2
  %20 = or i32 %17, %19
  %21 = load i32, i32* @SAR_REG_CMD, align 4
  %22 = call i32 @writel(i32 %20, i32 %21)
  %23 = load i32, i32* @SAR_CMD_READ_SRAM, align 4
  %24 = load i32, i32* @SAR_REG_CMD, align 4
  %25 = call i32 @writel(i32 %23, i32 %24)
  %26 = load i32, i32* @SAR_REG_DR0, align 4
  %27 = call i32 @readl(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  br label %35

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 16384
  store i32 %34, i32* %4, align 4
  br label %10

35:                                               ; preds = %30, %10
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  ret i64 %38
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
