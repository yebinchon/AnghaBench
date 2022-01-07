; ModuleID = '/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_com.c_at91_init_uarts.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_com.c_at91_init_uarts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@port_detected = common dso_local global i64 0, align 8
@MAX_UARTS = common dso_local global i32 0, align 4
@usa = common dso_local global i64* null, align 8
@us = common dso_local global i64 0, align 8
@AT91C_MASTER_CLOCK = common dso_local global i32 0, align 4
@AT91C_US_ASYNC_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @at91_init_uarts() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @port_detected, align 8
  %2 = call i32 (...) @AT91F_DBGU_CfgPIO()
  %3 = call i32 (...) @AT91F_US0_CfgPIO()
  %4 = call i32 (...) @AT91F_US0_CfgPMC()
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %32, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @MAX_UARTS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  %10 = load i64*, i64** @usa, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* @us, align 8
  %15 = load i64, i64* @us, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @AT91F_US_ResetRx(i32 %16)
  %18 = load i64, i64* @us, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @AT91F_US_ResetTx(i32 %19)
  %21 = load i64, i64* @us, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @AT91C_MASTER_CLOCK, align 4
  %24 = load i32, i32* @AT91C_US_ASYNC_MODE, align 4
  %25 = call i32 @AT91F_US_Configure(i32 %22, i32 %23, i32 %24, i32 115200, i32 0)
  %26 = load i64, i64* @us, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @AT91F_US_EnableTx(i32 %27)
  %29 = load i64, i64* @us, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @AT91F_US_EnableRx(i32 %30)
  br label %32

32:                                               ; preds = %9
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %5

35:                                               ; preds = %5
  %36 = load i64*, i64** @usa, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* @us, align 8
  ret void
}

declare dso_local i32 @AT91F_DBGU_CfgPIO(...) #1

declare dso_local i32 @AT91F_US0_CfgPIO(...) #1

declare dso_local i32 @AT91F_US0_CfgPMC(...) #1

declare dso_local i32 @AT91F_US_ResetRx(i32) #1

declare dso_local i32 @AT91F_US_ResetTx(i32) #1

declare dso_local i32 @AT91F_US_Configure(i32, i32, i32, i32, i32) #1

declare dso_local i32 @AT91F_US_EnableTx(i32) #1

declare dso_local i32 @AT91F_US_EnableRx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
