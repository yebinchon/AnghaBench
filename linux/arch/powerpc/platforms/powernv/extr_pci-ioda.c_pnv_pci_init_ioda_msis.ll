; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_init_ioda_msis.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_init_ioda_msis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_phb = type { i32, i8*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"ibm,opal-msi-ranges\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"msi-ranges\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"PCI %d: Failed to allocate MSI bitmap !\0A\00", align 1
@pnv_pci_ioda_msi_setup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"  Allocated bitmap for %d MSIs (base IRQ 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnv_phb*)* @pnv_pci_init_ioda_msis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_pci_init_ioda_msis(%struct.pnv_phb* %0) #0 {
  %2 = alloca %struct.pnv_phb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.pnv_phb* %0, %struct.pnv_phb** %2, align 8
  %5 = load %struct.pnv_phb*, %struct.pnv_phb** %2, align 8
  %6 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @of_get_property(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.pnv_phb*, %struct.pnv_phb** %2, align 8
  %15 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @of_get_property(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %19, i32** %4, align 8
  br label %20

20:                                               ; preds = %13, %1
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %61

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = call i8* @be32_to_cpup(i32* %25)
  %27 = load %struct.pnv_phb*, %struct.pnv_phb** %2, align 8
  %28 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = call i8* @be32_to_cpup(i32* %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %3, align 4
  %33 = load %struct.pnv_phb*, %struct.pnv_phb** %2, align 8
  %34 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %33, i32 0, i32 4
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.pnv_phb*, %struct.pnv_phb** %2, align 8
  %37 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @msi_bitmap_alloc(i32* %34, i32 %35, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %24
  %44 = load %struct.pnv_phb*, %struct.pnv_phb** %2, align 8
  %45 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %61

50:                                               ; preds = %24
  %51 = load i32, i32* @pnv_pci_ioda_msi_setup, align 4
  %52 = load %struct.pnv_phb*, %struct.pnv_phb** %2, align 8
  %53 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.pnv_phb*, %struct.pnv_phb** %2, align 8
  %55 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.pnv_phb*, %struct.pnv_phb** %2, align 8
  %58 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %56, i8* %59)
  br label %61

61:                                               ; preds = %50, %43, %23
  ret void
}

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i8* @be32_to_cpup(i32*) #1

declare dso_local i64 @msi_bitmap_alloc(i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
