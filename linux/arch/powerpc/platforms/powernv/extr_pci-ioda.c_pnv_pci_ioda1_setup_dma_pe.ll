; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda1_setup_dma_pe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda1_setup_dma_pe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_phb = type { %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64* }
%struct.pnv_ioda_pe = type { i64, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.page = type { i32 }
%struct.iommu_table = type { i32, i32, i32, i32* }

@pnv_pci_ioda_dev_dma_weight = common dso_local global i32 0, align 4
@IODA_INVALID_PE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"No available DMA32 segments\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"DMA weight %d (%d), assigned (%d) %d DMA32 segments\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c" Setting up 32-bit TCE table at %08x..%08x\0A\00", align 1
@PNV_IODA1_DMA32_SEGSIZE = common dso_local global i32 0, align 4
@IOMMU_PAGE_SHIFT_4K = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c" Failed to allocate a 32-bit TCE memory\0A\00", align 1
@IOMMU_PAGE_SIZE_4K = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c" Failed to configure 32-bit TCE table, err %lld\0A\00", align 1
@pnv_ioda1_iommu_ops = common dso_local global i32 0, align 4
@PNV_IODA_PE_BUS = common dso_local global i32 0, align 4
@PNV_IODA_PE_BUS_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnv_phb*, %struct.pnv_ioda_pe*)* @pnv_pci_ioda1_setup_dma_pe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_pci_ioda1_setup_dma_pe(%struct.pnv_phb* %0, %struct.pnv_ioda_pe* %1) #0 {
  %3 = alloca %struct.pnv_phb*, align 8
  %4 = alloca %struct.pnv_ioda_pe*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.iommu_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.pnv_phb* %0, %struct.pnv_phb** %3, align 8
  store %struct.pnv_ioda_pe* %1, %struct.pnv_ioda_pe** %4, align 8
  store %struct.page* null, %struct.page** %5, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %17 = call i32 @pnv_pci_ioda_pe_dma_weight(%struct.pnv_ioda_pe* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %309

21:                                               ; preds = %2
  %22 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %23 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @pnv_pci_ioda_dev_dma_weight, align 4
  %28 = call i32 @pci_walk_bus(i32 %26, i32 %27, i32* %8)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %31 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul i32 %29, %33
  %35 = load i32, i32* %8, align 4
  %36 = udiv i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %21
  store i32 1, i32* %11, align 4
  br label %40

40:                                               ; preds = %39, %21
  br label %41

41:                                               ; preds = %87, %40
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %83, %41
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %45 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sub i32 %47, %48
  %50 = icmp ule i32 %43, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %42
  store i32 0, i32* %12, align 4
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %74, %51
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add i32 %55, %56
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %53
  %60 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %61 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IODA_INVALID_PE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i32, i32* %12, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %70, %59
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %13, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %53

77:                                               ; preds = %53
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %98

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %10, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %42

86:                                               ; preds = %42
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add i32 %88, -1
  store i32 %89, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %41, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %96 = call i32 @pe_warn(%struct.pnv_ioda_pe* %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %309

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97, %81
  %99 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %100 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.iommu_table* @pnv_pci_table_alloc(i32 %103)
  store %struct.iommu_table* %104, %struct.iommu_table** %6, align 8
  %105 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %106 = icmp ne %struct.iommu_table* %105, null
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i64 @WARN_ON(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %309

112:                                              ; preds = %98
  %113 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %114 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %113, i32 0, i32 2
  %115 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %116 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %121 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @iommu_register_group(%struct.TYPE_8__* %114, i32 %119, i64 %122)
  %124 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %125 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %124, i32 0, i32 0
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %130 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %131 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %130, i32 0, i32 2
  %132 = call i32 @pnv_pci_link_table_and_group(i32 %128, i32 0, %struct.iommu_table* %129, %struct.TYPE_8__* %131)
  %133 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i32 (%struct.pnv_ioda_pe*, i8*, i32, i32, ...) @pe_info(%struct.pnv_ioda_pe* %133, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @PNV_IODA1_DMA32_SEGSIZE, align 4
  %142 = mul i32 %140, %141
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = add i32 %143, %144
  %146 = load i32, i32* @PNV_IODA1_DMA32_SEGSIZE, align 4
  %147 = mul i32 %145, %146
  %148 = sub i32 %147, 1
  %149 = call i32 (%struct.pnv_ioda_pe*, i8*, i32, i32, ...) @pe_info(%struct.pnv_ioda_pe* %139, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %142, i32 %148)
  %150 = load i32, i32* @PNV_IODA1_DMA32_SEGSIZE, align 4
  %151 = load i32, i32* @IOMMU_PAGE_SHIFT_4K, align 4
  %152 = sub nsw i32 %151, 3
  %153 = lshr i32 %150, %152
  store i32 %153, i32* %9, align 4
  %154 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %155 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @GFP_KERNEL, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %11, align 4
  %162 = mul i32 %160, %161
  %163 = call i32 @get_order(i32 %162)
  %164 = call %struct.page* @alloc_pages_node(i32 %158, i32 %159, i32 %163)
  store %struct.page* %164, %struct.page** %5, align 8
  %165 = load %struct.page*, %struct.page** %5, align 8
  %166 = icmp ne %struct.page* %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %112
  %168 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %169 = call i32 (%struct.pnv_ioda_pe*, i8*, ...) @pe_err(%struct.pnv_ioda_pe* %168, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %289

170:                                              ; preds = %112
  %171 = load %struct.page*, %struct.page** %5, align 8
  %172 = call i8* @page_address(%struct.page* %171)
  store i8* %172, i8** %15, align 8
  %173 = load i8*, i8** %15, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %11, align 4
  %176 = mul i32 %174, %175
  %177 = call i32 @memset(i8* %173, i32 0, i32 %176)
  store i32 0, i32* %13, align 4
  br label %178

178:                                              ; preds = %209, %170
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %182, label %212

182:                                              ; preds = %178
  %183 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %184 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %187 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %13, align 4
  %191 = add i32 %189, %190
  %192 = load i8*, i8** %15, align 8
  %193 = call i64 @__pa(i8* %192)
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %13, align 4
  %196 = mul i32 %194, %195
  %197 = zext i32 %196 to i64
  %198 = add nsw i64 %193, %197
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* @IOMMU_PAGE_SIZE_4K, align 4
  %201 = call i64 @opal_pci_map_pe_dma_window(i32 %185, i64 %188, i32 %191, i32 1, i64 %198, i32 %199, i32 %200)
  store i64 %201, i64* %14, align 8
  %202 = load i64, i64* %14, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %182
  %205 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %206 = load i64, i64* %14, align 8
  %207 = call i32 (%struct.pnv_ioda_pe*, i8*, ...) @pe_err(%struct.pnv_ioda_pe* %205, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %206)
  br label %289

208:                                              ; preds = %182
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %13, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %13, align 4
  br label %178

212:                                              ; preds = %178
  %213 = load i32, i32* %10, align 4
  store i32 %213, i32* %13, align 4
  br label %214

214:                                              ; preds = %231, %212
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %11, align 4
  %218 = add i32 %216, %217
  %219 = icmp ult i32 %215, %218
  br i1 %219, label %220, label %234

220:                                              ; preds = %214
  %221 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %222 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %225 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  %227 = load i64*, i64** %226, align 8
  %228 = load i32, i32* %13, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i64, i64* %227, i64 %229
  store i64 %223, i64* %230, align 8
  br label %231

231:                                              ; preds = %220
  %232 = load i32, i32* %13, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %13, align 4
  br label %214

234:                                              ; preds = %214
  %235 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %236 = load i8*, i8** %15, align 8
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %11, align 4
  %239 = mul i32 %237, %238
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* @PNV_IODA1_DMA32_SEGSIZE, align 4
  %242 = mul i32 %240, %241
  %243 = load i32, i32* @IOMMU_PAGE_SHIFT_4K, align 4
  %244 = call i32 @pnv_pci_setup_iommu_table(%struct.iommu_table* %235, i8* %236, i32 %239, i32 %242, i32 %243)
  %245 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %246 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %245, i32 0, i32 3
  store i32* @pnv_ioda1_iommu_ops, i32** %246, align 8
  %247 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %248 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %251 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = shl i32 %249, %252
  %254 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %255 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  store i32 %253, i32* %256, align 4
  %257 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %258 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %261 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = shl i32 %259, %262
  %264 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %265 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 1
  store i32 %263, i32* %266, align 4
  %267 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %268 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %269 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %268, i32 0, i32 0
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @iommu_init_table(%struct.iommu_table* %267, i32 %272, i32 0, i32 0)
  %274 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %275 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @PNV_IODA_PE_BUS, align 4
  %278 = load i32, i32* @PNV_IODA_PE_BUS_ALL, align 4
  %279 = or i32 %277, %278
  %280 = and i32 %276, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %234
  %283 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %284 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %285 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @pnv_ioda_setup_bus_dma(%struct.pnv_ioda_pe* %283, i32 %286)
  br label %288

288:                                              ; preds = %282, %234
  br label %309

289:                                              ; preds = %204, %167
  %290 = load %struct.page*, %struct.page** %5, align 8
  %291 = icmp ne %struct.page* %290, null
  br i1 %291, label %292, label %299

292:                                              ; preds = %289
  %293 = load %struct.page*, %struct.page** %5, align 8
  %294 = load i32, i32* %9, align 4
  %295 = load i32, i32* %11, align 4
  %296 = mul i32 %294, %295
  %297 = call i32 @get_order(i32 %296)
  %298 = call i32 @__free_pages(%struct.page* %293, i32 %297)
  br label %299

299:                                              ; preds = %292, %289
  %300 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %301 = icmp ne %struct.iommu_table* %300, null
  br i1 %301, label %302, label %309

302:                                              ; preds = %299
  %303 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %304 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %305 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %304, i32 0, i32 2
  %306 = call i32 @pnv_pci_unlink_table_and_group(%struct.iommu_table* %303, %struct.TYPE_8__* %305)
  %307 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %308 = call i32 @iommu_tce_table_put(%struct.iommu_table* %307)
  br label %309

309:                                              ; preds = %20, %94, %111, %288, %302, %299
  ret void
}

declare dso_local i32 @pnv_pci_ioda_pe_dma_weight(%struct.pnv_ioda_pe*) #1

declare dso_local i32 @pci_walk_bus(i32, i32, i32*) #1

declare dso_local i32 @pe_warn(%struct.pnv_ioda_pe*, i8*) #1

declare dso_local %struct.iommu_table* @pnv_pci_table_alloc(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iommu_register_group(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i32 @pnv_pci_link_table_and_group(i32, i32, %struct.iommu_table*, %struct.TYPE_8__*) #1

declare dso_local i32 @pe_info(%struct.pnv_ioda_pe*, i8*, i32, i32, ...) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @pe_err(%struct.pnv_ioda_pe*, i8*, ...) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @opal_pci_map_pe_dma_window(i32, i64, i32, i32, i64, i32, i32) #1

declare dso_local i64 @__pa(i8*) #1

declare dso_local i32 @pnv_pci_setup_iommu_table(%struct.iommu_table*, i8*, i32, i32, i32) #1

declare dso_local i32 @iommu_init_table(%struct.iommu_table*, i32, i32, i32) #1

declare dso_local i32 @pnv_ioda_setup_bus_dma(%struct.pnv_ioda_pe*, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @pnv_pci_unlink_table_and_group(%struct.iommu_table*, %struct.TYPE_8__*) #1

declare dso_local i32 @iommu_tce_table_put(%struct.iommu_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
