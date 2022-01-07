; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_recover_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_recover_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.skd_device = type { i32 }
%struct.skd_request_context = type { i64, i64, i32 }

@SKD_REQ_STATE_BUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"recover\00", align 1
@SKD_REQ_STATE_IDLE = common dso_local global i64 0, align 8
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, i8*, i32)* @skd_recover_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_recover_request(%struct.request* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.skd_device*, align 8
  %9 = alloca %struct.skd_request_context*, align 8
  store %struct.request* %0, %struct.request** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.skd_device*
  store %struct.skd_device* %11, %struct.skd_device** %8, align 8
  %12 = load %struct.request*, %struct.request** %5, align 8
  %13 = call %struct.skd_request_context* @blk_mq_rq_to_pdu(%struct.request* %12)
  store %struct.skd_request_context* %13, %struct.skd_request_context** %9, align 8
  %14 = load %struct.skd_request_context*, %struct.skd_request_context** %9, align 8
  %15 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SKD_REQ_STATE_BUSY, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %41

20:                                               ; preds = %3
  %21 = load %struct.skd_device*, %struct.skd_device** %8, align 8
  %22 = load %struct.skd_request_context*, %struct.skd_request_context** %9, align 8
  %23 = call i32 @skd_log_skreq(%struct.skd_device* %21, %struct.skd_request_context* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.skd_request_context*, %struct.skd_request_context** %9, align 8
  %25 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.skd_device*, %struct.skd_device** %8, align 8
  %30 = load %struct.skd_request_context*, %struct.skd_request_context** %9, align 8
  %31 = call i32 @skd_postop_sg_list(%struct.skd_device* %29, %struct.skd_request_context* %30)
  br label %32

32:                                               ; preds = %28, %20
  %33 = load i64, i64* @SKD_REQ_STATE_IDLE, align 8
  %34 = load %struct.skd_request_context*, %struct.skd_request_context** %9, align 8
  %35 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @BLK_STS_IOERR, align 4
  %37 = load %struct.skd_request_context*, %struct.skd_request_context** %9, align 8
  %38 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.request*, %struct.request** %5, align 8
  %40 = call i32 @blk_mq_complete_request(%struct.request* %39)
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %32, %19
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.skd_request_context* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @skd_log_skreq(%struct.skd_device*, %struct.skd_request_context*, i8*) #1

declare dso_local i32 @skd_postop_sg_list(%struct.skd_device*, %struct.skd_request_context*) #1

declare dso_local i32 @blk_mq_complete_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
