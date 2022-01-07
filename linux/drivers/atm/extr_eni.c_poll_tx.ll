; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_eni.c_poll_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_eni.c_poll_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.eni_tx = type { i32, i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { %struct.eni_tx* }

@.str = private unnamed_addr constant [10 x i8] c">poll_tx\0A\00", align 1
@NR_CHAN = common dso_local global i32 0, align 4
@enq_ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"re-queuing TX PDU\0A\00", align 1
@requeued = common dso_local global i32 0, align 4
@enq_jam = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_dev*)* @poll_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_tx(%struct.atm_dev* %0) #0 {
  %2 = alloca %struct.atm_dev*, align 8
  %3 = alloca %struct.eni_tx*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %2, align 8
  %7 = call i32 @DPRINTK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @NR_CHAN, align 4
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %53, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %10
  %14 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %15 = call %struct.TYPE_2__* @ENI_DEV(%struct.atm_dev* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.eni_tx*, %struct.eni_tx** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.eni_tx, %struct.eni_tx* %17, i64 %19
  store %struct.eni_tx* %20, %struct.eni_tx** %3, align 8
  %21 = load %struct.eni_tx*, %struct.eni_tx** %3, align 8
  %22 = getelementptr inbounds %struct.eni_tx, %struct.eni_tx* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %37, %25
  %27 = load %struct.eni_tx*, %struct.eni_tx** %3, align 8
  %28 = getelementptr inbounds %struct.eni_tx, %struct.eni_tx* %27, i32 0, i32 0
  %29 = call %struct.sk_buff* @skb_dequeue(i32* %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %4, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @do_tx(%struct.sk_buff* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @enq_ok, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %26

38:                                               ; preds = %31
  %39 = call i32 @DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.eni_tx*, %struct.eni_tx** %3, align 8
  %41 = getelementptr inbounds %struct.eni_tx, %struct.eni_tx* %40, i32 0, i32 0
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @skb_queue_head(i32* %41, %struct.sk_buff* %42)
  %44 = load i32, i32* @requeued, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @requeued, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @enq_jam, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %56

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %26
  br label %52

52:                                               ; preds = %51, %13
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  br label %10

56:                                               ; preds = %49, %10
  ret void
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local %struct.TYPE_2__* @ENI_DEV(%struct.atm_dev*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @do_tx(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
