; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_msdos.c_msdos_partition.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_msdos.c_msdos_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8, i32 (%struct.parsed_partitions*, i32, i32, i32)* }
%struct.parsed_partitions = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.partition = type { i32 }
%struct.fat_boot_sector = type { i32, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c" [AIX]\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" >\00", align 1
@LINUX_RAID_PARTITION = common dso_local global i8 0, align 1
@ADDPART_FLAG_RAID = common dso_local global i32 0, align 4
@DM6_PARTITION = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[DM]\00", align 1
@EZD_PARTITION = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"[EZD]\00", align 1
@subtypes = common dso_local global %struct.TYPE_4__* null, align 8
@EFI_PMBR_OSTYPE_EFI_GPT = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msdos_partition(%struct.parsed_partitions* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parsed_partitions*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.partition*, align 8
  %8 = alloca %struct.fat_boot_sector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %3, align 8
  %16 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %17 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bdev_logical_block_size(i32 %18)
  %20 = sdiv i32 %19, 512
  store i32 %20, i32* %4, align 4
  %21 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %22 = call i8* @read_part_sector(%struct.parsed_partitions* %21, i32 0, i32* %5)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %294

26:                                               ; preds = %1
  %27 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @aix_magic_present(%struct.parsed_partitions* %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @put_dev_sector(i32 %32)
  %34 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %35 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @strlcat(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 0, i32* %2, align 4
  br label %294

39:                                               ; preds = %26
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 510
  %42 = call i32 @msdos_magic_present(i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @put_dev_sector(i32 %45)
  store i32 0, i32* %2, align 4
  br label %294

47:                                               ; preds = %39
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 446
  %50 = bitcast i8* %49 to %struct.partition*
  store %struct.partition* %50, %struct.partition** %7, align 8
  store i32 1, i32* %9, align 4
  br label %51

51:                                               ; preds = %97, %47
  %52 = load i32, i32* %9, align 4
  %53 = icmp sle i32 %52, 4
  br i1 %53, label %54, label %102

54:                                               ; preds = %51
  %55 = load %struct.partition*, %struct.partition** %7, align 8
  %56 = getelementptr inbounds %struct.partition, %struct.partition* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %96

59:                                               ; preds = %54
  %60 = load %struct.partition*, %struct.partition** %7, align 8
  %61 = getelementptr inbounds %struct.partition, %struct.partition* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 128
  br i1 %63, label %64, label %96

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = bitcast i8* %65 to %struct.fat_boot_sector*
  store %struct.fat_boot_sector* %66, %struct.fat_boot_sector** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %93

69:                                               ; preds = %64
  %70 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %8, align 8
  %71 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %69
  %75 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %8, align 8
  %76 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %8, align 8
  %81 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @fat_valid_media(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %87 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = call i32 @strlcat(i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @put_dev_sector(i32 %91)
  store i32 1, i32* %2, align 4
  br label %294

93:                                               ; preds = %79, %74, %69, %64
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @put_dev_sector(i32 %94)
  store i32 0, i32* %2, align 4
  br label %294

96:                                               ; preds = %59, %54
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  %100 = load %struct.partition*, %struct.partition** %7, align 8
  %101 = getelementptr inbounds %struct.partition, %struct.partition* %100, i32 1
  store %struct.partition* %101, %struct.partition** %7, align 8
  br label %51

102:                                              ; preds = %51
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 446
  %105 = bitcast i8* %104 to %struct.partition*
  store %struct.partition* %105, %struct.partition** %7, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 440
  %108 = bitcast i8* %107 to i32*
  %109 = call i32 @le32_to_cpup(i32* %108)
  store i32 %109, i32* %10, align 4
  %110 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %111 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %110, i32 0, i32 0
  store i32 5, i32* %111, align 8
  store i32 1, i32* %9, align 4
  br label %112

112:                                              ; preds = %209, %102
  %113 = load i32, i32* %9, align 4
  %114 = icmp sle i32 %113, 4
  br i1 %114, label %115, label %214

115:                                              ; preds = %112
  %116 = load %struct.partition*, %struct.partition** %7, align 8
  %117 = call i32 @start_sect(%struct.partition* %116)
  %118 = load i32, i32* %4, align 4
  %119 = mul nsw i32 %117, %118
  store i32 %119, i32* %11, align 4
  %120 = load %struct.partition*, %struct.partition** %7, align 8
  %121 = call i32 @nr_sects(%struct.partition* %120)
  %122 = load i32, i32* %4, align 4
  %123 = mul nsw i32 %121, %122
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %115
  br label %209

127:                                              ; preds = %115
  %128 = load %struct.partition*, %struct.partition** %7, align 8
  %129 = call i64 @is_extended_partition(%struct.partition* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %157

131:                                              ; preds = %127
  store i32 2, i32* %13, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @max(i32 %133, i32 %134)
  %136 = call i32 @min(i32 %132, i32 %135)
  store i32 %136, i32* %13, align 4
  %137 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @put_partition(%struct.parsed_partitions* %137, i32 %138, i32 %139, i32 %140)
  %142 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %143 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @PAGE_SIZE, align 4
  %146 = call i32 @strlcat(i32 %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  %147 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @parse_extended(%struct.parsed_partitions* %147, i32 %148, i32 %149, i32 %150)
  %152 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %153 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @PAGE_SIZE, align 4
  %156 = call i32 @strlcat(i32 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %155)
  br label %209

157:                                              ; preds = %127
  %158 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @put_partition(%struct.parsed_partitions* %158, i32 %159, i32 %160, i32 %161)
  %163 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @set_info(%struct.parsed_partitions* %163, i32 %164, i32 %165)
  %167 = load %struct.partition*, %struct.partition** %7, align 8
  %168 = call zeroext i8 @SYS_IND(%struct.partition* %167)
  %169 = zext i8 %168 to i32
  %170 = load i8, i8* @LINUX_RAID_PARTITION, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %157
  %174 = load i32, i32* @ADDPART_FLAG_RAID, align 4
  %175 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %176 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %175, i32 0, i32 2
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i32 %174, i32* %181, align 4
  br label %182

182:                                              ; preds = %173, %157
  %183 = load %struct.partition*, %struct.partition** %7, align 8
  %184 = call zeroext i8 @SYS_IND(%struct.partition* %183)
  %185 = zext i8 %184 to i32
  %186 = load i8, i8* @DM6_PARTITION, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp eq i32 %185, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %182
  %190 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %191 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @PAGE_SIZE, align 4
  %194 = call i32 @strlcat(i32 %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %189, %182
  %196 = load %struct.partition*, %struct.partition** %7, align 8
  %197 = call zeroext i8 @SYS_IND(%struct.partition* %196)
  %198 = zext i8 %197 to i32
  %199 = load i8, i8* @EZD_PARTITION, align 1
  %200 = zext i8 %199 to i32
  %201 = icmp eq i32 %198, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %195
  %203 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %204 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @PAGE_SIZE, align 4
  %207 = call i32 @strlcat(i32 %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %202, %195
  br label %209

209:                                              ; preds = %208, %131, %126
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %9, align 4
  %212 = load %struct.partition*, %struct.partition** %7, align 8
  %213 = getelementptr inbounds %struct.partition, %struct.partition* %212, i32 1
  store %struct.partition* %213, %struct.partition** %7, align 8
  br label %112

214:                                              ; preds = %112
  %215 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %216 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @PAGE_SIZE, align 4
  %219 = call i32 @strlcat(i32 %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %218)
  %220 = load i8*, i8** %6, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 446
  %222 = bitcast i8* %221 to %struct.partition*
  store %struct.partition* %222, %struct.partition** %7, align 8
  store i32 1, i32* %9, align 4
  br label %223

223:                                              ; preds = %286, %214
  %224 = load i32, i32* %9, align 4
  %225 = icmp sle i32 %224, 4
  br i1 %225, label %226, label %291

226:                                              ; preds = %223
  %227 = load %struct.partition*, %struct.partition** %7, align 8
  %228 = call zeroext i8 @SYS_IND(%struct.partition* %227)
  store i8 %228, i8* %14, align 1
  %229 = load %struct.partition*, %struct.partition** %7, align 8
  %230 = call i32 @nr_sects(%struct.partition* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %226
  br label %286

233:                                              ; preds = %226
  store i32 0, i32* %15, align 4
  br label %234

234:                                              ; preds = %256, %233
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** @subtypes, align 8
  %236 = load i32, i32* %15, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  %240 = load i32 (%struct.parsed_partitions*, i32, i32, i32)*, i32 (%struct.parsed_partitions*, i32, i32, i32)** %239, align 8
  %241 = icmp ne i32 (%struct.parsed_partitions*, i32, i32, i32)* %240, null
  br i1 %241, label %242, label %253

242:                                              ; preds = %234
  %243 = load i8, i8* %14, align 1
  %244 = zext i8 %243 to i32
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** @subtypes, align 8
  %246 = load i32, i32* %15, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i8, i8* %249, align 8
  %251 = zext i8 %250 to i32
  %252 = icmp ne i32 %244, %251
  br label %253

253:                                              ; preds = %242, %234
  %254 = phi i1 [ false, %234 ], [ %252, %242 ]
  br i1 %254, label %255, label %259

255:                                              ; preds = %253
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %15, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %15, align 4
  br label %234

259:                                              ; preds = %253
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** @subtypes, align 8
  %261 = load i32, i32* %15, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 1
  %265 = load i32 (%struct.parsed_partitions*, i32, i32, i32)*, i32 (%struct.parsed_partitions*, i32, i32, i32)** %264, align 8
  %266 = icmp ne i32 (%struct.parsed_partitions*, i32, i32, i32)* %265, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %259
  br label %286

268:                                              ; preds = %259
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** @subtypes, align 8
  %270 = load i32, i32* %15, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 1
  %274 = load i32 (%struct.parsed_partitions*, i32, i32, i32)*, i32 (%struct.parsed_partitions*, i32, i32, i32)** %273, align 8
  %275 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %276 = load %struct.partition*, %struct.partition** %7, align 8
  %277 = call i32 @start_sect(%struct.partition* %276)
  %278 = load i32, i32* %4, align 4
  %279 = mul nsw i32 %277, %278
  %280 = load %struct.partition*, %struct.partition** %7, align 8
  %281 = call i32 @nr_sects(%struct.partition* %280)
  %282 = load i32, i32* %4, align 4
  %283 = mul nsw i32 %281, %282
  %284 = load i32, i32* %9, align 4
  %285 = call i32 %274(%struct.parsed_partitions* %275, i32 %279, i32 %283, i32 %284)
  br label %286

286:                                              ; preds = %268, %267, %232
  %287 = load i32, i32* %9, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %9, align 4
  %289 = load %struct.partition*, %struct.partition** %7, align 8
  %290 = getelementptr inbounds %struct.partition, %struct.partition* %289, i32 1
  store %struct.partition* %290, %struct.partition** %7, align 8
  br label %223

291:                                              ; preds = %223
  %292 = load i32, i32* %5, align 4
  %293 = call i32 @put_dev_sector(i32 %292)
  store i32 1, i32* %2, align 4
  br label %294

294:                                              ; preds = %291, %93, %85, %44, %31, %25
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local i8* @read_part_sector(%struct.parsed_partitions*, i32, i32*) #1

declare dso_local i64 @aix_magic_present(%struct.parsed_partitions*, i8*) #1

declare dso_local i32 @put_dev_sector(i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @msdos_magic_present(i8*) #1

declare dso_local i64 @fat_valid_media(i32) #1

declare dso_local i32 @le32_to_cpup(i32*) #1

declare dso_local i32 @start_sect(%struct.partition*) #1

declare dso_local i32 @nr_sects(%struct.partition*) #1

declare dso_local i64 @is_extended_partition(%struct.partition*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #1

declare dso_local i32 @parse_extended(%struct.parsed_partitions*, i32, i32, i32) #1

declare dso_local i32 @set_info(%struct.parsed_partitions*, i32, i32) #1

declare dso_local zeroext i8 @SYS_IND(%struct.partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
