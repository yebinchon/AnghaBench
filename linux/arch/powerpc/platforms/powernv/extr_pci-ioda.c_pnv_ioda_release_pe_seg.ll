; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_ioda_release_pe_seg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_ioda_release_pe_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_ioda_pe = type { %struct.pnv_phb* }
%struct.pnv_phb = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PNV_PHB_IODA1 = common dso_local global i64 0, align 8
@OPAL_IO_WINDOW_TYPE = common dso_local global i32 0, align 4
@OPAL_M32_WINDOW_TYPE = common dso_local global i32 0, align 4
@OPAL_M64_WINDOW_TYPE = common dso_local global i32 0, align 4
@PNV_PHB_IODA2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnv_ioda_pe*)* @pnv_ioda_release_pe_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_ioda_release_pe_seg(%struct.pnv_ioda_pe* %0) #0 {
  %2 = alloca %struct.pnv_ioda_pe*, align 8
  %3 = alloca %struct.pnv_phb*, align 8
  store %struct.pnv_ioda_pe* %0, %struct.pnv_ioda_pe** %2, align 8
  %4 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %5 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %4, i32 0, i32 0
  %6 = load %struct.pnv_phb*, %struct.pnv_phb** %5, align 8
  store %struct.pnv_phb* %6, %struct.pnv_phb** %3, align 8
  %7 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %8 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PNV_PHB_IODA1, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %14 = load i32, i32* @OPAL_IO_WINDOW_TYPE, align 4
  %15 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %16 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pnv_ioda_free_pe_seg(%struct.pnv_ioda_pe* %13, i32 %14, i32 %18)
  %20 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %21 = load i32, i32* @OPAL_M32_WINDOW_TYPE, align 4
  %22 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %23 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pnv_ioda_free_pe_seg(%struct.pnv_ioda_pe* %20, i32 %21, i32 %25)
  %27 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %28 = load i32, i32* @OPAL_M64_WINDOW_TYPE, align 4
  %29 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %30 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pnv_ioda_free_pe_seg(%struct.pnv_ioda_pe* %27, i32 %28, i32 %32)
  br label %49

34:                                               ; preds = %1
  %35 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %36 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PNV_PHB_IODA2, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %42 = load i32, i32* @OPAL_M32_WINDOW_TYPE, align 4
  %43 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %44 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pnv_ioda_free_pe_seg(%struct.pnv_ioda_pe* %41, i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %40, %34
  br label %49

49:                                               ; preds = %48, %12
  ret void
}

declare dso_local i32 @pnv_ioda_free_pe_seg(%struct.pnv_ioda_pe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
