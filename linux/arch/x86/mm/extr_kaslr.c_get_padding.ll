; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_kaslr.c_get_padding.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_kaslr.c_get_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaslr_memory_region = type { i64 }

@TB_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kaslr_memory_region*)* @get_padding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_padding(%struct.kaslr_memory_region* %0) #0 {
  %2 = alloca %struct.kaslr_memory_region*, align 8
  store %struct.kaslr_memory_region* %0, %struct.kaslr_memory_region** %2, align 8
  %3 = load %struct.kaslr_memory_region*, %struct.kaslr_memory_region** %2, align 8
  %4 = getelementptr inbounds %struct.kaslr_memory_region, %struct.kaslr_memory_region* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TB_SHIFT, align 8
  %7 = shl i64 %5, %6
  ret i64 %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
