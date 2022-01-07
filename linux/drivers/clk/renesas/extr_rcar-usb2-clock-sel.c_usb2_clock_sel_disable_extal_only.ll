; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-usb2-clock-sel.c_usb2_clock_sel_disable_extal_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-usb2-clock-sel.c_usb2_clock_sel_disable_extal_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb2_clock_sel_priv = type { i64, i32, i64 }

@CLKSET0_PRIVATE = common dso_local global i32 0, align 4
@USB20_CLKSET0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb2_clock_sel_priv*)* @usb2_clock_sel_disable_extal_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb2_clock_sel_disable_extal_only(%struct.usb2_clock_sel_priv* %0) #0 {
  %2 = alloca %struct.usb2_clock_sel_priv*, align 8
  store %struct.usb2_clock_sel_priv* %0, %struct.usb2_clock_sel_priv** %2, align 8
  %3 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %2, align 8
  %4 = getelementptr inbounds %struct.usb2_clock_sel_priv, %struct.usb2_clock_sel_priv* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %2, align 8
  %9 = getelementptr inbounds %struct.usb2_clock_sel_priv, %struct.usb2_clock_sel_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @CLKSET0_PRIVATE, align 4
  %14 = load %struct.usb2_clock_sel_priv*, %struct.usb2_clock_sel_priv** %2, align 8
  %15 = getelementptr inbounds %struct.usb2_clock_sel_priv, %struct.usb2_clock_sel_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @USB20_CLKSET0, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writew(i32 %13, i64 %18)
  br label %20

20:                                               ; preds = %12, %7, %1
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
