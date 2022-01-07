; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_resolve_req_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_resolve_req_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.skd_request_context = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.request = type { i32 }

@BLK_STS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"retry(busy)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"drive BUSY imminent\0A\00", align 1
@SKD_DRVR_STATE_BUSY_IMMINENT = common dso_local global i32 0, align 4
@SKD_MAX_RETRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"retry\00", align 1
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*, %struct.skd_request_context*, %struct.request*)* @skd_resolve_req_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_resolve_req_exception(%struct.skd_device* %0, %struct.skd_request_context* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.skd_device*, align 8
  %5 = alloca %struct.skd_request_context*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  store %struct.skd_device* %0, %struct.skd_device** %4, align 8
  store %struct.skd_request_context* %1, %struct.skd_request_context** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  %8 = load %struct.skd_request_context*, %struct.skd_request_context** %5, align 8
  %9 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.skd_request_context*, %struct.skd_request_context** %5, align 8
  %15 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %14, i32 0, i32 2
  %16 = call i32 @skd_check_status(%struct.skd_device* %12, i32 %13, i32* %15)
  switch i32 %16, label %57 [
    i32 130, label %17
    i32 129, label %17
    i32 132, label %23
    i32 128, label %42
    i32 131, label %56
  ]

17:                                               ; preds = %3, %3
  %18 = load i32, i32* @BLK_STS_OK, align 4
  %19 = load %struct.skd_request_context*, %struct.skd_request_context** %5, align 8
  %20 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.request*, %struct.request** %6, align 8
  %22 = call i32 @blk_mq_complete_request(%struct.request* %21)
  br label %63

23:                                               ; preds = %3
  %24 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %25 = load %struct.skd_request_context*, %struct.skd_request_context** %5, align 8
  %26 = call i32 @skd_log_skreq(%struct.skd_device* %24, %struct.skd_request_context* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.request*, %struct.request** %6, align 8
  %28 = call i32 @blk_mq_requeue_request(%struct.request* %27, i32 1)
  %29 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %30 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @dev_info(i32* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @SKD_DRVR_STATE_BUSY_IMMINENT, align 4
  %35 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %36 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = call i32 @SKD_TIMER_MINUTES(i32 20)
  %38 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %39 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %41 = call i32 @skd_quiesce_dev(%struct.skd_device* %40)
  br label %63

42:                                               ; preds = %3
  %43 = load %struct.skd_request_context*, %struct.skd_request_context** %5, align 8
  %44 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @SKD_MAX_RETRIES, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %51 = load %struct.skd_request_context*, %struct.skd_request_context** %5, align 8
  %52 = call i32 @skd_log_skreq(%struct.skd_device* %50, %struct.skd_request_context* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.request*, %struct.request** %6, align 8
  %54 = call i32 @blk_mq_requeue_request(%struct.request* %53, i32 1)
  br label %63

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %3, %55
  br label %57

57:                                               ; preds = %3, %56
  %58 = load i32, i32* @BLK_STS_IOERR, align 4
  %59 = load %struct.skd_request_context*, %struct.skd_request_context** %5, align 8
  %60 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.request*, %struct.request** %6, align 8
  %62 = call i32 @blk_mq_complete_request(%struct.request* %61)
  br label %63

63:                                               ; preds = %57, %49, %23, %17
  ret void
}

declare dso_local i32 @skd_check_status(%struct.skd_device*, i32, i32*) #1

declare dso_local i32 @blk_mq_complete_request(%struct.request*) #1

declare dso_local i32 @skd_log_skreq(%struct.skd_device*, %struct.skd_request_context*, i8*) #1

declare dso_local i32 @blk_mq_requeue_request(%struct.request*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @SKD_TIMER_MINUTES(i32) #1

declare dso_local i32 @skd_quiesce_dev(%struct.skd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
