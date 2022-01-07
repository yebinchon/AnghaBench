; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32, i32, i32, i32, i32, %struct.pci_dev*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i64, i64, i32 }
%struct.pci_dev = type { i32 }

@skd_major = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"memory alloc failure\0A\00", align 1
@SKD_DRVR_STATE_LOAD = common dso_local global i32 0, align 4
@skd_next_devno = common dso_local global i32 0, align 4
@skd_max_queue_depth = common dso_local global i8* null, align 8
@skd_sgs_per_request = common dso_local global i32 0, align 4
@skd_dbg_level = common dso_local global i32 0, align 4
@skd_start_queue = common dso_local global i32 0, align 4
@skd_completion_worker = common dso_local global i32 0, align 4
@SKD_N_FITMSG_BYTES = common dso_local global i32 0, align 4
@SKD_N_SPECIAL_FITMSG_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"skd-msgbuf\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"skd-msgbuf: %d < %zd\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"skd-sglist\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"skd-sglist: %d < %zd\0A\00", align 1
@SKD_N_INTERNAL_BYTES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"skd-databuf\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"skd-databuf: %d < %zd\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"skcomp\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"skmsg\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"sksb\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"disk\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"VICTORY\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"construct failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.skd_device* (%struct.pci_dev*)* @skd_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.skd_device* @skd_construct(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.skd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load i32, i32* @skd_major, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.skd_device* @kzalloc(i32 112, i32 %9)
  store %struct.skd_device* %10, %struct.skd_device** %4, align 8
  %11 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %12 = icmp ne %struct.skd_device* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.skd_device* null, %struct.skd_device** %2, align 8
  br label %200

17:                                               ; preds = %1
  %18 = load i32, i32* @SKD_DRVR_STATE_LOAD, align 4
  %19 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %20 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %19, i32 0, i32 17
  store i32 %18, i32* %20, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %23 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %22, i32 0, i32 5
  store %struct.pci_dev* %21, %struct.pci_dev** %23, align 8
  %24 = load i32, i32* @skd_next_devno, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @skd_next_devno, align 4
  %26 = sext i32 %24 to i64
  %27 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %28 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %27, i32 0, i32 16
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %31 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %33 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %32, i32 0, i32 15
  store i64 0, i64* %33, align 8
  %34 = load i8*, i8** @skd_max_queue_depth, align 8
  %35 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %36 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %35, i32 0, i32 14
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @skd_max_queue_depth, align 8
  %38 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %39 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %38, i32 0, i32 13
  store i8* %37, i8** %39, align 8
  %40 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %41 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %43 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  %44 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %45 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %44, i32 0, i32 3
  store i32 99, i32* %45, align 4
  %46 = load i32, i32* @skd_sgs_per_request, align 4
  %47 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %48 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @skd_dbg_level, align 4
  %50 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %51 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %50, i32 0, i32 12
  store i32 %49, i32* %51, align 4
  %52 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %53 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %52, i32 0, i32 11
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %56 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %55, i32 0, i32 10
  %57 = load i32, i32* @skd_start_queue, align 4
  %58 = call i32 @INIT_WORK(i32* %56, i32 %57)
  %59 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %60 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %59, i32 0, i32 9
  %61 = load i32, i32* @skd_completion_worker, align 4
  %62 = call i32 @INIT_WORK(i32* %60, i32 %61)
  %63 = load i32, i32* @SKD_N_FITMSG_BYTES, align 4
  %64 = load i32, i32* @SKD_N_SPECIAL_FITMSG_BYTES, align 4
  %65 = call i64 @max(i32 %63, i32 %64)
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %68 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32 0, i32 %67, i32* null)
  %69 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %70 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %69, i32 0, i32 8
  store i8* %68, i8** %70, align 8
  %71 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %72 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %71, i32 0, i32 8
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %17
  br label %192

76:                                               ; preds = %17
  %77 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %78 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %77, i32 0, i32 8
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @kmem_cache_size(i8* %79)
  %81 = load i64, i64* %6, align 8
  %82 = icmp ult i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %85 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %84, i32 0, i32 8
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @kmem_cache_size(i8* %86)
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @WARN_ONCE(i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %87, i64 %88)
  %90 = load i32, i32* @skd_sgs_per_request, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  store i64 %92, i64* %6, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %95 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %93, i32 0, i32 %94, i32* null)
  %96 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %97 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %96, i32 0, i32 7
  store i8* %95, i8** %97, align 8
  %98 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %99 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %98, i32 0, i32 7
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %76
  br label %192

103:                                              ; preds = %76
  %104 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %105 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %104, i32 0, i32 7
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @kmem_cache_size(i8* %106)
  %108 = load i64, i64* %6, align 8
  %109 = icmp ult i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %112 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %111, i32 0, i32 7
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @kmem_cache_size(i8* %113)
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @WARN_ONCE(i32 %110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %114, i64 %115)
  %117 = load i64, i64* @SKD_N_INTERNAL_BYTES, align 8
  store i64 %117, i64* %6, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %120 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %118, i32 0, i32 %119, i32* null)
  %121 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %122 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  %123 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %124 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %123, i32 0, i32 6
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %103
  br label %192

128:                                              ; preds = %103
  %129 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %130 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %129, i32 0, i32 6
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @kmem_cache_size(i8* %131)
  %133 = load i64, i64* %6, align 8
  %134 = icmp ult i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %137 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %136, i32 0, i32 6
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @kmem_cache_size(i8* %138)
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @WARN_ONCE(i32 %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 %139, i64 %140)
  %142 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %143 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %142, i32 0, i32 5
  %144 = load %struct.pci_dev*, %struct.pci_dev** %143, align 8
  %145 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %144, i32 0, i32 0
  %146 = call i32 @dev_dbg(i32* %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %147 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %148 = call i32 @skd_cons_skcomp(%struct.skd_device* %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %128
  br label %192

152:                                              ; preds = %128
  %153 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %154 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %153, i32 0, i32 5
  %155 = load %struct.pci_dev*, %struct.pci_dev** %154, align 8
  %156 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %155, i32 0, i32 0
  %157 = call i32 @dev_dbg(i32* %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %158 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %159 = call i32 @skd_cons_skmsg(%struct.skd_device* %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %192

163:                                              ; preds = %152
  %164 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %165 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %164, i32 0, i32 5
  %166 = load %struct.pci_dev*, %struct.pci_dev** %165, align 8
  %167 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %166, i32 0, i32 0
  %168 = call i32 @dev_dbg(i32* %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %169 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %170 = call i32 @skd_cons_sksb(%struct.skd_device* %169)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  br label %192

174:                                              ; preds = %163
  %175 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %176 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %175, i32 0, i32 5
  %177 = load %struct.pci_dev*, %struct.pci_dev** %176, align 8
  %178 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %177, i32 0, i32 0
  %179 = call i32 @dev_dbg(i32* %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %180 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %181 = call i32 @skd_cons_disk(%struct.skd_device* %180)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %174
  br label %192

185:                                              ; preds = %174
  %186 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %187 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %186, i32 0, i32 5
  %188 = load %struct.pci_dev*, %struct.pci_dev** %187, align 8
  %189 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %188, i32 0, i32 0
  %190 = call i32 @dev_dbg(i32* %189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %191 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  store %struct.skd_device* %191, %struct.skd_device** %2, align 8
  br label %200

192:                                              ; preds = %184, %173, %162, %151, %127, %102, %75
  %193 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %194 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %193, i32 0, i32 5
  %195 = load %struct.pci_dev*, %struct.pci_dev** %194, align 8
  %196 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %195, i32 0, i32 0
  %197 = call i32 @dev_dbg(i32* %196, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %198 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %199 = call i32 @skd_destruct(%struct.skd_device* %198)
  store %struct.skd_device* null, %struct.skd_device** %2, align 8
  br label %200

200:                                              ; preds = %192, %185, %13
  %201 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  ret %struct.skd_device* %201
}

declare dso_local %struct.skd_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i8* @kmem_cache_create(i8*, i64, i32, i32, i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64, i64) #1

declare dso_local i64 @kmem_cache_size(i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @skd_cons_skcomp(%struct.skd_device*) #1

declare dso_local i32 @skd_cons_skmsg(%struct.skd_device*) #1

declare dso_local i32 @skd_cons_sksb(%struct.skd_device*) #1

declare dso_local i32 @skd_cons_disk(%struct.skd_device*) #1

declare dso_local i32 @skd_destruct(%struct.skd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
