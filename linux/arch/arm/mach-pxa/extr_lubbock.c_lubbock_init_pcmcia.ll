; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_lubbock.c_lubbock_init_pcmcia.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_lubbock.c_lubbock_init_pcmcia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@sa1111_pcmcia_gpio_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"pxa2xx-pcmcia\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"1800\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lubbock_init_pcmcia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lubbock_init_pcmcia() #0 {
  %1 = alloca %struct.clk*, align 8
  %2 = call i32 @gpiod_add_lookup_table(i32* @sa1111_pcmcia_gpio_table)
  %3 = call %struct.clk* @clk_get_sys(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.clk* %3, %struct.clk** %1, align 8
  %4 = load %struct.clk*, %struct.clk** %1, align 8
  %5 = call i32 @IS_ERR(%struct.clk* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %0
  %8 = load %struct.clk*, %struct.clk** %1, align 8
  %9 = call i32 @clkdev_create(%struct.clk* %8, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.clk*, %struct.clk** %1, align 8
  %11 = call i32 @clk_put(%struct.clk* %10)
  br label %12

12:                                               ; preds = %7, %0
  ret void
}

declare dso_local i32 @gpiod_add_lookup_table(i32*) #1

declare dso_local %struct.clk* @clk_get_sys(i8*, i32*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clkdev_create(%struct.clk*, i32*, i8*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
