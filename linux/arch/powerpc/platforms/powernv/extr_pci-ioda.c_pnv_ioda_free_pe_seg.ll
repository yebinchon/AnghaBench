; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_ioda_free_pe_seg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_ioda_free_pe_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_ioda_pe = type { i32, %struct.pnv_phb* }
%struct.pnv_phb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@OPAL_M64_WINDOW_TYPE = common dso_local global i16 0, align 2
@PNV_IODA1_M64_SEGS = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Error %lld unmapping (%d) segment#%d\0A\00", align 1
@IODA_INVALID_PE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnv_ioda_pe*, i16, i32*)* @pnv_ioda_free_pe_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_ioda_free_pe_seg(%struct.pnv_ioda_pe* %0, i16 zeroext %1, i32* %2) #0 {
  %4 = alloca %struct.pnv_ioda_pe*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pnv_phb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pnv_ioda_pe* %0, %struct.pnv_ioda_pe** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32* %2, i32** %6, align 8
  %10 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %11 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %10, i32 0, i32 1
  %12 = load %struct.pnv_phb*, %struct.pnv_phb** %11, align 8
  store %struct.pnv_phb* %12, %struct.pnv_phb** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %80, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.pnv_phb*, %struct.pnv_phb** %7, align 8
  %16 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %83

20:                                               ; preds = %13
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %27 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %80

31:                                               ; preds = %20
  %32 = load i16, i16* %5, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @OPAL_M64_WINDOW_TYPE, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load %struct.pnv_phb*, %struct.pnv_phb** %7, align 8
  %39 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pnv_phb*, %struct.pnv_phb** %7, align 8
  %42 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i16, i16* %5, align 2
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @PNV_IODA1_M64_SEGS, align 4
  %48 = sdiv i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @PNV_IODA1_M64_SEGS, align 4
  %51 = srem i32 %49, %50
  %52 = call i64 @opal_pci_map_pe_mmio_window(i32 %40, i32 %44, i16 zeroext %45, i32 %48, i32 %51)
  store i64 %52, i64* %9, align 8
  br label %64

53:                                               ; preds = %31
  %54 = load %struct.pnv_phb*, %struct.pnv_phb** %7, align 8
  %55 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pnv_phb*, %struct.pnv_phb** %7, align 8
  %58 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i16, i16* %5, align 2
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @opal_pci_map_pe_mmio_window(i32 %56, i32 %60, i16 zeroext %61, i32 0, i32 %62)
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %53, %37
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @OPAL_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i16, i16* %5, align 2
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @pe_warn(%struct.pnv_ioda_pe* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %70, i16 zeroext %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %64
  %75 = load i32, i32* @IODA_INVALID_PE, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %30
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %13

83:                                               ; preds = %13
  ret void
}

declare dso_local i64 @opal_pci_map_pe_mmio_window(i32, i32, i16 zeroext, i32, i32) #1

declare dso_local i32 @pe_warn(%struct.pnv_ioda_pe*, i8*, i64, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
