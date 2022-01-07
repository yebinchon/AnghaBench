; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoedev.c_aoe_failip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoedev.c_aoe_failip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bio*, %struct.request*, i32 }
%struct.bio = type { %struct.bio*, i32 }
%struct.request = type { i32 }
%struct.aoe_req = type { i32 }

@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoedev*)* @aoe_failip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aoe_failip(%struct.aoedev* %0) #0 {
  %2 = alloca %struct.aoedev*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.aoe_req*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.aoedev* %0, %struct.aoedev** %2, align 8
  %6 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %7 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %8 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @aoe_failbuf(%struct.aoedev* %6, i32 %10)
  %12 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %13 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.request*, %struct.request** %14, align 8
  store %struct.request* %15, %struct.request** %3, align 8
  %16 = load %struct.request*, %struct.request** %3, align 8
  %17 = icmp eq %struct.request* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %51

19:                                               ; preds = %1
  %20 = load %struct.request*, %struct.request** %3, align 8
  %21 = call %struct.aoe_req* @blk_mq_rq_to_pdu(%struct.request* %20)
  store %struct.aoe_req* %21, %struct.aoe_req** %4, align 8
  br label %22

22:                                               ; preds = %28, %19
  %23 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %24 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.bio*, %struct.bio** %25, align 8
  store %struct.bio* %26, %struct.bio** %5, align 8
  %27 = icmp ne %struct.bio* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load i32, i32* @BLK_STS_IOERR, align 4
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  %34 = load %struct.bio*, %struct.bio** %33, align 8
  %35 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %36 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.bio* %34, %struct.bio** %37, align 8
  %38 = load %struct.aoe_req*, %struct.aoe_req** %4, align 8
  %39 = getelementptr inbounds %struct.aoe_req, %struct.aoe_req* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load %struct.aoe_req*, %struct.aoe_req** %4, align 8
  %44 = getelementptr inbounds %struct.aoe_req, %struct.aoe_req* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %49 = load %struct.request*, %struct.request** %3, align 8
  %50 = call i32 @aoe_end_request(%struct.aoedev* %48, %struct.request* %49, i32 0)
  br label %51

51:                                               ; preds = %18, %47, %42
  ret void
}

declare dso_local i32 @aoe_failbuf(%struct.aoedev*, i32) #1

declare dso_local %struct.aoe_req* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @aoe_end_request(%struct.aoedev*, %struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
