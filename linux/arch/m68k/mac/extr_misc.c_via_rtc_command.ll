; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/mac/extr_misc.c_via_rtc_command.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/mac/extr_misc.c_via_rtc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@via1 = common dso_local global i32* null, align 8
@vBufB = common dso_local global i64 0, align 8
@VIA1B_vRTCClk = common dso_local global i32 0, align 4
@VIA1B_vRTCEnb = common dso_local global i32 0, align 4
@RTC_FLG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @via_rtc_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_rtc_command(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, -4
  %11 = or i32 %10, 1
  store i32 %11, i32* %3, align 4
  %12 = load i32*, i32** @via1, align 8
  %13 = load i64, i64* @vBufB, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VIA1B_vRTCClk, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @VIA1B_vRTCEnb, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load i32*, i32** @via1, align 8
  %22 = load i64, i64* @vBufB, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 65280
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 65280
  %30 = ashr i32 %29, 8
  %31 = call i32 @via_rtc_send(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 255
  %34 = call i32 @via_rtc_send(i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @RTC_FLG_READ, align 4
  %37 = shl i32 %36, 8
  %38 = and i32 %35, %37
  store i32 %38, i32* %6, align 4
  br label %45

39:                                               ; preds = %2
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @via_rtc_send(i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @RTC_FLG_READ, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %39, %27
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = call i32 (...) @via_rtc_recv()
  %50 = load i32*, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  br label %55

51:                                               ; preds = %45
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @via_rtc_send(i32 %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* @VIA1B_vRTCEnb, align 4
  %57 = load i32*, i32** @via1, align 8
  %58 = load i64, i64* @vBufB, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 4
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @local_irq_restore(i64 %62)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @via_rtc_send(i32) #1

declare dso_local i32 @via_rtc_recv(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
