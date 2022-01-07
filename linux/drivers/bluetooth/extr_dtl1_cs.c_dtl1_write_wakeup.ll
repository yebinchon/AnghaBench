; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_dtl1_cs.c_dtl1_write_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_dtl1_cs.c_dtl1_write_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtl1_info = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Unknown device\00", align 1
@XMIT_WAITING = common dso_local global i32 0, align 4
@XMIT_WAKEUP = common dso_local global i32 0, align 4
@XMIT_SENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dtl1_info*)* @dtl1_write_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtl1_write_wakeup(%struct.dtl1_info* %0) #0 {
  %2 = alloca %struct.dtl1_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.dtl1_info* %0, %struct.dtl1_info** %2, align 8
  %6 = load %struct.dtl1_info*, %struct.dtl1_info** %2, align 8
  %7 = icmp ne %struct.dtl1_info* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @BT_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %109

10:                                               ; preds = %1
  %11 = load i32, i32* @XMIT_WAITING, align 4
  %12 = load %struct.dtl1_info*, %struct.dtl1_info** %2, align 8
  %13 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %12, i32 0, i32 0
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i32, i32* @XMIT_WAKEUP, align 4
  %18 = load %struct.dtl1_info*, %struct.dtl1_info** %2, align 8
  %19 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %18, i32 0, i32 0
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  br label %109

21:                                               ; preds = %10
  %22 = load i32, i32* @XMIT_SENDING, align 4
  %23 = load %struct.dtl1_info*, %struct.dtl1_info** %2, align 8
  %24 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %23, i32 0, i32 0
  %25 = call i64 @test_and_set_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* @XMIT_WAKEUP, align 4
  %29 = load %struct.dtl1_info*, %struct.dtl1_info** %2, align 8
  %30 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  br label %109

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %98, %32
  %34 = load %struct.dtl1_info*, %struct.dtl1_info** %2, align 8
  %35 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %34, i32 0, i32 3
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @XMIT_WAKEUP, align 4
  %44 = load %struct.dtl1_info*, %struct.dtl1_info** %2, align 8
  %45 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %44, i32 0, i32 0
  %46 = call i32 @clear_bit(i32 %43, i32* %45)
  %47 = load %struct.dtl1_info*, %struct.dtl1_info** %2, align 8
  %48 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = call i32 @pcmcia_dev_present(%struct.TYPE_8__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %33
  br label %109

53:                                               ; preds = %33
  %54 = load %struct.dtl1_info*, %struct.dtl1_info** %2, align 8
  %55 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %54, i32 0, i32 2
  %56 = call %struct.sk_buff* @skb_dequeue(i32* %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %4, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %104

60:                                               ; preds = %53
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dtl1_write(i32 %61, i32 32, i32 %64, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %60
  %75 = load i32, i32* @XMIT_WAITING, align 4
  %76 = load %struct.dtl1_info*, %struct.dtl1_info** %2, align 8
  %77 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %76, i32 0, i32 0
  %78 = call i32 @set_bit(i32 %75, i32* %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = call i32 @kfree_skb(%struct.sk_buff* %79)
  br label %89

81:                                               ; preds = %60
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @skb_pull(%struct.sk_buff* %82, i32 %83)
  %85 = load %struct.dtl1_info*, %struct.dtl1_info** %2, align 8
  %86 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %85, i32 0, i32 2
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = call i32 @skb_queue_head(i32* %86, %struct.sk_buff* %87)
  br label %89

89:                                               ; preds = %81, %74
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.dtl1_info*, %struct.dtl1_info** %2, align 8
  %92 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %90
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* @XMIT_WAKEUP, align 4
  %100 = load %struct.dtl1_info*, %struct.dtl1_info** %2, align 8
  %101 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %100, i32 0, i32 0
  %102 = call i64 @test_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %33, label %104

104:                                              ; preds = %98, %59
  %105 = load i32, i32* @XMIT_SENDING, align 4
  %106 = load %struct.dtl1_info*, %struct.dtl1_info** %2, align 8
  %107 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %106, i32 0, i32 0
  %108 = call i32 @clear_bit(i32 %105, i32* %107)
  br label %109

109:                                              ; preds = %104, %52, %27, %16, %8
  ret void
}

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @pcmcia_dev_present(%struct.TYPE_8__*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @dtl1_write(i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
