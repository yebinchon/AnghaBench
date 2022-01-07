; ModuleID = '/home/carl/AnghaBench/linux/block/extr_partition-generic.c_add_partition.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_partition-generic.c_add_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hd_struct = type { i32, i32, %struct.partition_meta_info*, i32, i8*, i32, i32, i8*, i32 }
%struct.gendisk = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.partition_meta_info = type { i32 }
%struct.device = type { i32, i32, %struct.device*, i32*, i32* }
%struct.disk_part_tbl = type { i64* }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%sp%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@block_class = common dso_local global i32 0, align 4
@part_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"holders\00", align 1
@ADDPART_FLAG_WHOLEDISK = common dso_local global i32 0, align 4
@dev_attr_whole_disk = common dso_local global i32 0, align 4
@KOBJ_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hd_struct* @add_partition(%struct.gendisk* %0, i32 %1, i8* %2, i8* %3, i32 %4, %struct.partition_meta_info* %5) #0 {
  %7 = alloca %struct.hd_struct*, align 8
  %8 = alloca %struct.gendisk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.partition_meta_info*, align 8
  %14 = alloca %struct.hd_struct*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.device*, align 8
  %17 = alloca %struct.device*, align 8
  %18 = alloca %struct.disk_part_tbl*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.partition_meta_info*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.partition_meta_info* %5, %struct.partition_meta_info** %13, align 8
  %22 = call i32 @MKDEV(i32 0, i32 0)
  store i32 %22, i32* %15, align 4
  %23 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %24 = call %struct.device* @disk_to_dev(%struct.gendisk* %23)
  store %struct.device* %24, %struct.device** %16, align 8
  %25 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @disk_expand_part_tbl(%struct.gendisk* %25, i32 %26)
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %20, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* %20, align 4
  %32 = call %struct.hd_struct* @ERR_PTR(i32 %31)
  store %struct.hd_struct* %32, %struct.hd_struct** %7, align 8
  br label %251

33:                                               ; preds = %6
  %34 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %35 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.disk_part_tbl* @rcu_dereference_protected(i32 %36, i32 1)
  store %struct.disk_part_tbl* %37, %struct.disk_part_tbl** %18, align 8
  %38 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %18, align 8
  %39 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.hd_struct* @ERR_PTR(i32 %48)
  store %struct.hd_struct* %49, %struct.hd_struct** %7, align 8
  br label %251

50:                                               ; preds = %33
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.hd_struct* @kzalloc(i32 56, i32 %51)
  store %struct.hd_struct* %52, %struct.hd_struct** %14, align 8
  %53 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %54 = icmp ne %struct.hd_struct* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.hd_struct* @ERR_PTR(i32 %57)
  store %struct.hd_struct* %58, %struct.hd_struct** %7, align 8
  br label %251

59:                                               ; preds = %50
  %60 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %61 = call i32 @init_part_stats(%struct.hd_struct* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %20, align 4
  br label %231

66:                                               ; preds = %59
  %67 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %68 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %67, i32 0, i32 8
  %69 = call i32 @seqcount_init(i32* %68)
  %70 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %71 = call %struct.device* @part_to_dev(%struct.hd_struct* %70)
  store %struct.device* %71, %struct.device** %17, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %74 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %73, i32 0, i32 7
  store i8* %72, i8** %74, align 8
  %75 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %76 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @queue_limit_alignment_offset(i32* %78, i8* %79)
  %81 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %82 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %84 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @queue_limit_discard_alignment(i32* %86, i8* %87)
  %89 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %90 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %93 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %96 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %98 = call i32 @get_disk_ro(%struct.gendisk* %97)
  %99 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %100 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  %101 = load %struct.partition_meta_info*, %struct.partition_meta_info** %13, align 8
  %102 = icmp ne %struct.partition_meta_info* %101, null
  br i1 %102, label %103, label %118

103:                                              ; preds = %66
  %104 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %105 = call %struct.partition_meta_info* @alloc_part_info(%struct.gendisk* %104)
  store %struct.partition_meta_info* %105, %struct.partition_meta_info** %21, align 8
  %106 = load %struct.partition_meta_info*, %struct.partition_meta_info** %21, align 8
  %107 = icmp ne %struct.partition_meta_info* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %20, align 4
  br label %228

111:                                              ; preds = %103
  %112 = load %struct.partition_meta_info*, %struct.partition_meta_info** %21, align 8
  %113 = load %struct.partition_meta_info*, %struct.partition_meta_info** %13, align 8
  %114 = call i32 @memcpy(%struct.partition_meta_info* %112, %struct.partition_meta_info* %113, i32 4)
  %115 = load %struct.partition_meta_info*, %struct.partition_meta_info** %21, align 8
  %116 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %117 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %116, i32 0, i32 2
  store %struct.partition_meta_info* %115, %struct.partition_meta_info** %117, align 8
  br label %118

118:                                              ; preds = %111, %66
  %119 = load %struct.device*, %struct.device** %16, align 8
  %120 = call i8* @dev_name(%struct.device* %119)
  store i8* %120, i8** %19, align 8
  %121 = load i8*, i8** %19, align 8
  %122 = load i8*, i8** %19, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %121, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = call i64 @isdigit(i8 signext %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %118
  %131 = load %struct.device*, %struct.device** %17, align 8
  %132 = load i8*, i8** %19, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @dev_set_name(%struct.device* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %132, i32 %133)
  br label %140

135:                                              ; preds = %118
  %136 = load %struct.device*, %struct.device** %17, align 8
  %137 = load i8*, i8** %19, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @dev_set_name(%struct.device* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %137, i32 %138)
  br label %140

140:                                              ; preds = %135, %130
  %141 = load %struct.device*, %struct.device** %17, align 8
  %142 = call i32 @device_initialize(%struct.device* %141)
  %143 = load %struct.device*, %struct.device** %17, align 8
  %144 = getelementptr inbounds %struct.device, %struct.device* %143, i32 0, i32 4
  store i32* @block_class, i32** %144, align 8
  %145 = load %struct.device*, %struct.device** %17, align 8
  %146 = getelementptr inbounds %struct.device, %struct.device* %145, i32 0, i32 3
  store i32* @part_type, i32** %146, align 8
  %147 = load %struct.device*, %struct.device** %16, align 8
  %148 = load %struct.device*, %struct.device** %17, align 8
  %149 = getelementptr inbounds %struct.device, %struct.device* %148, i32 0, i32 2
  store %struct.device* %147, %struct.device** %149, align 8
  %150 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %151 = call i32 @blk_alloc_devt(%struct.hd_struct* %150, i32* %15)
  store i32 %151, i32* %20, align 4
  %152 = load i32, i32* %20, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %140
  br label %225

155:                                              ; preds = %140
  %156 = load i32, i32* %15, align 4
  %157 = load %struct.device*, %struct.device** %17, align 8
  %158 = getelementptr inbounds %struct.device, %struct.device* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.device*, %struct.device** %17, align 8
  %160 = call i32 @dev_set_uevent_suppress(%struct.device* %159, i32 1)
  %161 = load %struct.device*, %struct.device** %17, align 8
  %162 = call i32 @device_add(%struct.device* %161)
  store i32 %162, i32* %20, align 4
  %163 = load i32, i32* %20, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %155
  br label %246

166:                                              ; preds = %155
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %20, align 4
  %169 = load %struct.device*, %struct.device** %17, align 8
  %170 = getelementptr inbounds %struct.device, %struct.device* %169, i32 0, i32 0
  %171 = call i32 @kobject_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %170)
  %172 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %173 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %175 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %166
  br label %239

179:                                              ; preds = %166
  %180 = load %struct.device*, %struct.device** %17, align 8
  %181 = call i32 @dev_set_uevent_suppress(%struct.device* %180, i32 0)
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @ADDPART_FLAG_WHOLEDISK, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %179
  %187 = load %struct.device*, %struct.device** %17, align 8
  %188 = call i32 @device_create_file(%struct.device* %187, i32* @dev_attr_whole_disk)
  store i32 %188, i32* %20, align 4
  %189 = load i32, i32* %20, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %239

192:                                              ; preds = %186
  br label %193

193:                                              ; preds = %192, %179
  %194 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %195 = call i32 @hd_ref_init(%struct.hd_struct* %194)
  store i32 %195, i32* %20, align 4
  %196 = load i32, i32* %20, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %193
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @ADDPART_FLAG_WHOLEDISK, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %236

204:                                              ; preds = %198
  br label %239

205:                                              ; preds = %193
  %206 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %18, align 8
  %207 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %206, i32 0, i32 0
  %208 = load i64*, i64** %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %208, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %214 = call i32 @rcu_assign_pointer(i64 %212, %struct.hd_struct* %213)
  %215 = load %struct.device*, %struct.device** %16, align 8
  %216 = call i32 @dev_get_uevent_suppress(%struct.device* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %205
  %219 = load %struct.device*, %struct.device** %17, align 8
  %220 = getelementptr inbounds %struct.device, %struct.device* %219, i32 0, i32 0
  %221 = load i32, i32* @KOBJ_ADD, align 4
  %222 = call i32 @kobject_uevent(i32* %220, i32 %221)
  br label %223

223:                                              ; preds = %218, %205
  %224 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  store %struct.hd_struct* %224, %struct.hd_struct** %7, align 8
  br label %251

225:                                              ; preds = %154
  %226 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %227 = call i32 @free_part_info(%struct.hd_struct* %226)
  br label %228

228:                                              ; preds = %225, %108
  %229 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %230 = call i32 @free_part_stats(%struct.hd_struct* %229)
  br label %231

231:                                              ; preds = %228, %63
  %232 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %233 = call i32 @kfree(%struct.hd_struct* %232)
  %234 = load i32, i32* %20, align 4
  %235 = call %struct.hd_struct* @ERR_PTR(i32 %234)
  store %struct.hd_struct* %235, %struct.hd_struct** %7, align 8
  br label %251

236:                                              ; preds = %203
  %237 = load %struct.device*, %struct.device** %17, align 8
  %238 = call i32 @device_remove_file(%struct.device* %237, i32* @dev_attr_whole_disk)
  br label %239

239:                                              ; preds = %236, %204, %191, %178
  %240 = load %struct.hd_struct*, %struct.hd_struct** %14, align 8
  %241 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @kobject_put(i32 %242)
  %244 = load %struct.device*, %struct.device** %17, align 8
  %245 = call i32 @device_del(%struct.device* %244)
  br label %246

246:                                              ; preds = %239, %165
  %247 = load %struct.device*, %struct.device** %17, align 8
  %248 = call i32 @put_device(%struct.device* %247)
  %249 = load i32, i32* %20, align 4
  %250 = call %struct.hd_struct* @ERR_PTR(i32 %249)
  store %struct.hd_struct* %250, %struct.hd_struct** %7, align 8
  br label %251

251:                                              ; preds = %246, %231, %223, %55, %46, %30
  %252 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  ret %struct.hd_struct* %252
}

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local %struct.device* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i32 @disk_expand_part_tbl(%struct.gendisk*, i32) #1

declare dso_local %struct.hd_struct* @ERR_PTR(i32) #1

declare dso_local %struct.disk_part_tbl* @rcu_dereference_protected(i32, i32) #1

declare dso_local %struct.hd_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @init_part_stats(%struct.hd_struct*) #1

declare dso_local i32 @seqcount_init(i32*) #1

declare dso_local %struct.device* @part_to_dev(%struct.hd_struct*) #1

declare dso_local i32 @queue_limit_alignment_offset(i32*, i8*) #1

declare dso_local i32 @queue_limit_discard_alignment(i32*, i8*) #1

declare dso_local i32 @get_disk_ro(%struct.gendisk*) #1

declare dso_local %struct.partition_meta_info* @alloc_part_info(%struct.gendisk*) #1

declare dso_local i32 @memcpy(%struct.partition_meta_info*, %struct.partition_meta_info*, i32) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @blk_alloc_devt(%struct.hd_struct*, i32*) #1

declare dso_local i32 @dev_set_uevent_suppress(%struct.device*, i32) #1

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @kobject_create_and_add(i8*, i32*) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @hd_ref_init(%struct.hd_struct*) #1

declare dso_local i32 @rcu_assign_pointer(i64, %struct.hd_struct*) #1

declare dso_local i32 @dev_get_uevent_suppress(%struct.device*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @free_part_info(%struct.hd_struct*) #1

declare dso_local i32 @free_part_stats(%struct.hd_struct*) #1

declare dso_local i32 @kfree(%struct.hd_struct*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

declare dso_local i32 @kobject_put(i32) #1

declare dso_local i32 @device_del(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
