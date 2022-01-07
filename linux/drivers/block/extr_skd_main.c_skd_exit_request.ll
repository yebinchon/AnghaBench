; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_exit_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_exit_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { %struct.skd_device* }
%struct.skd_device = type { i32 }
%struct.request = type { i32 }
%struct.skd_request_context = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_tag_set*, %struct.request*, i32)* @skd_exit_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_exit_request(%struct.blk_mq_tag_set* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca %struct.blk_mq_tag_set*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.skd_device*, align 8
  %8 = alloca %struct.skd_request_context*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %10 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %9, i32 0, i32 0
  %11 = load %struct.skd_device*, %struct.skd_device** %10, align 8
  store %struct.skd_device* %11, %struct.skd_device** %7, align 8
  %12 = load %struct.request*, %struct.request** %5, align 8
  %13 = call %struct.skd_request_context* @blk_mq_rq_to_pdu(%struct.request* %12)
  store %struct.skd_request_context* %13, %struct.skd_request_context** %8, align 8
  %14 = load %struct.skd_device*, %struct.skd_device** %7, align 8
  %15 = load %struct.skd_request_context*, %struct.skd_request_context** %8, align 8
  %16 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.skd_request_context*, %struct.skd_request_context** %8, align 8
  %19 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @skd_free_sg_list(%struct.skd_device* %14, i32 %17, i32 %20)
  ret void
}

declare dso_local %struct.skd_request_context* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @skd_free_sg_list(%struct.skd_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
