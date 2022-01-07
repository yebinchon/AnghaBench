; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_mii_busy_wait.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_mii_busy_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nuport_mac_priv = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MII_ADDR_REG = common dso_local global i32 0, align 4
@MII_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nuport_mac_priv*)* @nuport_mac_mii_busy_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nuport_mac_mii_busy_wait(%struct.nuport_mac_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nuport_mac_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.nuport_mac_priv* %0, %struct.nuport_mac_priv** %3, align 8
  %6 = load i32, i32* @jiffies, align 4
  %7 = load i32, i32* @HZ, align 4
  %8 = mul nsw i32 3, %7
  %9 = add nsw i32 %6, %8
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %22, %1
  %12 = load i32, i32* @jiffies, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = load i32, i32* @MII_ADDR_REG, align 4
  %15 = call i32 @nuport_mac_readl(i32 %14)
  %16 = load i32, i32* @MII_BUSY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %31

20:                                               ; preds = %11
  %21 = call i32 (...) @cpu_relax()
  br label %22

22:                                               ; preds = %20
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @time_after_eq(i64 %23, i64 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %11, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %19
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @nuport_mac_readl(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @time_after_eq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
