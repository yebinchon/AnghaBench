; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar2315.c_ar2315_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar2315.c_ar2315_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ar2315_pci_ctrl = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32* }
%struct.TYPE_5__ = type { i8*, i32, i64, i64 }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, %struct.resource* }
%struct.resource = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ar2315-pci-ctrl\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ar2315-pci-ext\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"AR2315 PCI mem space\00", align 1
@AR2315_PCI_CFG_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to remap PCI config space\0A\00", align 1
@AR2315_PCI_MISC_CONFIG = common dso_local global i32 0, align 4
@AR2315_PCIMISC_RST_MODE = common dso_local global i32 0, align 4
@AR2315_PCIRST_LOW = common dso_local global i32 0, align 4
@AR2315_PCIRST_HIGH = common dso_local global i32 0, align 4
@AR2315_PCICACHE_DIS = common dso_local global i32 0, align 4
@AR2315_PCI_UNCACHE_CFG = common dso_local global i32 0, align 4
@AR2315_PCI_IRQ_COUNT = common dso_local global i32 0, align 4
@ar2315_pci_irq_domain_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to add IRQ domain\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"AR2315 IO space\00", align 1
@IORESOURCE_IO = common dso_local global i32 0, align 4
@ar2315_pci_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"register PCI controller\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ar2315_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar2315_pci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ar2315_pci_ctrl*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ar2315_pci_ctrl* @devm_kzalloc(%struct.device* %11, i32 112, i32 %12)
  store %struct.ar2315_pci_ctrl* %13, %struct.ar2315_pci_ctrl** %4, align 8
  %14 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %15 = icmp ne %struct.ar2315_pci_ctrl* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %176

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @platform_get_irq(%struct.platform_device* %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %176

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %30 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %31, i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %33, %struct.resource** %6, align 8
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.resource*, %struct.resource** %6, align 8
  %36 = call i32 @devm_ioremap_resource(%struct.device* %34, %struct.resource* %35)
  %37 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %38 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %40 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %27
  %45 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %46 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %176

49:                                               ; preds = %27
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load i32, i32* @IORESOURCE_MEM, align 4
  %52 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %50, i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %52, %struct.resource** %6, align 8
  %53 = load %struct.resource*, %struct.resource** %6, align 8
  %54 = icmp ne %struct.resource* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %176

58:                                               ; preds = %49
  %59 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %60 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %61, align 8
  %62 = load %struct.resource*, %struct.resource** %6, align 8
  %63 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %64 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  store %struct.resource* %62, %struct.resource** %65, align 8
  %66 = load %struct.resource*, %struct.resource** %6, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %70 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 8
  %72 = load %struct.resource*, %struct.resource** %6, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %76 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @IORESOURCE_MEM, align 4
  %79 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %80 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 8
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = load %struct.resource*, %struct.resource** %6, align 8
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @AR2315_PCI_CFG_SIZE, align 4
  %87 = call i32 @devm_ioremap_nocache(%struct.device* %82, i32 %85, i32 %86)
  %88 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %89 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %91 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %58
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %176

99:                                               ; preds = %58
  %100 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %101 = load i32, i32* @AR2315_PCI_MISC_CONFIG, align 4
  %102 = load i32, i32* @AR2315_PCIMISC_RST_MODE, align 4
  %103 = load i32, i32* @AR2315_PCIRST_LOW, align 4
  %104 = call i32 @ar2315_pci_reg_mask(%struct.ar2315_pci_ctrl* %100, i32 %101, i32 %102, i32 %103)
  %105 = call i32 @msleep(i32 100)
  %106 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %107 = load i32, i32* @AR2315_PCI_MISC_CONFIG, align 4
  %108 = load i32, i32* @AR2315_PCIMISC_RST_MODE, align 4
  %109 = load i32, i32* @AR2315_PCIRST_HIGH, align 4
  %110 = load i32, i32* @AR2315_PCICACHE_DIS, align 4
  %111 = or i32 %109, %110
  %112 = or i32 %111, 8
  %113 = call i32 @ar2315_pci_reg_mask(%struct.ar2315_pci_ctrl* %106, i32 %107, i32 %108, i32 %112)
  %114 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %115 = load i32, i32* @AR2315_PCI_UNCACHE_CFG, align 4
  %116 = call i32 @ar2315_pci_reg_write(%struct.ar2315_pci_ctrl* %114, i32 %115, i32 -2147483586)
  %117 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %118 = load i32, i32* @AR2315_PCI_UNCACHE_CFG, align 4
  %119 = call i32 @ar2315_pci_reg_read(%struct.ar2315_pci_ctrl* %117, i32 %118)
  %120 = call i32 @msleep(i32 500)
  %121 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %122 = call i32 @ar2315_pci_host_setup(%struct.ar2315_pci_ctrl* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %99
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %2, align 4
  br label %176

127:                                              ; preds = %99
  %128 = load i32, i32* @AR2315_PCI_IRQ_COUNT, align 4
  %129 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %130 = call i32 @irq_domain_add_linear(i32* null, i32 %128, i32* @ar2315_pci_irq_domain_ops, %struct.ar2315_pci_ctrl* %129)
  %131 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %132 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %134 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %127
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = call i32 @dev_err(%struct.device* %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %176

142:                                              ; preds = %127
  %143 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %144 = call i32 @ar2315_pci_irq_init(%struct.ar2315_pci_ctrl* %143)
  %145 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %146 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %147, align 8
  %148 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %149 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  store i64 0, i64* %150, align 8
  %151 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %152 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  store i64 0, i64* %153, align 8
  %154 = load i32, i32* @IORESOURCE_IO, align 4
  %155 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %156 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  store i32 %154, i32* %157, align 8
  %158 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %159 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  store i32* @ar2315_pci_ops, i32** %160, align 8
  %161 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %162 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %161, i32 0, i32 3
  %163 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %164 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  store %struct.TYPE_4__* %162, %struct.TYPE_4__** %165, align 8
  %166 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %167 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %166, i32 0, i32 2
  %168 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %169 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  store %struct.TYPE_5__* %167, %struct.TYPE_5__** %170, align 8
  %171 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %4, align 8
  %172 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %171, i32 0, i32 1
  %173 = call i32 @register_pci_controller(%struct.TYPE_6__* %172)
  %174 = load %struct.device*, %struct.device** %5, align 8
  %175 = call i32 @dev_info(%struct.device* %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %142, %137, %125, %94, %55, %44, %24, %16
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.ar2315_pci_ctrl* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_ioremap_nocache(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @ar2315_pci_reg_mask(%struct.ar2315_pci_ctrl*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ar2315_pci_reg_write(%struct.ar2315_pci_ctrl*, i32, i32) #1

declare dso_local i32 @ar2315_pci_reg_read(%struct.ar2315_pci_ctrl*, i32) #1

declare dso_local i32 @ar2315_pci_host_setup(%struct.ar2315_pci_ctrl*) #1

declare dso_local i32 @irq_domain_add_linear(i32*, i32, i32*, %struct.ar2315_pci_ctrl*) #1

declare dso_local i32 @ar2315_pci_irq_init(%struct.ar2315_pci_ctrl*) #1

declare dso_local i32 @register_pci_controller(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
