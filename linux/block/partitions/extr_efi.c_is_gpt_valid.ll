; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_efi.c_is_gpt_valid.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_efi.c_is_gpt_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GPT_HEADER_SIGNATURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"GUID Partition Table Header signature is wrong:%lld != %lld\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"GUID Partition Table Header size is too large: %u > %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"GUID Partition Table Header size is too small: %u < %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"GUID Partition Table Header CRC is wrong: %x != %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"GPT my_lba incorrect: %lld != %lld\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"GPT: first_usable_lba incorrect: %lld > %lld\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"GPT: last_usable_lba incorrect: %lld > %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"GUID Partition Entry Size check failed.\0A\00", align 1
@KMALLOC_MAX_SIZE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [53 x i8] c"GUID Partition Table is too large: %llu > %lu bytes\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"GUID Partition Entry Array CRC check failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_partitions*, i64, %struct.TYPE_9__**, %struct.TYPE_9__**)* @is_gpt_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_gpt_valid(%struct.parsed_partitions* %0, i64 %1, %struct.TYPE_9__** %2, %struct.TYPE_9__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parsed_partitions*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__** %3, %struct.TYPE_9__*** %9, align 8
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %15 = icmp ne %struct.TYPE_9__** %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %244

17:                                               ; preds = %4
  %18 = load %struct.parsed_partitions*, %struct.parsed_partitions** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call %struct.TYPE_9__* @alloc_read_gpt_header(%struct.parsed_partitions* %18, i64 %19)
  %21 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %21, align 8
  %22 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %244

24:                                               ; preds = %17
  %25 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le64_to_cpu(i32 %28)
  %30 = load i64, i64* @GPT_HEADER_SIGNATURE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le64_to_cpu(i32 %36)
  %38 = load i64, i64* @GPT_HEADER_SIGNATURE, align 8
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %38)
  br label %239

40:                                               ; preds = %24
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le32_to_cpu(i32 %44)
  %46 = load %struct.parsed_partitions*, %struct.parsed_partitions** %6, align 8
  %47 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @bdev_logical_block_size(i32 %48)
  %50 = icmp sgt i64 %45, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %40
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le32_to_cpu(i32 %55)
  %57 = load %struct.parsed_partitions*, %struct.parsed_partitions** %6, align 8
  %58 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @bdev_logical_block_size(i32 %59)
  %61 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %56, i64 %60)
  br label %239

62:                                               ; preds = %40
  %63 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @le32_to_cpu(i32 %66)
  %68 = icmp ult i64 %67, 36
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @le32_to_cpu(i32 %73)
  %75 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %74, i64 36)
  br label %239

76:                                               ; preds = %62
  %77 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le32_to_cpu(i32 %80)
  store i64 %81, i64* %11, align 8
  %82 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 6
  store i32 0, i32* %84, align 4
  %85 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = bitcast %struct.TYPE_9__* %86 to i8*
  %88 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @le32_to_cpu(i32 %91)
  %93 = call i64 @efi_crc32(i8* %87, i64 %92)
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %11, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %76
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i64 %98, i64 %99)
  br label %239

101:                                              ; preds = %76
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @cpu_to_le32(i64 %102)
  %104 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 6
  store i32 %103, i32* %106, align 4
  %107 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @le64_to_cpu(i32 %110)
  %112 = load i64, i64* %7, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %101
  %115 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @le64_to_cpu(i32 %118)
  %120 = load i64, i64* %7, align 8
  %121 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %119, i64 %120)
  br label %239

122:                                              ; preds = %101
  %123 = load %struct.parsed_partitions*, %struct.parsed_partitions** %6, align 8
  %124 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @last_lba(i32 %125)
  store i64 %126, i64* %12, align 8
  %127 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @le64_to_cpu(i32 %130)
  %132 = load i64, i64* %12, align 8
  %133 = icmp sgt i64 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %122
  %135 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @le64_to_cpu(i32 %138)
  %140 = load i64, i64* %12, align 8
  %141 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %139, i64 %140)
  br label %239

142:                                              ; preds = %122
  %143 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @le64_to_cpu(i32 %146)
  %148 = load i64, i64* %12, align 8
  %149 = icmp sgt i64 %147, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %142
  %151 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @le64_to_cpu(i32 %154)
  %156 = load i64, i64* %12, align 8
  %157 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i64 %155, i64 %156)
  br label %239

158:                                              ; preds = %142
  %159 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @le64_to_cpu(i32 %162)
  %164 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @le64_to_cpu(i32 %167)
  %169 = icmp slt i64 %163, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %158
  %171 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @le64_to_cpu(i32 %174)
  %176 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @le64_to_cpu(i32 %179)
  %181 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i64 %175, i64 %180)
  br label %239

182:                                              ; preds = %158
  %183 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @le32_to_cpu(i32 %186)
  %188 = icmp ne i64 %187, 36
  br i1 %188, label %189, label %191

189:                                              ; preds = %182
  %190 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %239

191:                                              ; preds = %182
  %192 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @le32_to_cpu(i32 %195)
  %197 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @le32_to_cpu(i32 %200)
  %202 = mul nsw i64 %196, %201
  store i64 %202, i64* %13, align 8
  %203 = load i64, i64* %13, align 8
  %204 = load i64, i64* @KMALLOC_MAX_SIZE, align 8
  %205 = icmp sgt i64 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %191
  %207 = load i64, i64* %13, align 8
  %208 = load i64, i64* @KMALLOC_MAX_SIZE, align 8
  %209 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i64 %207, i64 %208)
  br label %239

210:                                              ; preds = %191
  %211 = load %struct.parsed_partitions*, %struct.parsed_partitions** %6, align 8
  %212 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = call %struct.TYPE_9__* @alloc_read_gpt_entries(%struct.parsed_partitions* %211, %struct.TYPE_9__* %213)
  %215 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* %214, %struct.TYPE_9__** %215, align 8
  %216 = icmp ne %struct.TYPE_9__* %214, null
  br i1 %216, label %218, label %217

217:                                              ; preds = %210
  br label %239

218:                                              ; preds = %210
  %219 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = bitcast %struct.TYPE_9__* %220 to i8*
  %222 = load i64, i64* %13, align 8
  %223 = call i64 @efi_crc32(i8* %221, i64 %222)
  store i64 %223, i64* %10, align 8
  %224 = load i64, i64* %10, align 8
  %225 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i64 @le32_to_cpu(i32 %228)
  %230 = icmp ne i64 %224, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %218
  %232 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  br label %234

233:                                              ; preds = %218
  store i32 1, i32* %5, align 4
  br label %244

234:                                              ; preds = %231
  %235 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %235, align 8
  %237 = call i32 @kfree(%struct.TYPE_9__* %236)
  %238 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %238, align 8
  br label %239

239:                                              ; preds = %234, %217, %206, %189, %170, %150, %134, %114, %97, %69, %51, %32
  %240 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %240, align 8
  %242 = call i32 @kfree(%struct.TYPE_9__* %241)
  %243 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %243, align 8
  store i32 0, i32* %5, align 4
  br label %244

244:                                              ; preds = %239, %233, %23, %16
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

declare dso_local %struct.TYPE_9__* @alloc_read_gpt_header(%struct.parsed_partitions*, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @bdev_logical_block_size(i32) #1

declare dso_local i64 @efi_crc32(i8*, i64) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @last_lba(i32) #1

declare dso_local %struct.TYPE_9__* @alloc_read_gpt_entries(%struct.parsed_partitions*, %struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
