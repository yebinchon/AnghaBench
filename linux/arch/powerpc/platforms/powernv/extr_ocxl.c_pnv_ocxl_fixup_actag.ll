; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_ocxl.c_pnv_ocxl_fixup_actag.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_ocxl.c_pnv_ocxl_fixup_actag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_controller = type { %struct.pnv_phb* }
%struct.pnv_phb = type { i64 }
%struct.npu_link = type { i64* }

@powernv = common dso_local global i32 0, align 4
@PNV_PHB_NPU_OCAPI = common dso_local global i64 0, align 8
@links_list_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"couldn't update actag information\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"couldn't find AFU information\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"total actags for function: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pnv_ocxl_fixup_actag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_ocxl_fixup_actag(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_controller*, align 8
  %4 = alloca %struct.pnv_phb*, align 8
  %5 = alloca %struct.npu_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pci_controller* @pci_bus_to_host(i32 %12)
  store %struct.pci_controller* %13, %struct.pci_controller** %3, align 8
  %14 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %15 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %14, i32 0, i32 0
  %16 = load %struct.pnv_phb*, %struct.pnv_phb** %15, align 8
  store %struct.pnv_phb* %16, %struct.pnv_phb** %4, align 8
  store i32 -1, i32* %7, align 4
  %17 = load i32, i32* @powernv, align 4
  %18 = call i32 @machine_is(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %98

21:                                               ; preds = %1
  %22 = load %struct.pnv_phb*, %struct.pnv_phb** %4, align 8
  %23 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PNV_PHB_NPU_OCAPI, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %98

28:                                               ; preds = %21
  %29 = call i32 @mutex_lock(i32* @links_list_lock)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = call %struct.npu_link* @find_link(%struct.pci_dev* %30)
  store %struct.npu_link* %31, %struct.npu_link** %5, align 8
  %32 = load %struct.npu_link*, %struct.npu_link** %5, align 8
  %33 = icmp ne %struct.npu_link* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 1
  %37 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @mutex_unlock(i32* @links_list_lock)
  br label %98

39:                                               ; preds = %28
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = call i32 @get_max_afu_index(%struct.pci_dev* %40, i32* %7)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 1
  %47 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.npu_link*, %struct.npu_link** %5, align 8
  %50 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @PCI_FUNC(i32 %54)
  %56 = getelementptr inbounds i64, i64* %51, i64 %55
  store i64 0, i64* %56, align 8
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %81, %48
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @get_actag_count(%struct.pci_dev* %62, i32 %63, i32* %9)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %81

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.npu_link*, %struct.npu_link** %5, align 8
  %72 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @PCI_FUNC(i32 %76)
  %78 = getelementptr inbounds i64, i64* %73, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %70
  store i64 %80, i64* %78, align 8
  br label %81

81:                                               ; preds = %68, %67
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %57

84:                                               ; preds = %57
  %85 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 1
  %87 = load %struct.npu_link*, %struct.npu_link** %5, align 8
  %88 = getelementptr inbounds %struct.npu_link, %struct.npu_link* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @PCI_FUNC(i32 %92)
  %94 = getelementptr inbounds i64, i64* %89, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %95)
  %97 = call i32 @mutex_unlock(i32* @links_list_lock)
  br label %98

98:                                               ; preds = %84, %34, %27, %20
  ret void
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

declare dso_local i32 @machine_is(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.npu_link* @find_link(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @get_max_afu_index(%struct.pci_dev*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i64 @PCI_FUNC(i32) #1

declare dso_local i32 @get_actag_count(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
