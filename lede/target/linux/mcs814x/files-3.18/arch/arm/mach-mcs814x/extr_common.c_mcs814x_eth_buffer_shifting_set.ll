; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/arch/arm/mach-mcs814x/extr_common.c_mcs814x_eth_buffer_shifting_set.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/arch/arm/mach-mcs814x/extr_common.c_mcs814x_eth_buffer_shifting_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcs814x_sysdbg_base = common dso_local global i64 0, align 8
@SYSDBG_SYSCTL_MAC = common dso_local global i64 0, align 8
@BUF_SHIFT_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mcs814x_eth_buffer_shifting_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcs814x_eth_buffer_shifting_set(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @mcs814x_sysdbg_base, align 8
  %5 = load i64, i64* @SYSDBG_SYSCTL_MAC, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i64 @readb_relaxed(i64 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i64, i64* @BUF_SHIFT_BIT, align 8
  %12 = load i64, i64* %3, align 8
  %13 = or i64 %12, %11
  store i64 %13, i64* %3, align 8
  br label %19

14:                                               ; preds = %1
  %15 = load i64, i64* @BUF_SHIFT_BIT, align 8
  %16 = xor i64 %15, -1
  %17 = load i64, i64* %3, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %3, align 8
  br label %19

19:                                               ; preds = %14, %10
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @mcs814x_sysdbg_base, align 8
  %22 = load i64, i64* @SYSDBG_SYSCTL_MAC, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writeb_relaxed(i64 %20, i64 %23)
  ret void
}

declare dso_local i64 @readb_relaxed(i64) #1

declare dso_local i32 @writeb_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
