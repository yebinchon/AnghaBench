; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pxa3xx-ulpi.c_pxa3xx_u2d_start_hc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pxa3xx-ulpi.c_pxa3xx_u2d_start_hc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.usb_bus = type { i32 }

@u2d = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pxa3xx_u2d_start_hc(%struct.usb_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_bus*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_bus* %0, %struct.usb_bus** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @u2d, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @u2d, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_prepare_enable(i32 %11)
  %13 = call i64 (...) @cpu_is_pxa310()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = call i32 (...) @pxa310_u2d_setup_otg_hc()
  %17 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %18 = call i32 @pxa310_start_otg_hc(%struct.usb_bus* %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %8
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %7
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i64 @cpu_is_pxa310(...) #1

declare dso_local i32 @pxa310_u2d_setup_otg_hc(...) #1

declare dso_local i32 @pxa310_start_otg_hc(%struct.usb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
