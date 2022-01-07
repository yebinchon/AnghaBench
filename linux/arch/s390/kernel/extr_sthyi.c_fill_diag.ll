; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sthyi.c_fill_diag.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sthyi.c_fill_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sthyi_sctns = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.diag204_x_info_blk_hdr = type { i32, i32, i32 }
%struct.diag204_x_part_block = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.diag204_x_phys_block = type { i32 }
%struct.lpar_cpu_inf = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@DIAG204_SUBC_RSI = common dso_local global i64 0, align 8
@DIAG204_INFO_EXT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@DIAG204_SUBC_STIB7 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@PAR_MT_EN = common dso_local global i32 0, align 4
@PAR_GRP_VLD = common dso_local global i32 0, align 4
@PAR_PCNT_VLD = common dso_local global i32 0, align 4
@PAR_ABS_VLD = common dso_local global i32 0, align 4
@DIAG204_LPAR_PHYS_FLG = common dso_local global i32 0, align 4
@HDR_PERF_UNAV = common dso_local global i32 0, align 4
@PAR_WGHT_VLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sthyi_sctns*)* @fill_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_diag(%struct.sthyi_sctns* %0) #0 {
  %2 = alloca %struct.sthyi_sctns*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.diag204_x_info_blk_hdr*, align 8
  %10 = alloca %struct.diag204_x_part_block*, align 8
  %11 = alloca %struct.diag204_x_phys_block*, align 8
  %12 = alloca %struct.lpar_cpu_inf, align 4
  store %struct.sthyi_sctns* %0, %struct.sthyi_sctns** %2, align 8
  store i8* null, i8** %8, align 8
  %13 = bitcast %struct.lpar_cpu_inf* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 48, i1 false)
  %14 = load i64, i64* @DIAG204_SUBC_RSI, align 8
  %15 = load i64, i64* @DIAG204_INFO_EXT, align 8
  %16 = or i64 %14, %15
  %17 = call i32 @diag204(i64 %16, i32 0, i8* null)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %258

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = call i32 @array_size(i32 %22, i32 %23)
  %25 = call i8* @vmalloc(i32 %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %258

29:                                               ; preds = %21
  %30 = load i64, i64* @DIAG204_SUBC_STIB7, align 8
  %31 = load i64, i64* @DIAG204_INFO_EXT, align 8
  %32 = or i64 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @diag204(i64 %32, i32 %33, i8* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %252

39:                                               ; preds = %29
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = load i32, i32* @GFP_DMA, align 4
  %42 = or i32 %40, %41
  %43 = call i64 @__get_free_page(i32 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i8*, i8** %8, align 8
  %49 = call i64 @diag224(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %39
  br label %252

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = bitcast i8* %53 to %struct.diag204_x_info_blk_hdr*
  store %struct.diag204_x_info_blk_hdr* %54, %struct.diag204_x_info_blk_hdr** %9, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr i8, i8* %55, i64 12
  %57 = bitcast i8* %56 to %struct.diag204_x_part_block*
  store %struct.diag204_x_part_block* %57, %struct.diag204_x_part_block** %10, align 8
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %81, %52
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.diag204_x_info_blk_hdr*, %struct.diag204_x_info_blk_hdr** %9, align 8
  %61 = getelementptr inbounds %struct.diag204_x_info_blk_hdr, %struct.diag204_x_info_blk_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %10, align 8
  %66 = bitcast %struct.diag204_x_part_block* %65 to i8*
  %67 = load i8*, i8** %7, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = load %struct.diag204_x_info_blk_hdr*, %struct.diag204_x_info_blk_hdr** %9, align 8
  %72 = getelementptr inbounds %struct.diag204_x_info_blk_hdr, %struct.diag204_x_info_blk_hdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp eq i64 %70, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %10, align 8
  %80 = call %struct.diag204_x_part_block* @lpar_cpu_inf(%struct.lpar_cpu_inf* %12, i32 %77, i8* %78, %struct.diag204_x_part_block* %79)
  store %struct.diag204_x_part_block* %80, %struct.diag204_x_part_block** %10, align 8
  br label %81

81:                                               ; preds = %64
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %58

84:                                               ; preds = %58
  %85 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %10, align 8
  %86 = bitcast %struct.diag204_x_part_block* %85 to %struct.diag204_x_phys_block*
  store %struct.diag204_x_phys_block* %86, %struct.diag204_x_phys_block** %11, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.diag204_x_info_blk_hdr*, %struct.diag204_x_info_blk_hdr** %9, align 8
  %89 = getelementptr inbounds %struct.diag204_x_info_blk_hdr, %struct.diag204_x_info_blk_hdr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr i8, i8* %87, i64 %91
  %93 = bitcast i8* %92 to %struct.diag204_x_part_block*
  store %struct.diag204_x_part_block* %93, %struct.diag204_x_part_block** %10, align 8
  %94 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %10, align 8
  %95 = getelementptr inbounds %struct.diag204_x_part_block, %struct.diag204_x_part_block* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %84
  %100 = load i32, i32* @PAR_MT_EN, align 4
  %101 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %102 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 12
  store i32 %100, i32* %103, align 8
  br label %104

104:                                              ; preds = %99, %84
  %105 = load i32, i32* @PAR_GRP_VLD, align 4
  %106 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %107 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 8
  %111 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %12, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @scale_cap(i32 %113)
  %115 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %116 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 11
  store i8* %114, i8** %117, align 8
  %118 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %12, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @scale_cap(i32 %120)
  %122 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %123 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 10
  store i8* %121, i8** %124, align 8
  %125 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %126 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 9
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %10, align 8
  %130 = getelementptr inbounds %struct.diag204_x_part_block, %struct.diag204_x_part_block* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @memcpy(i32 %128, i32 %132, i32 4)
  %134 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %12, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %138 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 8
  store i32 %136, i32* %139, align 4
  %140 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %12, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %144 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 7
  store i32 %142, i32* %145, align 8
  %146 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %12, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %150 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 6
  store i32 %148, i32* %151, align 4
  %152 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %12, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %156 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 5
  store i32 %154, i32* %157, align 8
  %158 = load i32, i32* @PAR_PCNT_VLD, align 4
  %159 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %160 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %158
  store i32 %163, i32* %161, align 8
  %164 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %12, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @scale_cap(i32 %166)
  %168 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %169 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 4
  store i8* %167, i8** %170, align 8
  %171 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %12, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @scale_cap(i32 %173)
  %175 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %176 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 3
  store i8* %174, i8** %177, align 8
  %178 = load i32, i32* @PAR_ABS_VLD, align 4
  %179 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %180 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %178
  store i32 %183, i32* %181, align 8
  %184 = load %struct.diag204_x_info_blk_hdr*, %struct.diag204_x_info_blk_hdr** %9, align 8
  %185 = getelementptr inbounds %struct.diag204_x_info_blk_hdr, %struct.diag204_x_info_blk_hdr* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @DIAG204_LPAR_PHYS_FLG, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %104
  %191 = load i32, i32* @HDR_PERF_UNAV, align 4
  %192 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %193 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %191
  store i32 %196, i32* %194, align 8
  br label %252

197:                                              ; preds = %104
  %198 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %199 = load %struct.diag204_x_phys_block*, %struct.diag204_x_phys_block** %11, align 8
  %200 = load i8*, i8** %8, align 8
  %201 = call i32 @fill_diag_mac(%struct.sthyi_sctns* %198, %struct.diag204_x_phys_block* %199, i8* %200)
  %202 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %12, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %223

206:                                              ; preds = %197
  %207 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %208 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = mul nsw i32 %210, 65536
  %212 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %12, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = mul nsw i32 %211, %214
  %216 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %12, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = sdiv i32 %215, %218
  %220 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %221 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  store i32 %219, i32* %222, align 8
  br label %223

223:                                              ; preds = %206, %197
  %224 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %12, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %245

228:                                              ; preds = %223
  %229 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %230 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = mul nsw i32 %232, 65536
  %234 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %12, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = mul nsw i32 %233, %236
  %238 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %12, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = sdiv i32 %237, %240
  %242 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %243 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 1
  store i32 %241, i32* %244, align 4
  br label %245

245:                                              ; preds = %228, %223
  %246 = load i32, i32* @PAR_WGHT_VLD, align 4
  %247 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %248 = getelementptr inbounds %struct.sthyi_sctns, %struct.sthyi_sctns* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %246
  store i32 %251, i32* %249, align 8
  br label %252

252:                                              ; preds = %245, %190, %51, %38
  %253 = load i8*, i8** %8, align 8
  %254 = ptrtoint i8* %253 to i64
  %255 = call i32 @free_page(i64 %254)
  %256 = load i8*, i8** %7, align 8
  %257 = call i32 @vfree(i8* %256)
  br label %258

258:                                              ; preds = %252, %28, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @diag204(i64, i32, i8*) #2

declare dso_local i8* @vmalloc(i32) #2

declare dso_local i32 @array_size(i32, i32) #2

declare dso_local i64 @__get_free_page(i32) #2

declare dso_local i64 @diag224(i8*) #2

declare dso_local %struct.diag204_x_part_block* @lpar_cpu_inf(%struct.lpar_cpu_inf*, i32, i8*, %struct.diag204_x_part_block*) #2

declare dso_local i8* @scale_cap(i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @fill_diag_mac(%struct.sthyi_sctns*, %struct.diag204_x_phys_block*, i8*) #2

declare dso_local i32 @free_page(i64) #2

declare dso_local i32 @vfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
