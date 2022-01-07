; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_mmp2.h_mmp2_add_isram.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_mmp2.h_mmp2_add_isram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sram_platdata = type { i32 }

@mmp2_device_isram = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sram_platdata*)* @mmp2_add_isram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp2_add_isram(%struct.sram_platdata* %0) #0 {
  %2 = alloca %struct.sram_platdata*, align 8
  store %struct.sram_platdata* %0, %struct.sram_platdata** %2, align 8
  %3 = load %struct.sram_platdata*, %struct.sram_platdata** %2, align 8
  %4 = call i32 @pxa_register_device(i32* @mmp2_device_isram, %struct.sram_platdata* %3, i32 4)
  ret i32 %4
}

declare dso_local i32 @pxa_register_device(i32*, %struct.sram_platdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
