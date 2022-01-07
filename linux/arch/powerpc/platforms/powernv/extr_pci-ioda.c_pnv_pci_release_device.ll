; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_release_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_release_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }
%struct.pci_controller = type { %struct.pnv_phb* }
%struct.pnv_phb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pnv_ioda_pe* }
%struct.pnv_ioda_pe = type { i64 }
%struct.pci_dn = type { i64 }

@IODA_INVALID_PE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pnv_pci_release_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_pci_release_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_controller*, align 8
  %4 = alloca %struct.pnv_phb*, align 8
  %5 = alloca %struct.pci_dn*, align 8
  %6 = alloca %struct.pnv_ioda_pe*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.pci_controller* @pci_bus_to_host(i32 %9)
  store %struct.pci_controller* %10, %struct.pci_controller** %3, align 8
  %11 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %12 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %11, i32 0, i32 0
  %13 = load %struct.pnv_phb*, %struct.pnv_phb** %12, align 8
  store %struct.pnv_phb* %13, %struct.pnv_phb** %4, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = call %struct.pci_dn* @pci_get_pdn(%struct.pci_dev* %14)
  store %struct.pci_dn* %15, %struct.pci_dn** %5, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %57

21:                                               ; preds = %1
  %22 = load %struct.pci_dn*, %struct.pci_dn** %5, align 8
  %23 = icmp ne %struct.pci_dn* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.pci_dn*, %struct.pci_dn** %5, align 8
  %26 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IODA_INVALID_PE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %21
  br label %57

31:                                               ; preds = %24
  %32 = load %struct.pnv_phb*, %struct.pnv_phb** %4, align 8
  %33 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %34, align 8
  %36 = load %struct.pci_dn*, %struct.pci_dn** %5, align 8
  %37 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %35, i64 %38
  store %struct.pnv_ioda_pe* %39, %struct.pnv_ioda_pe** %6, align 8
  %40 = load i64, i64* @IODA_INVALID_PE, align 8
  %41 = load %struct.pci_dn*, %struct.pci_dn** %5, align 8
  %42 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %6, align 8
  %44 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = icmp slt i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %6, align 8
  %51 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %31
  %55 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %6, align 8
  %56 = call i32 @pnv_ioda_release_pe(%struct.pnv_ioda_pe* %55)
  br label %57

57:                                               ; preds = %20, %30, %54, %31
  ret void
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

declare dso_local %struct.pci_dn* @pci_get_pdn(%struct.pci_dev*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pnv_ioda_release_pe(%struct.pnv_ioda_pe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
