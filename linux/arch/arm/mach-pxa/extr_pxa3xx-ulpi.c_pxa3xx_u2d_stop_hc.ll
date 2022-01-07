; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pxa3xx-ulpi.c_pxa3xx_u2d_stop_hc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pxa3xx-ulpi.c_pxa3xx_u2d_stop_hc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.usb_bus = type { i32 }

@u2d = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pxa3xx_u2d_stop_hc(%struct.usb_bus* %0) #0 {
  %2 = alloca %struct.usb_bus*, align 8
  store %struct.usb_bus* %0, %struct.usb_bus** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @u2d, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %16

6:                                                ; preds = %1
  %7 = call i64 (...) @cpu_is_pxa310()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 (...) @pxa310_stop_otg_hc()
  br label %11

11:                                               ; preds = %9, %6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @u2d, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_disable_unprepare(i32 %14)
  br label %16

16:                                               ; preds = %11, %5
  ret void
}

declare dso_local i64 @cpu_is_pxa310(...) #1

declare dso_local i32 @pxa310_stop_otg_hc(...) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
