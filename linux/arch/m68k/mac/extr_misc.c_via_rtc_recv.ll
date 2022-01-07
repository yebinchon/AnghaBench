; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/mac/extr_misc.c_via_rtc_recv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/mac/extr_misc.c_via_rtc_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@via1 = common dso_local global i32* null, align 8
@vBufB = common dso_local global i64 0, align 8
@VIA1B_vRTCClk = common dso_local global i32 0, align 4
@VIA1B_vRTCData = common dso_local global i32 0, align 4
@vDirB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @via_rtc_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_rtc_recv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32*, i32** @via1, align 8
  %5 = load i64, i64* @vBufB, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @VIA1B_vRTCClk, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @VIA1B_vRTCData, align 4
  %12 = xor i32 %11, -1
  %13 = load i32*, i32** @via1, align 8
  %14 = load i64, i64* @vDirB, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %12
  store i32 %17, i32* %15, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %41, %0
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = load i32*, i32** @via1, align 8
  %24 = load i64, i64* @vBufB, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @VIA1B_vRTCClk, align 4
  %28 = or i32 %26, %27
  %29 = load i32*, i32** @via1, align 8
  %30 = load i64, i64* @vBufB, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %3, align 4
  %33 = shl i32 %32, 1
  %34 = load i32*, i32** @via1, align 8
  %35 = load i64, i64* @vBufB, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @VIA1B_vRTCData, align 4
  %39 = and i32 %37, %38
  %40 = or i32 %33, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %21
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %18

44:                                               ; preds = %18
  %45 = load i32, i32* @VIA1B_vRTCData, align 4
  %46 = load i32*, i32** @via1, align 8
  %47 = load i64, i64* @vDirB, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
