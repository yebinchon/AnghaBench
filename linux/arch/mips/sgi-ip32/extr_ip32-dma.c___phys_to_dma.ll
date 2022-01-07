; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip32/extr_ip32-dma.c___phys_to_dma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip32/extr_ip32-dma.c___phys_to_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@RAM_OFFSET_MASK = common dso_local global i32 0, align 4
@CRIME_HI_MEM_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__phys_to_dma(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @RAM_OFFSET_MASK, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = icmp ne %struct.device* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @CRIME_HI_MEM_BASE, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
