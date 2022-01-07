; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_open_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_open_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.request_queue = type { i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_EXCL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pkt_get_last_written failed\0A\00", align 1
@PACKET_WRITABLE = common dso_local global i32 0, align 4
@MAX_SPEED = common dso_local global i32 0, align 4
@CONFIG_CDROM_PKTCDVD_BUFFERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"not enough memory for buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%lukB available on disc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktcdvd_device*, i64)* @pkt_open_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_open_dev(%struct.pktcdvd_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pktcdvd_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.request_queue*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %10 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bdget(i32 %13)
  %15 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %16 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = load i32, i32* @FMODE_READ, align 4
  %19 = load i32, i32* @FMODE_EXCL, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %22 = call i32 @blkdev_get(%struct.TYPE_7__* %17, i32 %20, %struct.pktcdvd_device* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %122

26:                                               ; preds = %2
  %27 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %28 = call i32 @pkt_get_last_written(%struct.pktcdvd_device* %27, i64* %7)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %33 = call i32 @pkt_err(%struct.pktcdvd_device* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %114

34:                                               ; preds = %26
  %35 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %36 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = shl i64 %38, 2
  %40 = call i32 @set_capacity(i32 %37, i64 %39)
  %41 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %42 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %7, align 8
  %47 = shl i64 %46, 2
  %48 = call i32 @set_capacity(i32 %45, i64 %47)
  %49 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %50 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %53, 11
  %55 = call i32 @bd_set_size(%struct.TYPE_7__* %51, i32 %54)
  %56 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %57 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = call %struct.request_queue* @bdev_get_queue(%struct.TYPE_7__* %58)
  store %struct.request_queue* %59, %struct.request_queue** %8, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %34
  %63 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %64 = call i32 @pkt_open_write(%struct.pktcdvd_device* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %114

68:                                               ; preds = %62
  %69 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %70 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %71 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %69, i32 %73)
  %75 = load i32, i32* @PACKET_WRITABLE, align 4
  %76 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %77 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %76, i32 0, i32 1
  %78 = call i32 @set_bit(i32 %75, i32* %77)
  br label %88

79:                                               ; preds = %34
  %80 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %81 = load i32, i32* @MAX_SPEED, align 4
  %82 = load i32, i32* @MAX_SPEED, align 4
  %83 = call i32 @pkt_set_speed(%struct.pktcdvd_device* %80, i32 %81, i32 %82)
  %84 = load i32, i32* @PACKET_WRITABLE, align 4
  %85 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %86 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %85, i32 0, i32 1
  %87 = call i32 @clear_bit(i32 %84, i32* %86)
  br label %88

88:                                               ; preds = %79, %68
  %89 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %90 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %91 = call i32 @pkt_set_segment_merging(%struct.pktcdvd_device* %89, %struct.request_queue* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %114

95:                                               ; preds = %88
  %96 = load i64, i64* %5, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %100 = load i32, i32* @CONFIG_CDROM_PKTCDVD_BUFFERS, align 4
  %101 = call i32 @pkt_grow_pktlist(%struct.pktcdvd_device* %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %105 = call i32 @pkt_err(%struct.pktcdvd_device* %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %114

108:                                              ; preds = %98
  %109 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %110 = load i64, i64* %7, align 8
  %111 = shl i64 %110, 1
  %112 = call i32 @pkt_info(%struct.pktcdvd_device* %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %111)
  br label %113

113:                                              ; preds = %108, %95
  store i32 0, i32* %3, align 4
  br label %124

114:                                              ; preds = %103, %94, %67, %31
  %115 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %116 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32, i32* @FMODE_READ, align 4
  %119 = load i32, i32* @FMODE_EXCL, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @blkdev_put(%struct.TYPE_7__* %117, i32 %120)
  br label %122

122:                                              ; preds = %114, %25
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %113
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @bdget(i32) #1

declare dso_local i32 @blkdev_get(%struct.TYPE_7__*, i32, %struct.pktcdvd_device*) #1

declare dso_local i32 @pkt_get_last_written(%struct.pktcdvd_device*, i64*) #1

declare dso_local i32 @pkt_err(%struct.pktcdvd_device*, i8*) #1

declare dso_local i32 @set_capacity(i32, i64) #1

declare dso_local i32 @bd_set_size(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.TYPE_7__*) #1

declare dso_local i32 @pkt_open_write(%struct.pktcdvd_device*) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pkt_set_speed(%struct.pktcdvd_device*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @pkt_set_segment_merging(%struct.pktcdvd_device*, %struct.request_queue*) #1

declare dso_local i32 @pkt_grow_pktlist(%struct.pktcdvd_device*, i32) #1

declare dso_local i32 @pkt_info(%struct.pktcdvd_device*, i8*, i64) #1

declare dso_local i32 @blkdev_put(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
