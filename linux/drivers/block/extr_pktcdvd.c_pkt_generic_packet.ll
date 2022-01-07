; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_generic_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_generic_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.packet_command = type { i64, i64, i32*, i32, i32 }
%struct.request_queue = type { i32 }
%struct.request = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@CGC_DATA_WRITE = common dso_local global i64 0, align 8
@REQ_OP_SCSI_OUT = common dso_local global i32 0, align 4
@REQ_OP_SCSI_IN = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@CDROM_PACKET_SIZE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@RQF_QUIET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktcdvd_device*, %struct.packet_command*)* @pkt_generic_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_generic_packet(%struct.pktcdvd_device* %0, %struct.packet_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pktcdvd_device*, align 8
  %5 = alloca %struct.packet_command*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %4, align 8
  store %struct.packet_command* %1, %struct.packet_command** %5, align 8
  %9 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %10 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call %struct.request_queue* @bdev_get_queue(%struct.TYPE_4__* %11)
  store %struct.request_queue* %12, %struct.request_queue** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %14 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %15 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CGC_DATA_WRITE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @REQ_OP_SCSI_OUT, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @REQ_OP_SCSI_IN, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call %struct.request* @blk_get_request(%struct.request_queue* %13, i32 %24, i32 0)
  store %struct.request* %25, %struct.request** %7, align 8
  %26 = load %struct.request*, %struct.request** %7, align 8
  %27 = call i64 @IS_ERR(%struct.request* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.request*, %struct.request** %7, align 8
  %31 = call i32 @PTR_ERR(%struct.request* %30)
  store i32 %31, i32* %3, align 4
  br label %109

32:                                               ; preds = %23
  %33 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %34 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %39 = load %struct.request*, %struct.request** %7, align 8
  %40 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %41 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %44 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @GFP_NOIO, align 4
  %47 = call i32 @blk_rq_map_kern(%struct.request_queue* %38, %struct.request* %39, i32 %42, i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %105

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %54 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @COMMAND_SIZE(i32 %57)
  %59 = load %struct.request*, %struct.request** %7, align 8
  %60 = call %struct.TYPE_3__* @scsi_req(%struct.request* %59)
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 4
  %62 = load %struct.request*, %struct.request** %7, align 8
  %63 = call %struct.TYPE_3__* @scsi_req(%struct.request* %62)
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %67 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @CDROM_PACKET_SIZE, align 4
  %70 = call i32 @memcpy(i32 %65, i32* %68, i32 %69)
  %71 = load i32, i32* @HZ, align 4
  %72 = mul nsw i32 60, %71
  %73 = load %struct.request*, %struct.request** %7, align 8
  %74 = getelementptr inbounds %struct.request, %struct.request* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %76 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %52
  %80 = load i32, i32* @RQF_QUIET, align 4
  %81 = load %struct.request*, %struct.request** %7, align 8
  %82 = getelementptr inbounds %struct.request, %struct.request* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %52
  %86 = load %struct.request*, %struct.request** %7, align 8
  %87 = getelementptr inbounds %struct.request, %struct.request* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %90 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.request*, %struct.request** %7, align 8
  %95 = call i32 @blk_execute_rq(i32 %88, i32 %93, %struct.request* %94, i32 0)
  %96 = load %struct.request*, %struct.request** %7, align 8
  %97 = call %struct.TYPE_3__* @scsi_req(%struct.request* %96)
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %85
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %101, %85
  br label %105

105:                                              ; preds = %104, %50
  %106 = load %struct.request*, %struct.request** %7, align 8
  %107 = call i32 @blk_put_request(%struct.request* %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %29
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.TYPE_4__*) #1

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i32 @PTR_ERR(%struct.request*) #1

declare dso_local i32 @blk_rq_map_kern(%struct.request_queue*, %struct.request*, i32, i32, i32) #1

declare dso_local i32 @COMMAND_SIZE(i32) #1

declare dso_local %struct.TYPE_3__* @scsi_req(%struct.request*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @blk_execute_rq(i32, i32, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
