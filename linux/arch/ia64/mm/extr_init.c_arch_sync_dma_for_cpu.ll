; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/mm/extr_init.c_arch_sync_dma_for_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/mm/extr_init.c_arch_sync_dma_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PG_arch_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_sync_dma_for_cpu(%struct.device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @PHYS_PFN(i64 %10)
  store i64 %11, i64* %9, align 8
  br label %12

12:                                               ; preds = %18, %4
  %13 = load i32, i32* @PG_arch_1, align 4
  %14 = load i64, i64* %9, align 8
  %15 = call %struct.TYPE_2__* @pfn_to_page(i64 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @set_bit(i32 %13, i32* %16)
  br label %18

18:                                               ; preds = %12
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %21, %22
  %24 = sub i64 %23, 1
  %25 = call i64 @PHYS_PFN(i64 %24)
  %26 = icmp ule i64 %20, %25
  br i1 %26, label %12, label %27

27:                                               ; preds = %18
  ret void
}

declare dso_local i64 @PHYS_PFN(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @pfn_to_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
