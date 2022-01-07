; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_generic.c_sa11x0_register_lcd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_generic.c_sa11x0_register_lcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100fb_mach_info = type { i32 }

@sa11x0fb_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sa11x0_register_lcd(%struct.sa1100fb_mach_info* %0) #0 {
  %2 = alloca %struct.sa1100fb_mach_info*, align 8
  store %struct.sa1100fb_mach_info* %0, %struct.sa1100fb_mach_info** %2, align 8
  %3 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %2, align 8
  %4 = call i32 @sa11x0_register_device(i32* @sa11x0fb_device, %struct.sa1100fb_mach_info* %3)
  ret void
}

declare dso_local i32 @sa11x0_register_device(i32*, %struct.sa1100fb_mach_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
