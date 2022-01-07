; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { %struct.skd_device* }
%struct.skd_device = type { i32 }
%struct.request = type { i32 }
%struct.skd_request_context = type { i64, i32, i8*, i32 }

@SKD_REQ_STATE_IDLE = common dso_local global i32 0, align 4
@skd_sgs_per_request = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)* @skd_init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_init_request(%struct.blk_mq_tag_set* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.blk_mq_tag_set*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.skd_device*, align 8
  %10 = alloca %struct.skd_request_context*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %5, align 8
  %12 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %11, i32 0, i32 0
  %13 = load %struct.skd_device*, %struct.skd_device** %12, align 8
  store %struct.skd_device* %13, %struct.skd_device** %9, align 8
  %14 = load %struct.request*, %struct.request** %6, align 8
  %15 = call %struct.skd_request_context* @blk_mq_rq_to_pdu(%struct.request* %14)
  store %struct.skd_request_context* %15, %struct.skd_request_context** %10, align 8
  %16 = load i32, i32* @SKD_REQ_STATE_IDLE, align 4
  %17 = load %struct.skd_request_context*, %struct.skd_request_context** %10, align 8
  %18 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.skd_request_context*, %struct.skd_request_context** %10, align 8
  %20 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %19, i64 1
  %21 = bitcast %struct.skd_request_context* %20 to i8*
  %22 = load %struct.skd_request_context*, %struct.skd_request_context** %10, align 8
  %23 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.skd_request_context*, %struct.skd_request_context** %10, align 8
  %25 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* @skd_sgs_per_request, align 4
  %28 = call i32 @sg_init_table(i8* %26, i32 %27)
  %29 = load %struct.skd_device*, %struct.skd_device** %9, align 8
  %30 = load i32, i32* @skd_sgs_per_request, align 4
  %31 = load %struct.skd_request_context*, %struct.skd_request_context** %10, align 8
  %32 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %31, i32 0, i32 1
  %33 = call i64 @skd_cons_sg_list(%struct.skd_device* %29, i32 %30, i32* %32)
  %34 = load %struct.skd_request_context*, %struct.skd_request_context** %10, align 8
  %35 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.skd_request_context*, %struct.skd_request_context** %10, align 8
  %37 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  br label %44

41:                                               ; preds = %4
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  br label %44

44:                                               ; preds = %41, %40
  %45 = phi i32 [ 0, %40 ], [ %43, %41 ]
  ret i32 %45
}

declare dso_local %struct.skd_request_context* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @sg_init_table(i8*, i32) #1

declare dso_local i64 @skd_cons_sg_list(%struct.skd_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
