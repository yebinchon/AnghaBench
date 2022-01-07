; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_set_fd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_set_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i64, i32, i32, i32, i32, i32, %struct.file*, i64, i32*, i32*, %struct.block_device* }
%struct.file = type { i32, %struct.TYPE_4__*, %struct.address_space* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.block_device = type { i32 }
%struct.TYPE_6__ = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@FMODE_EXCL = common dso_local global i32 0, align 4
@loop_ctl_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@Lo_unbound = common dso_local global i64 0, align 8
@FMODE_WRITE = common dso_local global i32 0, align 4
@LO_FLAGS_READ_ONLY = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@__GFP_IO = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@Lo_bound = common dso_local global i64 0, align 8
@part_shift = common dso_local global i64 0, align 8
@LO_FLAGS_PARTSCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, i32, %struct.block_device*, i32)* @loop_set_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_set_fd(%struct.loop_device* %0, i32 %1, %struct.block_device* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.loop_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.block_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.address_space*, align 8
  %13 = alloca %struct.block_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i16, align 2
  store %struct.loop_device* %0, %struct.loop_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.block_device* %2, %struct.block_device** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.block_device* null, %struct.block_device** %13, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = call i32 @__module_get(i32 %19)
  %21 = load i32, i32* @EBADF, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.file* @fget(i32 %23)
  store %struct.file* %24, %struct.file** %10, align 8
  %25 = load %struct.file*, %struct.file** %10, align 8
  %26 = icmp ne %struct.file* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %287

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @FMODE_EXCL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load %struct.block_device*, %struct.block_device** %8, align 8
  %35 = call %struct.block_device* @bd_start_claiming(%struct.block_device* %34, i32 (%struct.loop_device*, i32, %struct.block_device*, i32)* @loop_set_fd)
  store %struct.block_device* %35, %struct.block_device** %13, align 8
  %36 = load %struct.block_device*, %struct.block_device** %13, align 8
  %37 = call i64 @IS_ERR(%struct.block_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.block_device*, %struct.block_device** %13, align 8
  %41 = call i32 @PTR_ERR(%struct.block_device* %40)
  store i32 %41, i32* %15, align 4
  br label %284

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %28
  %44 = call i32 @mutex_lock_killable(i32* @loop_ctl_mutex)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %276

48:                                               ; preds = %43
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %15, align 4
  %51 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %52 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @Lo_unbound, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %274

57:                                               ; preds = %48
  %58 = load %struct.file*, %struct.file** %10, align 8
  %59 = load %struct.block_device*, %struct.block_device** %8, align 8
  %60 = call i32 @loop_validate_file(%struct.file* %58, %struct.block_device* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %274

64:                                               ; preds = %57
  %65 = load %struct.file*, %struct.file** %10, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 2
  %67 = load %struct.address_space*, %struct.address_space** %66, align 8
  store %struct.address_space* %67, %struct.address_space** %12, align 8
  %68 = load %struct.address_space*, %struct.address_space** %12, align 8
  %69 = getelementptr inbounds %struct.address_space, %struct.address_space* %68, i32 0, i32 0
  %70 = load %struct.inode*, %struct.inode** %69, align 8
  store %struct.inode* %70, %struct.inode** %11, align 8
  %71 = load %struct.file*, %struct.file** %10, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FMODE_WRITE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %64
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @FMODE_WRITE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.file*, %struct.file** %10, align 8
  %84 = getelementptr inbounds %struct.file, %struct.file* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %82, %77, %64
  %90 = load i32, i32* @LO_FLAGS_READ_ONLY, align 4
  %91 = load i32, i32* %14, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %89, %82
  %94 = load i32, i32* @EFBIG, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %15, align 4
  %96 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %97 = load %struct.file*, %struct.file** %10, align 8
  %98 = call i32 @get_loop_size(%struct.loop_device* %96, %struct.file* %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %274

105:                                              ; preds = %93
  %106 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %107 = call i32 @loop_prepare_queue(%struct.loop_device* %106)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %274

111:                                              ; preds = %105
  store i32 0, i32* %15, align 4
  %112 = load %struct.block_device*, %struct.block_device** %8, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @LO_FLAGS_READ_ONLY, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @set_device_ro(%struct.block_device* %112, i32 %117)
  %119 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %120 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %119, i32 0, i32 1
  store i32 0, i32* %120, align 8
  %121 = load %struct.block_device*, %struct.block_device** %8, align 8
  %122 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %123 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %122, i32 0, i32 10
  store %struct.block_device* %121, %struct.block_device** %123, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %126 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.file*, %struct.file** %10, align 8
  %128 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %129 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %128, i32 0, i32 6
  store %struct.file* %127, %struct.file** %129, align 8
  %130 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %131 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %130, i32 0, i32 9
  store i32* null, i32** %131, align 8
  %132 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %133 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %132, i32 0, i32 8
  store i32* null, i32** %133, align 8
  %134 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %135 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %134, i32 0, i32 7
  store i64 0, i64* %135, align 8
  %136 = load %struct.address_space*, %struct.address_space** %12, align 8
  %137 = call i32 @mapping_gfp_mask(%struct.address_space* %136)
  %138 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %139 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load %struct.address_space*, %struct.address_space** %12, align 8
  %141 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %142 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @__GFP_IO, align 4
  %145 = load i32, i32* @__GFP_FS, align 4
  %146 = or i32 %144, %145
  %147 = xor i32 %146, -1
  %148 = and i32 %143, %147
  %149 = call i32 @mapping_set_gfp_mask(%struct.address_space* %140, i32 %148)
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* @LO_FLAGS_READ_ONLY, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %111
  %155 = load %struct.file*, %struct.file** %10, align 8
  %156 = getelementptr inbounds %struct.file, %struct.file* %155, i32 0, i32 1
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %154
  %162 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %163 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @blk_queue_write_cache(i32 %164, i32 1, i32 0)
  br label %166

166:                                              ; preds = %161, %154, %111
  %167 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %168 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %167, i32 0, i32 6
  %169 = load %struct.file*, %struct.file** %168, align 8
  %170 = call i64 @io_is_direct(%struct.file* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %201

172:                                              ; preds = %166
  %173 = load %struct.inode*, %struct.inode** %11, align 8
  %174 = getelementptr inbounds %struct.inode, %struct.inode* %173, i32 0, i32 2
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %172
  %180 = load %struct.inode*, %struct.inode** %11, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 2
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call zeroext i16 @bdev_logical_block_size(i64 %184)
  store i16 %185, i16* %18, align 2
  %186 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %187 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = load i16, i16* %18, align 2
  %190 = call i32 @blk_queue_logical_block_size(i32 %188, i16 zeroext %189)
  %191 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %192 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = load i16, i16* %18, align 2
  %195 = call i32 @blk_queue_physical_block_size(i32 %193, i16 zeroext %194)
  %196 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %197 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = load i16, i16* %18, align 2
  %200 = call i32 @blk_queue_io_min(i32 %198, i16 zeroext %199)
  br label %201

201:                                              ; preds = %179, %172, %166
  %202 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %203 = call i32 @loop_update_rotational(%struct.loop_device* %202)
  %204 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %205 = call i32 @loop_update_dio(%struct.loop_device* %204)
  %206 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %207 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %16, align 4
  %210 = call i32 @set_capacity(i32 %208, i32 %209)
  %211 = load %struct.block_device*, %struct.block_device** %8, align 8
  %212 = load i32, i32* %16, align 4
  %213 = shl i32 %212, 9
  %214 = call i32 @bd_set_size(%struct.block_device* %211, i32 %213)
  %215 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %216 = call i32 @loop_sysfs_init(%struct.loop_device* %215)
  %217 = load %struct.block_device*, %struct.block_device** %8, align 8
  %218 = getelementptr inbounds %struct.block_device, %struct.block_device* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call %struct.TYPE_6__* @disk_to_dev(i32 %219)
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i32, i32* @KOBJ_CHANGE, align 4
  %223 = call i32 @kobject_uevent(i32* %221, i32 %222)
  %224 = load %struct.block_device*, %struct.block_device** %8, align 8
  %225 = load %struct.inode*, %struct.inode** %11, align 8
  %226 = getelementptr inbounds %struct.inode, %struct.inode* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @S_ISBLK(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %201
  %231 = load %struct.inode*, %struct.inode** %11, align 8
  %232 = getelementptr inbounds %struct.inode, %struct.inode* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @block_size(i32 %233)
  br label %237

235:                                              ; preds = %201
  %236 = load i32, i32* @PAGE_SIZE, align 4
  br label %237

237:                                              ; preds = %235, %230
  %238 = phi i32 [ %234, %230 ], [ %236, %235 ]
  %239 = call i32 @set_blocksize(%struct.block_device* %224, i32 %238)
  %240 = load i64, i64* @Lo_bound, align 8
  %241 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %242 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %241, i32 0, i32 0
  store i64 %240, i64* %242, align 8
  %243 = load i64, i64* @part_shift, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %237
  %246 = load i32, i32* @LO_FLAGS_PARTSCAN, align 4
  %247 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %248 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 4
  br label %251

251:                                              ; preds = %245, %237
  %252 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %253 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @LO_FLAGS_PARTSCAN, align 4
  %256 = and i32 %254, %255
  store i32 %256, i32* %17, align 4
  %257 = load %struct.block_device*, %struct.block_device** %8, align 8
  %258 = call i32 @bdgrab(%struct.block_device* %257)
  %259 = call i32 @mutex_unlock(i32* @loop_ctl_mutex)
  %260 = load i32, i32* %17, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %251
  %263 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %264 = load %struct.block_device*, %struct.block_device** %8, align 8
  %265 = call i32 @loop_reread_partitions(%struct.loop_device* %263, %struct.block_device* %264)
  br label %266

266:                                              ; preds = %262, %251
  %267 = load %struct.block_device*, %struct.block_device** %13, align 8
  %268 = icmp ne %struct.block_device* %267, null
  br i1 %268, label %269, label %273

269:                                              ; preds = %266
  %270 = load %struct.block_device*, %struct.block_device** %8, align 8
  %271 = load %struct.block_device*, %struct.block_device** %13, align 8
  %272 = call i32 @bd_abort_claiming(%struct.block_device* %270, %struct.block_device* %271, i32 (%struct.loop_device*, i32, %struct.block_device*, i32)* @loop_set_fd)
  br label %273

273:                                              ; preds = %269, %266
  store i32 0, i32* %5, align 4
  br label %291

274:                                              ; preds = %110, %104, %63, %56
  %275 = call i32 @mutex_unlock(i32* @loop_ctl_mutex)
  br label %276

276:                                              ; preds = %274, %47
  %277 = load %struct.block_device*, %struct.block_device** %13, align 8
  %278 = icmp ne %struct.block_device* %277, null
  br i1 %278, label %279, label %283

279:                                              ; preds = %276
  %280 = load %struct.block_device*, %struct.block_device** %8, align 8
  %281 = load %struct.block_device*, %struct.block_device** %13, align 8
  %282 = call i32 @bd_abort_claiming(%struct.block_device* %280, %struct.block_device* %281, i32 (%struct.loop_device*, i32, %struct.block_device*, i32)* @loop_set_fd)
  br label %283

283:                                              ; preds = %279, %276
  br label %284

284:                                              ; preds = %283, %39
  %285 = load %struct.file*, %struct.file** %10, align 8
  %286 = call i32 @fput(%struct.file* %285)
  br label %287

287:                                              ; preds = %284, %27
  %288 = load i32, i32* @THIS_MODULE, align 4
  %289 = call i32 @module_put(i32 %288)
  %290 = load i32, i32* %15, align 4
  store i32 %290, i32* %5, align 4
  br label %291

291:                                              ; preds = %287, %273
  %292 = load i32, i32* %5, align 4
  ret i32 %292
}

declare dso_local i32 @__module_get(i32) #1

declare dso_local %struct.file* @fget(i32) #1

declare dso_local %struct.block_device* @bd_start_claiming(%struct.block_device*, i32 (%struct.loop_device*, i32, %struct.block_device*, i32)*) #1

declare dso_local i64 @IS_ERR(%struct.block_device*) #1

declare dso_local i32 @PTR_ERR(%struct.block_device*) #1

declare dso_local i32 @mutex_lock_killable(i32*) #1

declare dso_local i32 @loop_validate_file(%struct.file*, %struct.block_device*) #1

declare dso_local i32 @get_loop_size(%struct.loop_device*, %struct.file*) #1

declare dso_local i32 @loop_prepare_queue(%struct.loop_device*) #1

declare dso_local i32 @set_device_ro(%struct.block_device*, i32) #1

declare dso_local i32 @mapping_gfp_mask(%struct.address_space*) #1

declare dso_local i32 @mapping_set_gfp_mask(%struct.address_space*, i32) #1

declare dso_local i32 @blk_queue_write_cache(i32, i32, i32) #1

declare dso_local i64 @io_is_direct(%struct.file*) #1

declare dso_local zeroext i16 @bdev_logical_block_size(i64) #1

declare dso_local i32 @blk_queue_logical_block_size(i32, i16 zeroext) #1

declare dso_local i32 @blk_queue_physical_block_size(i32, i16 zeroext) #1

declare dso_local i32 @blk_queue_io_min(i32, i16 zeroext) #1

declare dso_local i32 @loop_update_rotational(%struct.loop_device*) #1

declare dso_local i32 @loop_update_dio(%struct.loop_device*) #1

declare dso_local i32 @set_capacity(i32, i32) #1

declare dso_local i32 @bd_set_size(%struct.block_device*, i32) #1

declare dso_local i32 @loop_sysfs_init(%struct.loop_device*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @disk_to_dev(i32) #1

declare dso_local i32 @set_blocksize(%struct.block_device*, i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @block_size(i32) #1

declare dso_local i32 @bdgrab(%struct.block_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @loop_reread_partitions(%struct.loop_device*, %struct.block_device*) #1

declare dso_local i32 @bd_abort_claiming(%struct.block_device*, %struct.block_device*, i32 (%struct.loop_device*, i32, %struct.block_device*, i32)*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
