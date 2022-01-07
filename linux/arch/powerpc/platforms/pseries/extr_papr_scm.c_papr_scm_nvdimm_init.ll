; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_papr_scm.c_papr_scm_nvdimm_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_papr_scm.c_papr_scm_nvdimm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.papr_scm_priv = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i64, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.nd_mapping_desc = type { i32, i32, i32, i32, i64, i32*, i32*, %struct.nd_mapping_desc*, %struct.papr_scm_priv*, i32, i32, i64, i64 }
%struct.nd_region_desc = type { i32, i32, i32, i32, i64, i32*, i32*, %struct.nd_region_desc*, %struct.papr_scm_priv*, i32, i32, i64, i64 }

@papr_scm_ndctl = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@bus_attr_groups = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error creating nvdimm bus %pOF\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@NDD_ALIASING = common dso_local global i32 0, align 4
@papr_scm_dimm_groups = common dso_local global i32 0, align 4
@PAPR_SCM_DIMM_CMD_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Error creating DIMM object for %pOF\0A\00", align 1
@region_attr_groups = common dso_local global i32 0, align 4
@ND_REGION_PAGEMAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Error registering region %pR from %pOF\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Region registered with target node %d and online node %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.papr_scm_priv*)* @papr_scm_nvdimm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @papr_scm_nvdimm_init(%struct.papr_scm_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.papr_scm_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nd_mapping_desc, align 8
  %6 = alloca %struct.nd_region_desc, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.papr_scm_priv* %0, %struct.papr_scm_priv** %3, align 8
  %10 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %11 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %10, i32 0, i32 9
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load i32, i32* @papr_scm_ndctl, align 4
  %15 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %16 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* @THIS_MODULE, align 4
  %19 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %20 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 4
  %22 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %23 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %22, i32 0, i32 9
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %29 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @bus_attr_groups, align 4
  %32 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %33 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %36 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %35, i32 0, i32 9
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @kstrdup(i32 %39, i32 %40)
  %42 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %43 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %46 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %1
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %206

53:                                               ; preds = %1
  %54 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %55 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %54, i32 0, i32 2
  %56 = call i32 @nvdimm_bus_register(i32* null, %struct.TYPE_4__* %55)
  %57 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %58 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %60 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %53
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %66 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i32*
  %70 = call i32 (%struct.device*, i8*, i32*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %69)
  %71 = load i32, i32* @ENXIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %206

73:                                               ; preds = %53
  store i64 0, i64* %7, align 8
  %74 = load i32, i32* @NDD_ALIASING, align 4
  %75 = call i32 @set_bit(i32 %74, i64* %7)
  %76 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %77 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %80 = load i32, i32* @papr_scm_dimm_groups, align 4
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* @PAPR_SCM_DIMM_CMD_MASK, align 4
  %83 = call i64 @nvdimm_create(i32 %78, %struct.papr_scm_priv* %79, i32 %80, i64 %81, i32 %82, i32 0, i32* null)
  %84 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %85 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %84, i32 0, i32 10
  store i64 %83, i64* %85, align 8
  %86 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %87 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %86, i32 0, i32 10
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %73
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %93 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i32*
  %97 = call i32 (%struct.device*, i8*, i32*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32* %96)
  br label %194

98:                                               ; preds = %73
  %99 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %100 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @nvdimm_bus_check_dimm_count(i32 %101, i32 1)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %194

105:                                              ; preds = %98
  %106 = bitcast %struct.nd_mapping_desc* %5 to %struct.nd_region_desc*
  %107 = call i32 @memset(%struct.nd_region_desc* %106, i32 0, i32 80)
  %108 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %109 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %108, i32 0, i32 10
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.nd_mapping_desc, %struct.nd_mapping_desc* %5, i32 0, i32 12
  store i64 %110, i64* %111, align 8
  %112 = getelementptr inbounds %struct.nd_mapping_desc, %struct.nd_mapping_desc* %5, i32 0, i32 11
  store i64 0, i64* %112, align 8
  %113 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %114 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %117 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %115, %118
  %120 = getelementptr inbounds %struct.nd_mapping_desc, %struct.nd_mapping_desc* %5, i32 0, i32 0
  store i32 %119, i32* %120, align 8
  %121 = call i32 @memset(%struct.nd_region_desc* %6, i32 0, i32 80)
  %122 = load i32, i32* @region_attr_groups, align 4
  %123 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 10
  store i32 %122, i32* %123, align 4
  %124 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %125 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %124, i32 0, i32 9
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = call i32 @dev_to_node(%struct.device* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @papr_scm_node(i32 %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 1
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %8, align 4
  %134 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 2
  store i32 %133, i32* %134, align 8
  %135 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %136 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %135, i32 0, i32 8
  %137 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 5
  store i32* %136, i32** %137, align 8
  %138 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %139 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 9
  store i32 %140, i32* %141, align 8
  %142 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %143 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 8
  store %struct.papr_scm_priv* %142, %struct.papr_scm_priv** %143, align 8
  %144 = bitcast %struct.nd_mapping_desc* %5 to %struct.nd_region_desc*
  %145 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 7
  store %struct.nd_region_desc* %144, %struct.nd_region_desc** %145, align 8
  %146 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 3
  store i32 1, i32* %146, align 4
  %147 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %148 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 6
  store i32* %148, i32** %149, align 8
  %150 = load i32, i32* @ND_REGION_PAGEMAP, align 4
  %151 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 4
  %152 = call i32 @set_bit(i32 %150, i64* %151)
  %153 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %154 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %105
  %158 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %159 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @nvdimm_volatile_region_create(i32 %160, %struct.nd_region_desc* %6)
  %162 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %163 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 4
  br label %171

164:                                              ; preds = %105
  %165 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %166 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @nvdimm_pmem_region_create(i32 %167, %struct.nd_region_desc* %6)
  %169 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %170 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %164, %157
  %172 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %173 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %171
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %6, i32 0, i32 5
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %181 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 (%struct.device*, i8*, i32*, ...) @dev_err(%struct.device* %177, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32* %179, i32 %182)
  br label %194

184:                                              ; preds = %171
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = load %struct.device*, %struct.device** %4, align 8
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @dev_info(%struct.device* %189, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %188, %184
  store i32 0, i32* %2, align 4
  br label %206

194:                                              ; preds = %176, %104, %90
  %195 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %196 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @nvdimm_bus_unregister(i32 %197)
  %199 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %200 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @kfree(i32 %202)
  %204 = load i32, i32* @ENXIO, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %194, %193, %63, %50
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i32 @kstrdup(i32, i32) #1

declare dso_local i32 @nvdimm_bus_register(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32*, ...) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i64 @nvdimm_create(i32, %struct.papr_scm_priv*, i32, i64, i32, i32, i32*) #1

declare dso_local i64 @nvdimm_bus_check_dimm_count(i32, i32) #1

declare dso_local i32 @memset(%struct.nd_region_desc*, i32, i32) #1

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local i32 @papr_scm_node(i32) #1

declare dso_local i32 @nvdimm_volatile_region_create(i32, %struct.nd_region_desc*) #1

declare dso_local i32 @nvdimm_pmem_region_create(i32, %struct.nd_region_desc*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @nvdimm_bus_unregister(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
