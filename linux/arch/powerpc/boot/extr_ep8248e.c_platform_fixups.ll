; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_ep8248e.c_platform_fixups.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_ep8248e.c_platform_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mem_size = common dso_local global i32 0, align 4
@table = common dso_local global i32 0, align 4
@PLANETCORE_KEY_CRYSTAL_HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"No PlanetCore crystal frequency key.\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @platform_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @platform_fixups() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @mem_size, align 4
  %3 = call i32 @dt_fixup_memory(i32 0, i32 %2)
  %4 = load i32, i32* @table, align 4
  %5 = call i32 @planetcore_set_mac_addrs(i32 %4)
  %6 = load i32, i32* @table, align 4
  %7 = load i32, i32* @PLANETCORE_KEY_CRYSTAL_HZ, align 4
  %8 = call i32 @planetcore_get_decimal(i32 %6, i32 %7, i32* %1)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %15

12:                                               ; preds = %0
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @pq2_fixup_clocks(i32 %13)
  br label %15

15:                                               ; preds = %12, %10
  ret void
}

declare dso_local i32 @dt_fixup_memory(i32, i32) #1

declare dso_local i32 @planetcore_set_mac_addrs(i32) #1

declare dso_local i32 @planetcore_get_decimal(i32, i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @pq2_fixup_clocks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
