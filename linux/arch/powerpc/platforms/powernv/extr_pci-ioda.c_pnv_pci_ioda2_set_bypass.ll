; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda2_set_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda2_set_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_ioda_pe = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%sabling 64-bit DMA bypass\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"OPAL error %lld configuring bypass window\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnv_ioda_pe*, i32)* @pnv_pci_ioda2_set_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_pci_ioda2_set_bypass(%struct.pnv_ioda_pe* %0, i32 %1) #0 {
  %3 = alloca %struct.pnv_ioda_pe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pnv_ioda_pe* %0, %struct.pnv_ioda_pe** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %3, align 8
  %9 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 %10, 1
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 @pe_info(%struct.pnv_ioda_pe* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = call i32 (...) @memblock_end_of_DRAM()
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @roundup_pow_of_two(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %3, align 8
  %26 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %3, align 8
  %31 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %3, align 8
  %35 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @opal_pci_map_pe_dma_window_real(i32 %29, i32 %32, i32 %33, i32 %36, i32 %37)
  store i64 %38, i64* %6, align 8
  br label %53

39:                                               ; preds = %2
  %40 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %3, align 8
  %41 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %3, align 8
  %46 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %3, align 8
  %50 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @opal_pci_map_pe_dma_window_real(i32 %44, i32 %47, i32 %48, i32 %51, i32 0)
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %39, %21
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %3, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @pe_err(%struct.pnv_ioda_pe* %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  br label %64

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %3, align 8
  %63 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %56
  ret void
}

declare dso_local i32 @pe_info(%struct.pnv_ioda_pe*, i8*, i8*) #1

declare dso_local i32 @memblock_end_of_DRAM(...) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i64 @opal_pci_map_pe_dma_window_real(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pe_err(%struct.pnv_ioda_pe*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
