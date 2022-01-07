; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda_msi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda_msi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_phb = type { i32, i32 }
%struct.pci_dev = type { i64 }
%struct.msi_msg = type { i32, i32, i8* }
%struct.pnv_ioda_pe = type { i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: OPAL error %d setting XIVE %d PE\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: OPAL error %d getting 64-bit MSI data\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%s: OPAL error %d getting 32-bit MSI data\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"%s: %s-bit MSI on hwirq %x (xive #%d), address=%x_%08x data=%x PE# %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnv_phb*, %struct.pci_dev*, i32, i32, i32, %struct.msi_msg*)* @pnv_pci_ioda_msi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_pci_ioda_msi_setup(%struct.pnv_phb* %0, %struct.pci_dev* %1, i32 %2, i32 %3, i32 %4, %struct.msi_msg* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pnv_phb*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.msi_msg*, align 8
  %14 = alloca %struct.pnv_ioda_pe*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.pnv_phb* %0, %struct.pnv_phb** %8, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.msi_msg* %5, %struct.msi_msg** %13, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %21 = call %struct.pnv_ioda_pe* @pnv_ioda_get_pe(%struct.pci_dev* %20)
  store %struct.pnv_ioda_pe* %21, %struct.pnv_ioda_pe** %14, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.pnv_phb*, %struct.pnv_phb** %8, align 8
  %24 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub i32 %22, %25
  store i32 %26, i32* %15, align 4
  %27 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %14, align 8
  %28 = icmp eq %struct.pnv_ioda_pe* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %152

32:                                               ; preds = %6
  %33 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %14, align 8
  %34 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ENXIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %152

40:                                               ; preds = %32
  %41 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %45, %40
  %47 = load %struct.pnv_phb*, %struct.pnv_phb** %8, align 8
  %48 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %14, align 8
  %51 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @opal_pci_set_xive_pe(i32 %49, i32 %52, i32 %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %59 = call i32 @pci_name(%struct.pci_dev* %58)
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %152

65:                                               ; preds = %46
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %65
  %69 = load %struct.pnv_phb*, %struct.pnv_phb** %8, align 8
  %70 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %14, align 8
  %73 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @opal_get_msi_64(i32 %71, i64 %74, i32 %75, i32 1, i32* %18, i32* %16)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %68
  %80 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %81 = call i32 @pci_name(%struct.pci_dev* %80)
  %82 = load i32, i32* %17, align 4
  %83 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %152

86:                                               ; preds = %68
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @be64_to_cpu(i32 %87)
  %89 = ashr i32 %88, 32
  %90 = load %struct.msi_msg*, %struct.msi_msg** %13, align 8
  %91 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %18, align 4
  %93 = call i32 @be64_to_cpu(i32 %92)
  %94 = sext i32 %93 to i64
  %95 = and i64 %94, 4294967295
  %96 = trunc i64 %95 to i32
  %97 = load %struct.msi_msg*, %struct.msi_msg** %13, align 8
  %98 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %125

99:                                               ; preds = %65
  %100 = load %struct.pnv_phb*, %struct.pnv_phb** %8, align 8
  %101 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %14, align 8
  %104 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @opal_get_msi_32(i32 %102, i64 %105, i32 %106, i32 1, i32* %19, i32* %16)
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %99
  %111 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %112 = call i32 @pci_name(%struct.pci_dev* %111)
  %113 = load i32, i32* %17, align 4
  %114 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %7, align 4
  br label %152

117:                                              ; preds = %99
  %118 = load %struct.msi_msg*, %struct.msi_msg** %13, align 8
  %119 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  %120 = load i32, i32* %19, align 4
  %121 = call i8* @be32_to_cpu(i32 %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.msi_msg*, %struct.msi_msg** %13, align 8
  %124 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %117, %86
  %126 = load i32, i32* %16, align 4
  %127 = call i8* @be32_to_cpu(i32 %126)
  %128 = load %struct.msi_msg*, %struct.msi_msg** %13, align 8
  %129 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = load %struct.pnv_phb*, %struct.pnv_phb** %8, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @pnv_set_msi_irq_chip(%struct.pnv_phb* %130, i32 %131)
  %133 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %134 = call i32 @pci_name(%struct.pci_dev* %133)
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.msi_msg*, %struct.msi_msg** %13, align 8
  %142 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.msi_msg*, %struct.msi_msg** %13, align 8
  %145 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %16, align 4
  %148 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %14, align 8
  %149 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @pr_devel(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %134, i8* %138, i32 %139, i32 %140, i32 %143, i32 %146, i32 %147, i32 %150)
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %125, %110, %79, %57, %37, %29
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local %struct.pnv_ioda_pe* @pnv_ioda_get_pe(%struct.pci_dev*) #1

declare dso_local i32 @opal_pci_set_xive_pe(i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, ...) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @opal_get_msi_64(i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @opal_get_msi_32(i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @pnv_set_msi_irq_chip(%struct.pnv_phb*, i32) #1

declare dso_local i32 @pr_devel(i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
