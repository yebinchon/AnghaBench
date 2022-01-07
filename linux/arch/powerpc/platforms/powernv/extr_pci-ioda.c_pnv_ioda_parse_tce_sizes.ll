; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_ioda_parse_tce_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_ioda_parse_tce_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_phb = type { %struct.pci_controller* }
%struct.pci_controller = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ibm,supported-tce-sizes\00", align 1
@SZ_4K = common dso_local global i64 0, align 8
@SZ_64K = common dso_local global i64 0, align 8
@CPU_FTR_ARCH_207S = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@SZ_16M = common dso_local global i64 0, align 8
@SZ_256M = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pnv_phb*)* @pnv_ioda_parse_tce_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pnv_ioda_parse_tce_sizes(%struct.pnv_phb* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pnv_phb*, align 8
  %4 = alloca %struct.pci_controller*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.pnv_phb* %0, %struct.pnv_phb** %3, align 8
  %11 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %12 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %11, i32 0, i32 0
  %13 = load %struct.pci_controller*, %struct.pci_controller** %12, align 8
  store %struct.pci_controller* %13, %struct.pci_controller** %4, align 8
  %14 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %15 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  store i64 0, i64* %6, align 8
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = call i32 @of_property_count_u32_elems(%struct.device_node* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %1
  %22 = load i64, i64* @SZ_4K, align 8
  %23 = load i64, i64* @SZ_64K, align 8
  %24 = or i64 %22, %23
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %26 = call i64 @cpu_has_feature(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %30 = call i64 @cpu_has_feature(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* @SZ_16M, align 8
  %34 = load i64, i64* @SZ_256M, align 8
  %35 = or i64 %33, %34
  %36 = load i64, i64* %6, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %32, %28, %21
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %2, align 8
  br label %62

40:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %57, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @of_property_read_u32_index(%struct.device_node* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47, i64* %10)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i64, i64* %10, align 8
  %53 = shl i64 1, %52
  %54 = load i64, i64* %6, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %51, %45
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %41

60:                                               ; preds = %41
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* %2, align 8
  br label %62

62:                                               ; preds = %60, %38
  %63 = load i64, i64* %2, align 8
  ret i64 %63
}

declare dso_local i32 @of_property_count_u32_elems(%struct.device_node*, i8*) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
