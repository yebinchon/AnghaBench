; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/mm/extr_dma-mapping.c_arch_sync_dma_for_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/mm/extr_dma-mapping.c_arch_sync_dma_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_sync_dma_for_device(%struct.device* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i8* @phys_to_virt(i32 %10)
  store i8* %11, i8** %9, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %29 [
    i32 129, label %13
    i32 128, label %21
    i32 130, label %21
  ]

13:                                               ; preds = %4
  %14 = load i8*, i8** %9, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr i8, i8* %16, i64 %17
  %19 = ptrtoint i8* %18 to i64
  %20 = call i32 @invalidate_dcache_range(i64 %15, i64 %19)
  br label %31

21:                                               ; preds = %4, %4
  %22 = load i8*, i8** %9, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr i8, i8* %24, i64 %25
  %27 = ptrtoint i8* %26 to i64
  %28 = call i32 @flush_dcache_range(i64 %23, i64 %27)
  br label %31

29:                                               ; preds = %4
  %30 = call i32 (...) @BUG()
  br label %31

31:                                               ; preds = %29, %21, %13
  ret void
}

declare dso_local i8* @phys_to_virt(i32) #1

declare dso_local i32 @invalidate_dcache_range(i64, i64) #1

declare dso_local i32 @flush_dcache_range(i64, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
