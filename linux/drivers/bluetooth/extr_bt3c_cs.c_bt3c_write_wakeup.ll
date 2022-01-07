; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bt3c_cs.c_bt3c_write_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bt3c_cs.c_bt3c_write_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt3c_info = type { %struct.TYPE_7__*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Unknown device\00", align 1
@XMIT_SENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Very strange\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt3c_info*)* @bt3c_write_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt3c_write_wakeup(%struct.bt3c_info* %0) #0 {
  %2 = alloca %struct.bt3c_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.bt3c_info* %0, %struct.bt3c_info** %2, align 8
  %6 = load %struct.bt3c_info*, %struct.bt3c_info** %2, align 8
  %7 = icmp ne %struct.bt3c_info* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @BT_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %72

10:                                               ; preds = %1
  %11 = load i32, i32* @XMIT_SENDING, align 4
  %12 = load %struct.bt3c_info*, %struct.bt3c_info** %2, align 8
  %13 = getelementptr inbounds %struct.bt3c_info, %struct.bt3c_info* %12, i32 0, i32 1
  %14 = call i64 @test_and_set_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %72

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.bt3c_info*, %struct.bt3c_info** %2, align 8
  %20 = getelementptr inbounds %struct.bt3c_info, %struct.bt3c_info* %19, i32 0, i32 3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %23, i64 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  %28 = load %struct.bt3c_info*, %struct.bt3c_info** %2, align 8
  %29 = getelementptr inbounds %struct.bt3c_info, %struct.bt3c_info* %28, i32 0, i32 3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = call i32 @pcmcia_dev_present(%struct.TYPE_8__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %18
  br label %72

34:                                               ; preds = %18
  %35 = load %struct.bt3c_info*, %struct.bt3c_info** %2, align 8
  %36 = getelementptr inbounds %struct.bt3c_info, %struct.bt3c_info* %35, i32 0, i32 2
  %37 = call %struct.sk_buff* @skb_dequeue(i32* %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @XMIT_SENDING, align 4
  %42 = load %struct.bt3c_info*, %struct.bt3c_info** %2, align 8
  %43 = getelementptr inbounds %struct.bt3c_info, %struct.bt3c_info* %42, i32 0, i32 1
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  br label %72

45:                                               ; preds = %34
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bt3c_write(i32 %46, i32 256, i32 %49, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = call i32 @BT_ERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %45
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i32 @kfree_skb(%struct.sk_buff* %62)
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.bt3c_info*, %struct.bt3c_info** %2, align 8
  %66 = getelementptr inbounds %struct.bt3c_info, %struct.bt3c_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %64
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %8, %16, %61, %40, %33
  ret void
}

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pcmcia_dev_present(%struct.TYPE_8__*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @bt3c_write(i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
