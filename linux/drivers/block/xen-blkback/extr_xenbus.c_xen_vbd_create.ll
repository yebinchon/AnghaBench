; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_vbd_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_vbd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif = type { i32, %struct.xen_vbd }
%struct.xen_vbd = type { i32, i32, i32, i32, %struct.block_device*, i32, i32, i32 }
%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.request_queue = type { i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"xen_vbd_create: device %08x could not be opened\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"xen_vbd_create: device %08x doesn't exist\0A\00", align 1
@GENHD_FL_CD = common dso_local global i32 0, align 4
@VDISK_CDROM = common dso_local global i32 0, align 4
@GENHD_FL_REMOVABLE = common dso_local global i32 0, align 4
@VDISK_REMOVABLE = common dso_local global i32 0, align 4
@QUEUE_FLAG_WC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Successful creation of handle=%04x (dom=%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_blkif*, i32, i32, i32, i32, i32)* @xen_vbd_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_vbd_create(%struct.xen_blkif* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xen_blkif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xen_vbd*, align 8
  %15 = alloca %struct.block_device*, align 8
  %16 = alloca %struct.request_queue*, align 8
  store %struct.xen_blkif* %0, %struct.xen_blkif** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.xen_blkif*, %struct.xen_blkif** %8, align 8
  %18 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %17, i32 0, i32 1
  store %struct.xen_vbd* %18, %struct.xen_vbd** %14, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %21 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %24 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %26 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %25, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @MKDEV(i32 %27, i32 %28)
  %30 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %31 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %33 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %36 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %6
  %40 = load i32, i32* @FMODE_READ, align 4
  br label %43

41:                                               ; preds = %6
  %42 = load i32, i32* @FMODE_WRITE, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call %struct.block_device* @blkdev_get_by_dev(i32 %34, i32 %44, i32* null)
  store %struct.block_device* %45, %struct.block_device** %15, align 8
  %46 = load %struct.block_device*, %struct.block_device** %15, align 8
  %47 = call i64 @IS_ERR(%struct.block_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %51 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %146

56:                                               ; preds = %43
  %57 = load %struct.block_device*, %struct.block_device** %15, align 8
  %58 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %59 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %58, i32 0, i32 4
  store %struct.block_device* %57, %struct.block_device** %59, align 8
  %60 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %61 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %60, i32 0, i32 4
  %62 = load %struct.block_device*, %struct.block_device** %61, align 8
  %63 = getelementptr inbounds %struct.block_device, %struct.block_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = icmp eq %struct.TYPE_2__* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %56
  %67 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %68 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %72 = call i32 @xen_vbd_free(%struct.xen_vbd* %71)
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %146

75:                                               ; preds = %56
  %76 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %77 = call i32 @vbd_sz(%struct.xen_vbd* %76)
  %78 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %79 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %81 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %80, i32 0, i32 4
  %82 = load %struct.block_device*, %struct.block_device** %81, align 8
  %83 = getelementptr inbounds %struct.block_device, %struct.block_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @GENHD_FL_CD, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %75
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90, %75
  %94 = load i32, i32* @VDISK_CDROM, align 4
  %95 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %96 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %90
  %100 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %101 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %100, i32 0, i32 4
  %102 = load %struct.block_device*, %struct.block_device** %101, align 8
  %103 = getelementptr inbounds %struct.block_device, %struct.block_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @GENHD_FL_REMOVABLE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %99
  %111 = load i32, i32* @VDISK_REMOVABLE, align 4
  %112 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %113 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %99
  %117 = load %struct.block_device*, %struct.block_device** %15, align 8
  %118 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %117)
  store %struct.request_queue* %118, %struct.request_queue** %16, align 8
  %119 = load %struct.request_queue*, %struct.request_queue** %16, align 8
  %120 = icmp ne %struct.request_queue* %119, null
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load i32, i32* @QUEUE_FLAG_WC, align 4
  %123 = load %struct.request_queue*, %struct.request_queue** %16, align 8
  %124 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %123, i32 0, i32 0
  %125 = call i64 @test_bit(i32 %122, i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %129 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %128, i32 0, i32 1
  store i32 1, i32* %129, align 4
  br label %130

130:                                              ; preds = %127, %121, %116
  %131 = load %struct.request_queue*, %struct.request_queue** %16, align 8
  %132 = icmp ne %struct.request_queue* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load %struct.request_queue*, %struct.request_queue** %16, align 8
  %135 = call i64 @blk_queue_secure_erase(%struct.request_queue* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load %struct.xen_vbd*, %struct.xen_vbd** %14, align 8
  %139 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %138, i32 0, i32 2
  store i32 1, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %133, %130
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.xen_blkif*, %struct.xen_blkif** %8, align 8
  %143 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %144)
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %140, %66, %49
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local %struct.block_device* @blkdev_get_by_dev(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.block_device*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @xen_vbd_free(%struct.xen_vbd*) #1

declare dso_local i32 @vbd_sz(%struct.xen_vbd*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @blk_queue_secure_erase(%struct.request_queue*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
