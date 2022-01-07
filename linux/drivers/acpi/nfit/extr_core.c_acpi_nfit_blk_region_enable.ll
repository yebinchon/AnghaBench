; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_blk_region_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_blk_region_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_bus = type { i32 }
%struct.device = type { i32 }
%struct.nvdimm_bus_descriptor = type { i32 }
%struct.nd_blk_region = type { i32 }
%struct.nfit_blk_mmio = type { i32, %struct.TYPE_11__*, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.nfit_blk = type { i64, i64, i32, %struct.nfit_blk_mmio*, i32 }
%struct.nfit_mem = type { %struct.TYPE_12__*, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_8__*, i32, %struct.TYPE_11__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.nvdimm = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"missing%s%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" nfit_mem\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" dcr\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" bdw\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BDW = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"%s failed to map bdw\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"%s failed to init bdw interleave\0A\00", align 1
@DCR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"%s failed to map dcr\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%s failed to init dcr interleave\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"%s failed get DIMM flags\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"unable to guarantee persistence of writes\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"cmd_offset crosses interleave boundary\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"stat_offset crosses interleave boundary\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm_bus*, %struct.device*)* @acpi_nfit_blk_region_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_nfit_blk_region_enable(%struct.nvdimm_bus* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvdimm_bus*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.nvdimm_bus_descriptor*, align 8
  %7 = alloca %struct.nd_blk_region*, align 8
  %8 = alloca %struct.nfit_blk_mmio*, align 8
  %9 = alloca %struct.nfit_blk*, align 8
  %10 = alloca %struct.nfit_mem*, align 8
  %11 = alloca %struct.nvdimm*, align 8
  %12 = alloca i32, align 4
  store %struct.nvdimm_bus* %0, %struct.nvdimm_bus** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %13 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %4, align 8
  %14 = call %struct.nvdimm_bus_descriptor* @to_nd_desc(%struct.nvdimm_bus* %13)
  store %struct.nvdimm_bus_descriptor* %14, %struct.nvdimm_bus_descriptor** %6, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.nd_blk_region* @to_nd_blk_region(%struct.device* %15)
  store %struct.nd_blk_region* %16, %struct.nd_blk_region** %7, align 8
  %17 = load %struct.nd_blk_region*, %struct.nd_blk_region** %7, align 8
  %18 = call %struct.nvdimm* @nd_blk_region_to_dimm(%struct.nd_blk_region* %17)
  store %struct.nvdimm* %18, %struct.nvdimm** %11, align 8
  %19 = load %struct.nvdimm*, %struct.nvdimm** %11, align 8
  %20 = call %struct.nfit_mem* @nvdimm_provider_data(%struct.nvdimm* %19)
  store %struct.nfit_mem* %20, %struct.nfit_mem** %10, align 8
  %21 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %22 = icmp ne %struct.nfit_mem* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %25 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %24, i32 0, i32 3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %30 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %29, i32 0, i32 7
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %64, label %33

33:                                               ; preds = %28, %23, %2
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %36 = icmp ne %struct.nfit_mem* %35, null
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %39 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %40 = icmp ne %struct.nfit_mem* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %43 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %42, i32 0, i32 3
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br label %46

46:                                               ; preds = %41, %33
  %47 = phi i1 [ false, %33 ], [ %45, %41 ]
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %50 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %51 = icmp ne %struct.nfit_mem* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %54 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %53, i32 0, i32 7
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  br label %57

57:                                               ; preds = %52, %46
  %58 = phi i1 [ false, %46 ], [ %56, %52 ]
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %61 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %49, i8* %60)
  %62 = load i32, i32* @ENXIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %323

64:                                               ; preds = %28
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.nfit_blk* @devm_kzalloc(%struct.device* %65, i32 40, i32 %66)
  store %struct.nfit_blk* %67, %struct.nfit_blk** %9, align 8
  %68 = load %struct.nfit_blk*, %struct.nfit_blk** %9, align 8
  %69 = icmp ne %struct.nfit_blk* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %323

73:                                               ; preds = %64
  %74 = load %struct.nd_blk_region*, %struct.nd_blk_region** %7, align 8
  %75 = load %struct.nfit_blk*, %struct.nfit_blk** %9, align 8
  %76 = call i32 @nd_blk_region_set_provider_data(%struct.nd_blk_region* %74, %struct.nfit_blk* %75)
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = call i32 @to_nd_region(%struct.device* %77)
  %79 = load %struct.nfit_blk*, %struct.nfit_blk** %9, align 8
  %80 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %82 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %81, i32 0, i32 7
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nfit_blk*, %struct.nfit_blk** %9, align 8
  %87 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.nfit_blk*, %struct.nfit_blk** %9, align 8
  %89 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %88, i32 0, i32 3
  %90 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %89, align 8
  %91 = load i64, i64* @BDW, align 8
  %92 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %90, i64 %91
  store %struct.nfit_blk_mmio* %92, %struct.nfit_blk_mmio** %8, align 8
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %95 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %94, i32 0, i32 6
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %100 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %99, i32 0, i32 6
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.nd_blk_region*, %struct.nd_blk_region** %7, align 8
  %105 = call i32 @nd_blk_memremap_flags(%struct.nd_blk_region* %104)
  %106 = call i64 @devm_nvdimm_memremap(%struct.device* %93, i32 %98, i32 %103, i32 %105)
  %107 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %108 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  store i64 %106, i64* %109, align 8
  %110 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %111 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %73
  %116 = load %struct.device*, %struct.device** %5, align 8
  %117 = load %struct.nvdimm*, %struct.nvdimm** %11, align 8
  %118 = call i32 @nvdimm_name(%struct.nvdimm* %117)
  %119 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %323

122:                                              ; preds = %73
  %123 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %124 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %123, i32 0, i32 7
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %129 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %131 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %130, i32 0, i32 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %136 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %138 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %141 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %143 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %142, i32 0, i32 6
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %146 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %145, i32 0, i32 1
  store %struct.TYPE_11__* %144, %struct.TYPE_11__** %146, align 8
  %147 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %148 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %149 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %152 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %151, i32 0, i32 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @nfit_blk_init_interleave(%struct.nfit_blk_mmio* %147, i32 %150, i32 %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %122
  %160 = load %struct.device*, %struct.device** %5, align 8
  %161 = load %struct.nvdimm*, %struct.nvdimm** %11, align 8
  %162 = call i32 @nvdimm_name(%struct.nvdimm* %161)
  %163 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %160, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %3, align 4
  br label %323

165:                                              ; preds = %122
  %166 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %167 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %166, i32 0, i32 3
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.nfit_blk*, %struct.nfit_blk** %9, align 8
  %172 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  %173 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %174 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %173, i32 0, i32 3
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.nfit_blk*, %struct.nfit_blk** %9, align 8
  %179 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  %180 = load %struct.nfit_blk*, %struct.nfit_blk** %9, align 8
  %181 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %180, i32 0, i32 3
  %182 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %181, align 8
  %183 = load i64, i64* @DCR, align 8
  %184 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %182, i64 %183
  store %struct.nfit_blk_mmio* %184, %struct.nfit_blk_mmio** %8, align 8
  %185 = load %struct.device*, %struct.device** %5, align 8
  %186 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %187 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %186, i32 0, i32 2
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %192 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %191, i32 0, i32 2
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @devm_nvdimm_ioremap(%struct.device* %185, i32 %190, i32 %195)
  %197 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %198 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  store i64 %196, i64* %199, align 8
  %200 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %201 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %165
  %206 = load %struct.device*, %struct.device** %5, align 8
  %207 = load %struct.nvdimm*, %struct.nvdimm** %11, align 8
  %208 = call i32 @nvdimm_name(%struct.nvdimm* %207)
  %209 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %206, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* @ENOMEM, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %3, align 4
  br label %323

212:                                              ; preds = %165
  %213 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %214 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %213, i32 0, i32 3
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %219 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %218, i32 0, i32 4
  store i32 %217, i32* %219, align 8
  %220 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %221 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %220, i32 0, i32 0
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %226 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %225, i32 0, i32 3
  store i32 %224, i32* %226, align 4
  %227 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %228 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %231 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  %232 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %233 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %232, i32 0, i32 2
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %233, align 8
  %235 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %236 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %235, i32 0, i32 1
  store %struct.TYPE_11__* %234, %struct.TYPE_11__** %236, align 8
  %237 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %238 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %239 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.nfit_mem*, %struct.nfit_mem** %10, align 8
  %242 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %241, i32 0, i32 0
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @nfit_blk_init_interleave(%struct.nfit_blk_mmio* %237, i32 %240, i32 %245)
  store i32 %246, i32* %12, align 4
  %247 = load i32, i32* %12, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %212
  %250 = load %struct.device*, %struct.device** %5, align 8
  %251 = load %struct.nvdimm*, %struct.nvdimm** %11, align 8
  %252 = call i32 @nvdimm_name(%struct.nvdimm* %251)
  %253 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %250, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %252)
  %254 = load i32, i32* %12, align 4
  store i32 %254, i32* %3, align 4
  br label %323

255:                                              ; preds = %212
  %256 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %6, align 8
  %257 = load %struct.nvdimm*, %struct.nvdimm** %11, align 8
  %258 = load %struct.nfit_blk*, %struct.nfit_blk** %9, align 8
  %259 = call i32 @acpi_nfit_blk_get_flags(%struct.nvdimm_bus_descriptor* %256, %struct.nvdimm* %257, %struct.nfit_blk* %258)
  store i32 %259, i32* %12, align 4
  %260 = load i32, i32* %12, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %255
  %263 = load %struct.device*, %struct.device** %5, align 8
  %264 = load %struct.nvdimm*, %struct.nvdimm** %11, align 8
  %265 = call i32 @nvdimm_name(%struct.nvdimm* %264)
  %266 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %263, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %265)
  %267 = load i32, i32* %12, align 4
  store i32 %267, i32* %3, align 4
  br label %323

268:                                              ; preds = %255
  %269 = load %struct.nfit_blk*, %struct.nfit_blk** %9, align 8
  %270 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = call i64 @nvdimm_has_flush(i32 %271)
  %273 = icmp slt i64 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %268
  %275 = load %struct.device*, %struct.device** %5, align 8
  %276 = call i32 @dev_warn(%struct.device* %275, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  br label %277

277:                                              ; preds = %274, %268
  %278 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %279 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  store i32 0, i32* %3, align 4
  br label %323

283:                                              ; preds = %277
  %284 = load %struct.nfit_blk*, %struct.nfit_blk** %9, align 8
  %285 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = trunc i64 %286 to i32
  %288 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %289 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = srem i32 %287, %290
  %292 = add nsw i32 %291, 8
  %293 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %294 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp sgt i32 %292, %295
  br i1 %296, label %297, label %302

297:                                              ; preds = %283
  %298 = load %struct.device*, %struct.device** %5, align 8
  %299 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %298, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %300 = load i32, i32* @ENXIO, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %3, align 4
  br label %323

302:                                              ; preds = %283
  %303 = load %struct.nfit_blk*, %struct.nfit_blk** %9, align 8
  %304 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = trunc i64 %305 to i32
  %307 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %308 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = srem i32 %306, %309
  %311 = add nsw i32 %310, 8
  %312 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %8, align 8
  %313 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp sgt i32 %311, %314
  br i1 %315, label %316, label %321

316:                                              ; preds = %302
  %317 = load %struct.device*, %struct.device** %5, align 8
  %318 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %317, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %319 = load i32, i32* @ENXIO, align 4
  %320 = sub nsw i32 0, %319
  store i32 %320, i32* %3, align 4
  br label %323

321:                                              ; preds = %302
  br label %322

322:                                              ; preds = %321
  store i32 0, i32* %3, align 4
  br label %323

323:                                              ; preds = %322, %316, %297, %282, %262, %249, %205, %159, %115, %70, %57
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

declare dso_local %struct.nvdimm_bus_descriptor* @to_nd_desc(%struct.nvdimm_bus*) #1

declare dso_local %struct.nd_blk_region* @to_nd_blk_region(%struct.device*) #1

declare dso_local %struct.nvdimm* @nd_blk_region_to_dimm(%struct.nd_blk_region*) #1

declare dso_local %struct.nfit_mem* @nvdimm_provider_data(%struct.nvdimm*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local %struct.nfit_blk* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @nd_blk_region_set_provider_data(%struct.nd_blk_region*, %struct.nfit_blk*) #1

declare dso_local i32 @to_nd_region(%struct.device*) #1

declare dso_local i64 @devm_nvdimm_memremap(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @nd_blk_memremap_flags(%struct.nd_blk_region*) #1

declare dso_local i32 @nvdimm_name(%struct.nvdimm*) #1

declare dso_local i32 @nfit_blk_init_interleave(%struct.nfit_blk_mmio*, i32, i32) #1

declare dso_local i64 @devm_nvdimm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @acpi_nfit_blk_get_flags(%struct.nvdimm_bus_descriptor*, %struct.nvdimm*, %struct.nfit_blk*) #1

declare dso_local i64 @nvdimm_has_flush(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
