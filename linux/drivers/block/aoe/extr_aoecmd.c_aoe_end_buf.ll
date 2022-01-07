; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_aoe_end_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_aoe_end_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.buf* }
%struct.buf = type { %struct.request* }
%struct.request = type { i32 }
%struct.aoe_req = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoedev*, %struct.buf*)* @aoe_end_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aoe_end_buf(%struct.aoedev* %0, %struct.buf* %1) #0 {
  %3 = alloca %struct.aoedev*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.aoe_req*, align 8
  store %struct.aoedev* %0, %struct.aoedev** %3, align 8
  store %struct.buf* %1, %struct.buf** %4, align 8
  %7 = load %struct.buf*, %struct.buf** %4, align 8
  %8 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 0
  %9 = load %struct.request*, %struct.request** %8, align 8
  store %struct.request* %9, %struct.request** %5, align 8
  %10 = load %struct.request*, %struct.request** %5, align 8
  %11 = call %struct.aoe_req* @blk_mq_rq_to_pdu(%struct.request* %10)
  store %struct.aoe_req* %11, %struct.aoe_req** %6, align 8
  %12 = load %struct.buf*, %struct.buf** %4, align 8
  %13 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %14 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.buf*, %struct.buf** %15, align 8
  %17 = icmp eq %struct.buf* %12, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %20 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.buf* null, %struct.buf** %21, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.buf*, %struct.buf** %4, align 8
  %24 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %25 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mempool_free(%struct.buf* %23, i32 %26)
  %28 = load %struct.aoe_req*, %struct.aoe_req** %6, align 8
  %29 = getelementptr inbounds %struct.aoe_req, %struct.aoe_req* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %35 = load %struct.request*, %struct.request** %5, align 8
  %36 = call i32 @aoe_end_request(%struct.aoedev* %34, %struct.request* %35, i32 0)
  br label %37

37:                                               ; preds = %33, %22
  ret void
}

declare dso_local %struct.aoe_req* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @mempool_free(%struct.buf*, i32) #1

declare dso_local i32 @aoe_end_request(%struct.aoedev*, %struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
