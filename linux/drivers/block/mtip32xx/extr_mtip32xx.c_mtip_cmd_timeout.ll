; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_cmd_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_cmd_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.driver_data* }
%struct.driver_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.mtip_cmd = type { i32 }

@BLK_STS_TIMEOUT = common dso_local global i32 0, align 4
@BLK_EH_DONE = common dso_local global i32 0, align 4
@MTIP_PF_TO_ACTIVE_BIT = common dso_local global i32 0, align 4
@BLK_EH_RESET_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, i32)* @mtip_cmd_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_cmd_timeout(%struct.request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.driver_data*, align 8
  %7 = alloca %struct.mtip_cmd*, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.request*, %struct.request** %4, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.driver_data*, %struct.driver_data** %11, align 8
  store %struct.driver_data* %12, %struct.driver_data** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.request*, %struct.request** %4, align 8
  %17 = call %struct.mtip_cmd* @blk_mq_rq_to_pdu(%struct.request* %16)
  store %struct.mtip_cmd* %17, %struct.mtip_cmd** %7, align 8
  %18 = load i32, i32* @BLK_STS_TIMEOUT, align 4
  %19 = load %struct.mtip_cmd*, %struct.mtip_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.request*, %struct.request** %4, align 8
  %22 = call i32 @blk_mq_complete_request(%struct.request* %21)
  %23 = load i32, i32* @BLK_EH_DONE, align 4
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %29 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @test_bit(i32 %27, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %51

36:                                               ; preds = %24
  %37 = load i32, i32* @MTIP_PF_TO_ACTIVE_BIT, align 4
  %38 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %39 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = call i64 @test_and_set_bit(i32 %37, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %51

45:                                               ; preds = %36
  %46 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %47 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @wake_up_interruptible(i32* %49)
  br label %51

51:                                               ; preds = %45, %44, %35
  %52 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.mtip_cmd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @blk_mq_complete_request(%struct.request*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
