; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xtalk-bridge.c_bridge_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xtalk-bridge.c_bridge_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.xtalk_bridge_platform_data = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.bridge_controller = type { i32, i32, i32*, %struct.bridge_regs*, i32, %struct.TYPE_5__, %struct.irq_domain* }
%struct.bridge_regs = type { i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, i64 }
%struct.irq_domain = type { i32 }
%struct.pci_host_bridge = type { i32, i32, i32, i32, i32*, i64, %struct.bridge_controller*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.fwnode_handle = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"BRIDGE\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@bridge_domain_ops = common dso_local global i32 0, align 4
@PCI_PROBE_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Bridge PCI busn\00", align 1
@IORESOURCE_BUS = common dso_local global i32 0, align 4
@PCI64_ATTR_BAR = common dso_local global i32 0, align 4
@b_int_rst_stat = common dso_local global i32 0, align 4
@BRIDGE_IRR_ALL_CLR = common dso_local global i32 0, align 4
@b_int_device = common dso_local global i32 0, align 4
@b_wid_control = common dso_local global i32 0, align 4
@BRIDGE_CTRL_IO_SWAP = common dso_local global i32 0, align 4
@BRIDGE_CTRL_MEM_SWAP = common dso_local global i32 0, align 4
@BRIDGE_CTRL_PAGE_SIZE = common dso_local global i32 0, align 4
@b_wid_int_upper = common dso_local global i32 0, align 4
@b_wid_int_lower = common dso_local global i32 0, align 4
@b_dir_map = common dso_local global i32 0, align 4
@b_int_enable = common dso_local global i32 0, align 4
@b_device = common dso_local global %struct.TYPE_6__* null, align 8
@BRIDGE_DEV_SWAP_DIR = common dso_local global i32 0, align 4
@b_wid_tflush = common dso_local global i32 0, align 4
@bridge_pci_ops = common dso_local global i32 0, align 4
@bridge_map_irq = common dso_local global i32 0, align 4
@pci_common_swizzle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bridge_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xtalk_bridge_platform_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.bridge_controller*, align 8
  %7 = alloca %struct.pci_host_bridge*, align 8
  %8 = alloca %struct.irq_domain*, align 8
  %9 = alloca %struct.irq_domain*, align 8
  %10 = alloca %struct.fwnode_handle*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.xtalk_bridge_platform_data* @dev_get_platdata(%struct.device* %14)
  store %struct.xtalk_bridge_platform_data* %15, %struct.xtalk_bridge_platform_data** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = call %struct.irq_domain* (...) @irq_get_default_host()
  store %struct.irq_domain* %18, %struct.irq_domain** %9, align 8
  %19 = load %struct.irq_domain*, %struct.irq_domain** %9, align 8
  %20 = icmp ne %struct.irq_domain* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %240

24:                                               ; preds = %1
  %25 = call %struct.fwnode_handle* @irq_domain_alloc_named_fwnode(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.fwnode_handle* %25, %struct.fwnode_handle** %10, align 8
  %26 = load %struct.fwnode_handle*, %struct.fwnode_handle** %10, align 8
  %27 = icmp ne %struct.fwnode_handle* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %240

31:                                               ; preds = %24
  %32 = load %struct.irq_domain*, %struct.irq_domain** %9, align 8
  %33 = load %struct.fwnode_handle*, %struct.fwnode_handle** %10, align 8
  %34 = call %struct.irq_domain* @irq_domain_create_hierarchy(%struct.irq_domain* %32, i32 0, i32 8, %struct.fwnode_handle* %33, i32* @bridge_domain_ops, i32* null)
  store %struct.irq_domain* %34, %struct.irq_domain** %8, align 8
  %35 = load %struct.fwnode_handle*, %struct.fwnode_handle** %10, align 8
  %36 = call i32 @irq_domain_free_fwnode(%struct.fwnode_handle* %35)
  %37 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %38 = icmp ne %struct.irq_domain* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %240

42:                                               ; preds = %31
  %43 = load i32, i32* @PCI_PROBE_ONLY, align 4
  %44 = call i32 @pci_set_flags(i32 %43)
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device* %45, i32 64)
  store %struct.pci_host_bridge* %46, %struct.pci_host_bridge** %7, align 8
  %47 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %48 = icmp ne %struct.pci_host_bridge* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %236

52:                                               ; preds = %42
  %53 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %54 = call %struct.bridge_controller* @pci_host_bridge_priv(%struct.pci_host_bridge* %53)
  store %struct.bridge_controller* %54, %struct.bridge_controller** %6, align 8
  %55 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %56 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %57, align 8
  %58 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %59 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %62 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32 255, i32* %63, align 8
  %64 = load i32, i32* @IORESOURCE_BUS, align 4
  %65 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %66 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 4
  %68 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %69 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %70 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %69, i32 0, i32 6
  store %struct.irq_domain* %68, %struct.irq_domain** %70, align 8
  %71 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %72 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %71, i32 0, i32 0
  %73 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %4, align 8
  %74 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %73, i32 0, i32 7
  %75 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %4, align 8
  %76 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pci_add_resource_offset(i32* %72, i32* %74, i32 %77)
  %79 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %80 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %79, i32 0, i32 0
  %81 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %4, align 8
  %82 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %81, i32 0, i32 5
  %83 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %4, align 8
  %84 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pci_add_resource_offset(i32* %80, i32* %82, i32 %85)
  %87 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %88 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %87, i32 0, i32 0
  %89 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %90 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %89, i32 0, i32 5
  %91 = call i32 @pci_add_resource(i32* %88, %struct.TYPE_5__* %90)
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %94 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %93, i32 0, i32 0
  %95 = call i32 @devm_request_pci_bus_resources(%struct.device* %92, i32* %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %52
  br label %232

99:                                               ; preds = %52
  %100 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %4, align 8
  %101 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %104 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %4, align 8
  %106 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = shl i32 %107, 60
  %109 = load i32, i32* @PCI64_ATTR_BAR, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %112 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %4, align 8
  %114 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to %struct.bridge_regs*
  %117 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %118 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %117, i32 0, i32 3
  store %struct.bridge_regs* %116, %struct.bridge_regs** %118, align 8
  %119 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %4, align 8
  %120 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %123 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %125 = load i32, i32* @b_int_rst_stat, align 4
  %126 = load i32, i32* @BRIDGE_IRR_ALL_CLR, align 4
  %127 = call i32 @bridge_write(%struct.bridge_controller* %124, i32 %125, i32 %126)
  %128 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %129 = load i32, i32* @b_int_device, align 4
  %130 = call i32 @bridge_write(%struct.bridge_controller* %128, i32 %129, i32 0)
  %131 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %132 = load i32, i32* @b_wid_control, align 4
  %133 = load i32, i32* @BRIDGE_CTRL_IO_SWAP, align 4
  %134 = load i32, i32* @BRIDGE_CTRL_MEM_SWAP, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @bridge_clr(%struct.bridge_controller* %131, i32 %132, i32 %135)
  %137 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %138 = load i32, i32* @b_wid_control, align 4
  %139 = load i32, i32* @BRIDGE_CTRL_PAGE_SIZE, align 4
  %140 = call i32 @bridge_set(%struct.bridge_controller* %137, i32 %138, i32 %139)
  %141 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %142 = load i32, i32* @b_wid_int_upper, align 4
  %143 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %144 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = ashr i32 %145, 32
  %147 = and i32 %146, 65535
  %148 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %4, align 8
  %149 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = shl i32 %150, 16
  %152 = or i32 %147, %151
  %153 = call i32 @bridge_write(%struct.bridge_controller* %141, i32 %142, i32 %152)
  %154 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %155 = load i32, i32* @b_wid_int_lower, align 4
  %156 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %157 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @bridge_write(%struct.bridge_controller* %154, i32 %155, i32 %158)
  %160 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %161 = load i32, i32* @b_dir_map, align 4
  %162 = load %struct.xtalk_bridge_platform_data*, %struct.xtalk_bridge_platform_data** %4, align 8
  %163 = getelementptr inbounds %struct.xtalk_bridge_platform_data, %struct.xtalk_bridge_platform_data* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = shl i32 %164, 20
  %166 = call i32 @bridge_write(%struct.bridge_controller* %160, i32 %161, i32 %165)
  %167 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %168 = load i32, i32* @b_int_enable, align 4
  %169 = call i32 @bridge_write(%struct.bridge_controller* %167, i32 %168, i32 0)
  store i32 0, i32* %11, align 4
  br label %170

170:                                              ; preds = %189, %99
  %171 = load i32, i32* %11, align 4
  %172 = icmp slt i32 %171, 8
  br i1 %172, label %173, label %192

173:                                              ; preds = %170
  %174 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** @b_device, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @BRIDGE_DEV_SWAP_DIR, align 4
  %182 = call i32 @bridge_set(%struct.bridge_controller* %174, i32 %180, i32 %181)
  %183 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %184 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 -1, i32* %188, align 4
  br label %189

189:                                              ; preds = %173
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %11, align 4
  br label %170

192:                                              ; preds = %170
  %193 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %194 = load i32, i32* @b_wid_tflush, align 4
  %195 = call i32 @bridge_read(%struct.bridge_controller* %193, i32 %194)
  %196 = load %struct.device*, %struct.device** %5, align 8
  %197 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %198 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %197, i32 0, i32 7
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  store %struct.device* %196, %struct.device** %199, align 8
  %200 = load %struct.bridge_controller*, %struct.bridge_controller** %6, align 8
  %201 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %202 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %201, i32 0, i32 6
  store %struct.bridge_controller* %200, %struct.bridge_controller** %202, align 8
  %203 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %204 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %203, i32 0, i32 5
  store i64 0, i64* %204, align 8
  %205 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %206 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %205, i32 0, i32 4
  store i32* @bridge_pci_ops, i32** %206, align 8
  %207 = load i32, i32* @bridge_map_irq, align 4
  %208 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %209 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* @pci_common_swizzle, align 4
  %211 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %212 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %214 = call i32 @pci_scan_root_bus_bridge(%struct.pci_host_bridge* %213)
  store i32 %214, i32* %12, align 4
  %215 = load i32, i32* %12, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %192
  br label %232

218:                                              ; preds = %192
  %219 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %220 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @pci_bus_claim_resources(i32 %221)
  %223 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %224 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @pci_bus_add_devices(i32 %225)
  %227 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %228 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %229 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @platform_set_drvdata(%struct.platform_device* %227, i32 %230)
  store i32 0, i32* %2, align 4
  br label %240

232:                                              ; preds = %217, %98
  %233 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %234 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %233, i32 0, i32 0
  %235 = call i32 @pci_free_resource_list(i32* %234)
  br label %236

236:                                              ; preds = %232, %49
  %237 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %238 = call i32 @irq_domain_remove(%struct.irq_domain* %237)
  %239 = load i32, i32* %12, align 4
  store i32 %239, i32* %2, align 4
  br label %240

240:                                              ; preds = %236, %218, %39, %28, %21
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local %struct.xtalk_bridge_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.irq_domain* @irq_get_default_host(...) #1

declare dso_local %struct.fwnode_handle* @irq_domain_alloc_named_fwnode(i8*) #1

declare dso_local %struct.irq_domain* @irq_domain_create_hierarchy(%struct.irq_domain*, i32, i32, %struct.fwnode_handle*, i32*, i32*) #1

declare dso_local i32 @irq_domain_free_fwnode(%struct.fwnode_handle*) #1

declare dso_local i32 @pci_set_flags(i32) #1

declare dso_local %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device*, i32) #1

declare dso_local %struct.bridge_controller* @pci_host_bridge_priv(%struct.pci_host_bridge*) #1

declare dso_local i32 @pci_add_resource_offset(i32*, i32*, i32) #1

declare dso_local i32 @pci_add_resource(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @devm_request_pci_bus_resources(%struct.device*, i32*) #1

declare dso_local i32 @bridge_write(%struct.bridge_controller*, i32, i32) #1

declare dso_local i32 @bridge_clr(%struct.bridge_controller*, i32, i32) #1

declare dso_local i32 @bridge_set(%struct.bridge_controller*, i32, i32) #1

declare dso_local i32 @bridge_read(%struct.bridge_controller*, i32) #1

declare dso_local i32 @pci_scan_root_bus_bridge(%struct.pci_host_bridge*) #1

declare dso_local i32 @pci_bus_claim_resources(i32) #1

declare dso_local i32 @pci_bus_add_devices(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32) #1

declare dso_local i32 @pci_free_resource_list(i32*) #1

declare dso_local i32 @irq_domain_remove(%struct.irq_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
