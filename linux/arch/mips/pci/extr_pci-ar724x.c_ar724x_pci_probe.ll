; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar724x.c_ar724x_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar724x.c_ar724x_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.ar724x_pci_controller = type { i64, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__, i8*, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32* }
%struct.TYPE_5__ = type { i8*, i8*, i32, i32, %struct.resource* }
%struct.resource = type { i32, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i32, i32, %struct.resource* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"ctrl_base\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"cfg_base\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"crp_base\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"io_base\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"PCI IO space\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"mem_base\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"PCI memory space\00", align 1
@ar724x_pci_ops = common dso_local global i32 0, align 4
@AR724X_RESET_REG_RESET_MODULE = common dso_local global i32 0, align 4
@AR724X_RESET_PCIE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"PCIe link is down\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@AR724X_PCI_CMD_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ar724x_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar724x_pci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ar724x_pci_controller*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %12, %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ar724x_pci_controller* @devm_kzalloc(i32* %15, i32 128, i32 %16)
  store %struct.ar724x_pci_controller* %17, %struct.ar724x_pci_controller** %4, align 8
  %18 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %19 = icmp ne %struct.ar724x_pci_controller* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %205

23:                                               ; preds = %13
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i8*, i8** @IORESOURCE_MEM, align 8
  %26 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %24, i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %26, %struct.resource** %5, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 1
  %29 = load %struct.resource*, %struct.resource** %5, align 8
  %30 = call i8* @devm_ioremap_resource(i32* %28, %struct.resource* %29)
  %31 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %32 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %34 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %33, i32 0, i32 7
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %40 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %39, i32 0, i32 7
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PTR_ERR(i8* %41)
  store i32 %42, i32* %2, align 4
  br label %205

43:                                               ; preds = %23
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load i8*, i8** @IORESOURCE_MEM, align 8
  %46 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %44, i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %46, %struct.resource** %5, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 1
  %49 = load %struct.resource*, %struct.resource** %5, align 8
  %50 = call i8* @devm_ioremap_resource(i32* %48, %struct.resource* %49)
  %51 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %52 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %54 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %53, i32 0, i32 6
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %60 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %59, i32 0, i32 6
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  store i32 %62, i32* %2, align 4
  br label %205

63:                                               ; preds = %43
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load i8*, i8** @IORESOURCE_MEM, align 8
  %66 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %64, i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %66, %struct.resource** %5, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 1
  %69 = load %struct.resource*, %struct.resource** %5, align 8
  %70 = call i8* @devm_ioremap_resource(i32* %68, %struct.resource* %69)
  %71 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %72 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %74 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %73, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %63
  %79 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %80 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %79, i32 0, i32 5
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %2, align 4
  br label %205

83:                                               ; preds = %63
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = call i64 @platform_get_irq(%struct.platform_device* %84, i32 0)
  %86 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %87 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %89 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %205

95:                                               ; preds = %83
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = load i8*, i8** @IORESOURCE_IO, align 8
  %98 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %96, i8* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %98, %struct.resource** %5, align 8
  %99 = load %struct.resource*, %struct.resource** %5, align 8
  %100 = icmp ne %struct.resource* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %205

104:                                              ; preds = %95
  %105 = load %struct.resource*, %struct.resource** %5, align 8
  %106 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %107 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  store %struct.resource* %105, %struct.resource** %108, align 8
  %109 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %110 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %111, align 8
  %112 = load %struct.resource*, %struct.resource** %5, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %116 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  store i32 %114, i32* %117, align 4
  %118 = load %struct.resource*, %struct.resource** %5, align 8
  %119 = getelementptr inbounds %struct.resource, %struct.resource* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %122 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 8
  %124 = load i8*, i8** @IORESOURCE_IO, align 8
  %125 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %126 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i8* %124, i8** %127, align 8
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = load i8*, i8** @IORESOURCE_MEM, align 8
  %130 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %128, i8* %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store %struct.resource* %130, %struct.resource** %5, align 8
  %131 = load %struct.resource*, %struct.resource** %5, align 8
  %132 = icmp ne %struct.resource* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %104
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %205

136:                                              ; preds = %104
  %137 = load %struct.resource*, %struct.resource** %5, align 8
  %138 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %139 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 4
  store %struct.resource* %137, %struct.resource** %140, align 8
  %141 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %142 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %143, align 8
  %144 = load %struct.resource*, %struct.resource** %5, align 8
  %145 = getelementptr inbounds %struct.resource, %struct.resource* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %148 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  store i32 %146, i32* %149, align 4
  %150 = load %struct.resource*, %struct.resource** %5, align 8
  %151 = getelementptr inbounds %struct.resource, %struct.resource* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %154 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  store i32 %152, i32* %155, align 8
  %156 = load i8*, i8** @IORESOURCE_MEM, align 8
  %157 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %158 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  store i8* %156, i8** %159, align 8
  %160 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %161 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  store i32* @ar724x_pci_ops, i32** %162, align 8
  %163 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %164 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %163, i32 0, i32 4
  %165 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %166 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store %struct.TYPE_4__* %164, %struct.TYPE_4__** %167, align 8
  %168 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %169 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %168, i32 0, i32 3
  %170 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %171 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  store %struct.TYPE_5__* %169, %struct.TYPE_5__** %172, align 8
  %173 = load i32, i32* @AR724X_RESET_REG_RESET_MODULE, align 4
  %174 = call i32 @ath79_reset_rr(i32 %173)
  %175 = load i32, i32* @AR724X_RESET_PCIE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %136
  %179 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %180 = call i32 @ar724x_pci_hw_init(%struct.ar724x_pci_controller* %179)
  br label %181

181:                                              ; preds = %178, %136
  %182 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %183 = call i32 @ar724x_pci_check_link(%struct.ar724x_pci_controller* %182)
  %184 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %185 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %187 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %181
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 1
  %193 = call i32 @dev_warn(i32* %192, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %194

194:                                              ; preds = %190, %181
  %195 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @ar724x_pci_irq_init(%struct.ar724x_pci_controller* %195, i32 %196)
  %198 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %199 = load i32, i32* @PCI_COMMAND, align 4
  %200 = load i32, i32* @AR724X_PCI_CMD_INIT, align 4
  %201 = call i32 @ar724x_pci_local_write(%struct.ar724x_pci_controller* %198, i32 %199, i32 4, i32 %200)
  %202 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %4, align 8
  %203 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %202, i32 0, i32 1
  %204 = call i32 @register_pci_controller(%struct.TYPE_6__* %203)
  store i32 0, i32* %2, align 4
  br label %205

205:                                              ; preds = %194, %133, %101, %92, %78, %58, %38, %20
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.ar724x_pci_controller* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i8*, i8*) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @ath79_reset_rr(i32) #1

declare dso_local i32 @ar724x_pci_hw_init(%struct.ar724x_pci_controller*) #1

declare dso_local i32 @ar724x_pci_check_link(%struct.ar724x_pci_controller*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @ar724x_pci_irq_init(%struct.ar724x_pci_controller*, i32) #1

declare dso_local i32 @ar724x_pci_local_write(%struct.ar724x_pci_controller*, i32, i32, i32) #1

declare dso_local i32 @register_pci_controller(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
