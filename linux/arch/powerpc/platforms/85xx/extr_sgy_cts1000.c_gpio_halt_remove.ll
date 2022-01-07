; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/85xx/extr_sgy_cts1000.c_gpio_halt_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/85xx/extr_sgy_cts1000.c_gpio_halt_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.platform_device = type { i32 }

@halt_node = common dso_local global i32* null, align 8
@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pm_power_off = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_halt_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_halt_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load i32*, i32** @halt_node, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32*, i32** @halt_node, align 8
  %9 = call i32 @of_get_gpio(i32* %8, i32 0)
  store i32 %9, i32* %3, align 4
  %10 = load i32*, i32** @halt_node, align 8
  %11 = call i32 @irq_of_parse_and_map(i32* %10, i32 0)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32*, i32** @halt_node, align 8
  %14 = call i32 @free_irq(i32 %12, i32* %13)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  store i32* null, i32** @pm_power_off, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @gpio_free(i32 %15)
  store i32* null, i32** @halt_node, align 8
  br label %17

17:                                               ; preds = %7, %1
  ret i32 0
}

declare dso_local i32 @of_get_gpio(i32*, i32) #1

declare dso_local i32 @irq_of_parse_and_map(i32*, i32) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
