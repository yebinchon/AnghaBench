; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_pci-dma.c_arch_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_pci-dma.c_arch_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pcxl2 = common dso_local global i64 0, align 8
@pcxl = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_dma_free(%struct.device* %0, i64 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @get_order(i64 %12)
  store i32 %13, i32* %11, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %15 = load i64, i64* @pcxl2, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %19 = load i64, i64* @pcxl, align 8
  %20 = icmp ne i64 %18, %19
  br label %21

21:                                               ; preds = %17, %5
  %22 = phi i1 [ false, %5 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON_ONCE(i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = add nsw i32 %25, %26
  %28 = shl i32 1, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @unmap_uncached_pages(i64 %31, i64 %32)
  %34 = load i8*, i8** %8, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @pcxl_free_range(i64 %35, i64 %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @__va(i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @free_pages(i64 %39, i32 %40)
  ret void
}

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @unmap_uncached_pages(i64, i64) #1

declare dso_local i32 @pcxl_free_range(i64, i64) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i64 @__va(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
