; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_soc.c_l2c_diag.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_soc.c_l2c_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dcrbase_l2c = common dso_local global i64 0, align 8
@DCRN_L2C0_ADDR = common dso_local global i64 0, align 8
@DCRN_L2C0_CMD = common dso_local global i64 0, align 8
@L2C_CMD_DIAG = common dso_local global i32 0, align 4
@DCRN_L2C0_SR = common dso_local global i64 0, align 8
@L2C_SR_CC = common dso_local global i32 0, align 4
@DCRN_L2C0_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @l2c_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2c_diag(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @dcrbase_l2c, align 8
  %4 = load i64, i64* @DCRN_L2C0_ADDR, align 8
  %5 = add nsw i64 %3, %4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @mtdcr(i64 %5, i32 %6)
  %8 = load i64, i64* @dcrbase_l2c, align 8
  %9 = load i64, i64* @DCRN_L2C0_CMD, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i32, i32* @L2C_CMD_DIAG, align 4
  %12 = call i32 @mtdcr(i64 %10, i32 %11)
  br label %13

13:                                               ; preds = %22, %1
  %14 = load i64, i64* @dcrbase_l2c, align 8
  %15 = load i64, i64* @DCRN_L2C0_SR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @mfdcr(i64 %16)
  %18 = load i32, i32* @L2C_SR_CC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %13

23:                                               ; preds = %13
  %24 = load i64, i64* @dcrbase_l2c, align 8
  %25 = load i64, i64* @DCRN_L2C0_DATA, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @mfdcr(i64 %26)
  ret i32 %27
}

declare dso_local i32 @mtdcr(i64, i32) #1

declare dso_local i32 @mfdcr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
