; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_blkbk_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_blkbk_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backend_info = type { %struct.xen_blkif*, %struct.xenbus_device* }
%struct.xen_blkif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.block_device* }
%struct.block_device = type { i32 }
%struct.xenbus_device = type { i32, i32 }
%struct.xenbus_transaction = type { i32 }
%struct.request_queue = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"discard-enable\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"discard-granularity\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"writing discard-granularity (%d)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"discard-alignment\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"writing discard-alignment (%d)\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"discard-secure\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"writing discard-secure (%d)\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"feature-discard\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"writing feature-discard (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.backend_info*)* @xen_blkbk_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_blkbk_discard(i32 %0, %struct.backend_info* %1) #0 {
  %3 = alloca %struct.xenbus_transaction, align 4
  %4 = alloca %struct.backend_info*, align 8
  %5 = alloca %struct.xenbus_device*, align 8
  %6 = alloca %struct.xen_blkif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.block_device*, align 8
  %10 = alloca %struct.request_queue*, align 8
  %11 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %3, i32 0, i32 0
  store i32 %0, i32* %11, align 4
  store %struct.backend_info* %1, %struct.backend_info** %4, align 8
  %12 = load %struct.backend_info*, %struct.backend_info** %4, align 8
  %13 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %12, i32 0, i32 1
  %14 = load %struct.xenbus_device*, %struct.xenbus_device** %13, align 8
  store %struct.xenbus_device* %14, %struct.xenbus_device** %5, align 8
  %15 = load %struct.backend_info*, %struct.backend_info** %4, align 8
  %16 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %15, i32 0, i32 0
  %17 = load %struct.xen_blkif*, %struct.xen_blkif** %16, align 8
  store %struct.xen_blkif* %17, %struct.xen_blkif** %6, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.backend_info*, %struct.backend_info** %4, align 8
  %19 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %18, i32 0, i32 0
  %20 = load %struct.xen_blkif*, %struct.xen_blkif** %19, align 8
  %21 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.block_device*, %struct.block_device** %22, align 8
  store %struct.block_device* %23, %struct.block_device** %9, align 8
  %24 = load %struct.block_device*, %struct.block_device** %9, align 8
  %25 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %24)
  store %struct.request_queue* %25, %struct.request_queue** %10, align 8
  %26 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %27 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @xenbus_read_unsigned(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  br label %106

32:                                               ; preds = %2
  %33 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %34 = call i64 @blk_queue_discard(%struct.request_queue* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %91

36:                                               ; preds = %32
  %37 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %38 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %41 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @xenbus_printf(i32 %45, i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  %50 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %51 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %50, i32 0, i32 0
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %106

54:                                               ; preds = %36
  %55 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %56 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %59 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %3, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @xenbus_printf(i32 %63, i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %54
  %68 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %69 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %68, i32 0, i32 0
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @dev_warn(i32* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  br label %106

72:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  %73 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %74 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.xen_blkif*, %struct.xen_blkif** %6, align 8
  %77 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %3, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @xenbus_printf(i32 %81, i32 %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %79)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %72
  %86 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %87 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %86, i32 0, i32 0
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @dev_warn(i32* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %88)
  br label %106

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90, %32
  %92 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %93 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %3, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @xenbus_printf(i32 %97, i32 %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %103 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %102, i32 0, i32 0
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @dev_warn(i32* %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %31, %49, %67, %85, %101, %91
  ret void
}

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @xenbus_read_unsigned(i32, i8*, i32) #1

declare dso_local i64 @blk_queue_discard(%struct.request_queue*) #1

declare dso_local i32 @xenbus_printf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
