; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_amiga.c_amiga_partition.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_amiga.c_amiga_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32, i32 }
%struct.RigidDiskBlock = type { i64, i64, i64 }
%struct.PartitionBlock = type { i64, i64, i64, i64* }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@RDB_ALLOCATION_LIMIT = common dso_local global i32 0, align 4
@warn_no_part = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Dev %s: unable to read RDB block %d\0A\00", align 1
@IDNAME_RIGIDDISK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Trashed word at 0xd0 in block %d ignored in checksum calculation\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Dev %s: RDB in block %d has bad checksum\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" RDSK (%d)\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Dev %s: unable to read partition block %d\0A\00", align 1
@IDNAME_PARTITION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c" (%c%c%c^%c)\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" (%c%c%c%c)\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"(res %d spb %d)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amiga_partition(%struct.parsed_partitions* %0) #0 {
  %2 = alloca %struct.parsed_partitions*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.RigidDiskBlock*, align 8
  %6 = alloca %struct.PartitionBlock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [19 x i8], align 16
  %17 = alloca [4 x i8], align 1
  %18 = alloca [42 x i8], align 16
  %19 = alloca i64*, align 8
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %2, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %20 = load i32, i32* @BDEVNAME_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %90, %1
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @RDB_ALLOCATION_LIMIT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %314

29:                                               ; preds = %24
  %30 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i8* @read_part_sector(%struct.parsed_partitions* %30, i32 %31, i32* %3)
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* @warn_no_part, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %40 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bdevname(i32 %41, i8* %23)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %35
  store i32 -1, i32* %11, align 4
  br label %314

46:                                               ; preds = %29
  %47 = load i8*, i8** %4, align 8
  %48 = bitcast i8* %47 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @IDNAME_RIGIDDISK, align 4
  %51 = call i64 @cpu_to_be32(i32 %50)
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %90

54:                                               ; preds = %46
  %55 = load i8*, i8** %4, align 8
  %56 = bitcast i8* %55 to %struct.RigidDiskBlock*
  store %struct.RigidDiskBlock* %56, %struct.RigidDiskBlock** %5, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = bitcast i8* %57 to i64*
  %59 = load %struct.RigidDiskBlock*, %struct.RigidDiskBlock** %5, align 8
  %60 = getelementptr inbounds %struct.RigidDiskBlock, %struct.RigidDiskBlock* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @be32_to_cpu(i64 %61)
  %63 = and i32 %62, 127
  %64 = call i64 @checksum_block(i64* %58, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %95

67:                                               ; preds = %54
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 220
  %70 = bitcast i8* %69 to i64*
  store i64 0, i64* %70, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = bitcast i8* %71 to i64*
  %73 = load %struct.RigidDiskBlock*, %struct.RigidDiskBlock** %5, align 8
  %74 = getelementptr inbounds %struct.RigidDiskBlock, %struct.RigidDiskBlock* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @be32_to_cpu(i64 %75)
  %77 = and i32 %76, 127
  %78 = call i64 @checksum_block(i64* %72, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %95

83:                                               ; preds = %67
  %84 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %85 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @bdevname(i32 %86, i8* %23)
  %88 = load i32, i32* %9, align 4
  %89 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %53
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @put_dev_sector(i32 %93)
  br label %24

95:                                               ; preds = %80, %66
  %96 = load %struct.RigidDiskBlock*, %struct.RigidDiskBlock** %5, align 8
  %97 = getelementptr inbounds %struct.RigidDiskBlock, %struct.RigidDiskBlock* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @be32_to_cpu(i64 %98)
  %100 = sdiv i32 %99, 512
  store i32 %100, i32* %12, align 4
  %101 = getelementptr inbounds [19 x i8], [19 x i8]* %16, i64 0, i64 0
  %102 = load i32, i32* %12, align 4
  %103 = mul nsw i32 %102, 512
  %104 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %101, i32 19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %106 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [19 x i8], [19 x i8]* %16, i64 0, i64 0
  %109 = load i32, i32* @PAGE_SIZE, align 4
  %110 = call i32 @strlcat(i32 %107, i8* %108, i32 %109)
  %111 = load %struct.RigidDiskBlock*, %struct.RigidDiskBlock** %5, align 8
  %112 = getelementptr inbounds %struct.RigidDiskBlock, %struct.RigidDiskBlock* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @be32_to_cpu(i64 %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @put_dev_sector(i32 %115)
  store i32 1, i32* %10, align 4
  br label %117

117:                                              ; preds = %303, %95
  %118 = load i32, i32* %9, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %10, align 4
  %122 = icmp sle i32 %121, 16
  br label %123

123:                                              ; preds = %120, %117
  %124 = phi i1 [ false, %117 ], [ %122, %120 ]
  br i1 %124, label %125, label %308

125:                                              ; preds = %123
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %9, align 4
  %128 = mul nsw i32 %127, %126
  store i32 %128, i32* %9, align 4
  %129 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i8* @read_part_sector(%struct.parsed_partitions* %129, i32 %130, i32* %3)
  store i8* %131, i8** %4, align 8
  %132 = load i8*, i8** %4, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %145, label %134

134:                                              ; preds = %125
  %135 = load i64, i64* @warn_no_part, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %139 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @bdevname(i32 %140, i8* %23)
  %142 = load i32, i32* %9, align 4
  %143 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %137, %134
  store i32 -1, i32* %11, align 4
  br label %314

145:                                              ; preds = %125
  %146 = load i8*, i8** %4, align 8
  %147 = bitcast i8* %146 to %struct.PartitionBlock*
  store %struct.PartitionBlock* %147, %struct.PartitionBlock** %6, align 8
  %148 = load %struct.PartitionBlock*, %struct.PartitionBlock** %6, align 8
  %149 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @be32_to_cpu(i64 %150)
  store i32 %151, i32* %9, align 4
  %152 = load %struct.PartitionBlock*, %struct.PartitionBlock** %6, align 8
  %153 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* @IDNAME_PARTITION, align 4
  %156 = call i64 @cpu_to_be32(i32 %155)
  %157 = icmp ne i64 %154, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %145
  br label %303

159:                                              ; preds = %145
  %160 = load %struct.PartitionBlock*, %struct.PartitionBlock** %6, align 8
  %161 = bitcast %struct.PartitionBlock* %160 to i64*
  %162 = load %struct.PartitionBlock*, %struct.PartitionBlock** %6, align 8
  %163 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @be32_to_cpu(i64 %164)
  %166 = and i32 %165, 127
  %167 = call i64 @checksum_block(i64* %161, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %159
  br label %303

170:                                              ; preds = %159
  %171 = load %struct.PartitionBlock*, %struct.PartitionBlock** %6, align 8
  %172 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %171, i32 0, i32 3
  %173 = load i64*, i64** %172, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 10
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @be32_to_cpu(i64 %175)
  %177 = add nsw i32 %176, 1
  %178 = load %struct.PartitionBlock*, %struct.PartitionBlock** %6, align 8
  %179 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %178, i32 0, i32 3
  %180 = load i64*, i64** %179, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 9
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @be32_to_cpu(i64 %182)
  %184 = sub nsw i32 %177, %183
  %185 = load %struct.PartitionBlock*, %struct.PartitionBlock** %6, align 8
  %186 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %185, i32 0, i32 3
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 3
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @be32_to_cpu(i64 %189)
  %191 = mul nsw i32 %184, %190
  %192 = load %struct.PartitionBlock*, %struct.PartitionBlock** %6, align 8
  %193 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %192, i32 0, i32 3
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 5
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @be32_to_cpu(i64 %196)
  %198 = mul nsw i32 %191, %197
  %199 = load i32, i32* %12, align 4
  %200 = mul nsw i32 %198, %199
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %170
  br label %303

204:                                              ; preds = %170
  %205 = load %struct.PartitionBlock*, %struct.PartitionBlock** %6, align 8
  %206 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %205, i32 0, i32 3
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 9
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @be32_to_cpu(i64 %209)
  %211 = load %struct.PartitionBlock*, %struct.PartitionBlock** %6, align 8
  %212 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %211, i32 0, i32 3
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 3
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @be32_to_cpu(i64 %215)
  %217 = mul nsw i32 %210, %216
  %218 = load %struct.PartitionBlock*, %struct.PartitionBlock** %6, align 8
  %219 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %218, i32 0, i32 3
  %220 = load i64*, i64** %219, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 5
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @be32_to_cpu(i64 %222)
  %224 = mul nsw i32 %217, %223
  %225 = load i32, i32* %12, align 4
  %226 = mul nsw i32 %224, %225
  store i32 %226, i32* %7, align 4
  %227 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %13, align 4
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* %8, align 4
  %232 = call i32 @put_partition(%struct.parsed_partitions* %227, i32 %228, i32 %230, i32 %231)
  %233 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %234 = bitcast i8* %233 to i64*
  store i64* %234, i64** %19, align 8
  %235 = load %struct.PartitionBlock*, %struct.PartitionBlock** %6, align 8
  %236 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %235, i32 0, i32 3
  %237 = load i64*, i64** %236, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 16
  %239 = load i64, i64* %238, align 8
  %240 = load i64*, i64** %19, align 8
  store i64 %239, i64* %240, align 8
  %241 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 3
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp slt i32 %243, 32
  br i1 %244, label %245, label %261

245:                                              ; preds = %204
  %246 = getelementptr inbounds [42 x i8], [42 x i8]* %18, i64 0, i64 0
  %247 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 1
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 2
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 3
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = add nsw i32 %258, 64
  %260 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %246, i32 42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %249, i32 %252, i32 %255, i32 %259)
  br label %276

261:                                              ; preds = %204
  %262 = getelementptr inbounds [42 x i8], [42 x i8]* %18, i64 0, i64 0
  %263 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 1
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 2
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 3
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %262, i32 42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %265, i32 %268, i32 %271, i32 %274)
  br label %276

276:                                              ; preds = %261, %245
  %277 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %278 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = getelementptr inbounds [42 x i8], [42 x i8]* %18, i64 0, i64 0
  %281 = load i32, i32* @PAGE_SIZE, align 4
  %282 = call i32 @strlcat(i32 %279, i8* %280, i32 %281)
  %283 = getelementptr inbounds [42 x i8], [42 x i8]* %18, i64 0, i64 0
  %284 = load %struct.PartitionBlock*, %struct.PartitionBlock** %6, align 8
  %285 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %284, i32 0, i32 3
  %286 = load i64*, i64** %285, align 8
  %287 = getelementptr inbounds i64, i64* %286, i64 6
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @be32_to_cpu(i64 %288)
  %290 = load %struct.PartitionBlock*, %struct.PartitionBlock** %6, align 8
  %291 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %290, i32 0, i32 3
  %292 = load i64*, i64** %291, align 8
  %293 = getelementptr inbounds i64, i64* %292, i64 4
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @be32_to_cpu(i64 %294)
  %296 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %283, i32 42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %289, i32 %295)
  %297 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %298 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds [42 x i8], [42 x i8]* %18, i64 0, i64 0
  %301 = load i32, i32* @PAGE_SIZE, align 4
  %302 = call i32 @strlcat(i32 %299, i8* %300, i32 %301)
  store i32 1, i32* %11, align 4
  br label %303

303:                                              ; preds = %276, %203, %169, %158
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %10, align 4
  %306 = load i32, i32* %3, align 4
  %307 = call i32 @put_dev_sector(i32 %306)
  br label %117

308:                                              ; preds = %123
  %309 = load %struct.parsed_partitions*, %struct.parsed_partitions** %2, align 8
  %310 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @PAGE_SIZE, align 4
  %313 = call i32 @strlcat(i32 %311, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %312)
  br label %314

314:                                              ; preds = %308, %144, %45, %28
  %315 = load i32, i32* %11, align 4
  %316 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %316)
  ret i32 %315
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @read_part_sector(%struct.parsed_partitions*, i32, i32*) #2

declare dso_local i32 @pr_err(i8*, i32, ...) #2

declare dso_local i32 @bdevname(i32, i8*) #2

declare dso_local i64 @cpu_to_be32(i32) #2

declare dso_local i64 @checksum_block(i64*, i32) #2

declare dso_local i32 @be32_to_cpu(i64) #2

declare dso_local i32 @put_dev_sector(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #2

declare dso_local i32 @strlcat(i32, i8*, i32) #2

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
