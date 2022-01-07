; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_service_main_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_service_main_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_thread = type { i32, %struct.btmrvl_private* }
%struct.btmrvl_private = type { %struct.TYPE_6__, %struct.btmrvl_adapter*, i32, i32 (%struct.btmrvl_private*)*, i32 (%struct.btmrvl_private*)*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.btmrvl_adapter = type { i64, i32, i64, i64, i64 }
%struct.sk_buff = type { i64 }

@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"main_thread: break from main thread\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"main_thread is sleeping...\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"main_thread woke up\00", align 1
@PS_SLEEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @btmrvl_service_main_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_service_main_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.btmrvl_thread*, align 8
  %4 = alloca %struct.btmrvl_private*, align 8
  %5 = alloca %struct.btmrvl_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.btmrvl_thread*
  store %struct.btmrvl_thread* %10, %struct.btmrvl_thread** %3, align 8
  %11 = load %struct.btmrvl_thread*, %struct.btmrvl_thread** %3, align 8
  %12 = getelementptr inbounds %struct.btmrvl_thread, %struct.btmrvl_thread* %11, i32 0, i32 1
  %13 = load %struct.btmrvl_private*, %struct.btmrvl_private** %12, align 8
  store %struct.btmrvl_private* %13, %struct.btmrvl_private** %4, align 8
  %14 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %15 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %14, i32 0, i32 1
  %16 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %15, align 8
  store %struct.btmrvl_adapter* %16, %struct.btmrvl_adapter** %5, align 8
  %17 = load i32, i32* @current, align 4
  %18 = call i32 @init_waitqueue_entry(i32* %6, i32 %17)
  br label %19

19:                                               ; preds = %184, %146, %132, %106, %1
  %20 = load %struct.btmrvl_thread*, %struct.btmrvl_thread** %3, align 8
  %21 = getelementptr inbounds %struct.btmrvl_thread, %struct.btmrvl_thread* %20, i32 0, i32 0
  %22 = call i32 @add_wait_queue(i32* %21, i32* %6)
  %23 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %24 = call i32 @set_current_state(i32 %23)
  %25 = call i64 (...) @kthread_should_stop()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %29 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %19
  %33 = call i32 @BT_DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %185

34:                                               ; preds = %27
  %35 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %36 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %34
  %40 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %39
  %45 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %46 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %51, i32 0, i32 1
  %53 = call i64 @skb_queue_empty(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %44, %34
  %56 = call i32 @BT_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 (...) @schedule()
  br label %58

58:                                               ; preds = %55, %50, %39
  %59 = load i32, i32* @TASK_RUNNING, align 4
  %60 = call i32 @set_current_state(i32 %59)
  %61 = load %struct.btmrvl_thread*, %struct.btmrvl_thread** %3, align 8
  %62 = getelementptr inbounds %struct.btmrvl_thread, %struct.btmrvl_thread* %61, i32 0, i32 0
  %63 = call i32 @remove_wait_queue(i32* %62, i32* %6)
  %64 = call i32 @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i64 (...) @kthread_should_stop()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %58
  %68 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %69 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67, %58
  %73 = call i32 @BT_DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %185

74:                                               ; preds = %67
  %75 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %76 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %75, i32 0, i32 2
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @spin_lock_irqsave(i32* %76, i32 %77)
  %79 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %80 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %74
  %84 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %85 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %84, i32 0, i32 4
  store i64 0, i64* %85, align 8
  %86 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %87 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %86, i32 0, i32 2
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i32 %88)
  %90 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %91 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %90, i32 0, i32 4
  %92 = load i32 (%struct.btmrvl_private*)*, i32 (%struct.btmrvl_private*)** %91, align 8
  %93 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %94 = call i32 %92(%struct.btmrvl_private* %93)
  br label %126

95:                                               ; preds = %74
  %96 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %97 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PS_SLEEP, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %95
  %102 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %103 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %102, i32 0, i32 1
  %104 = call i64 @skb_queue_empty(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %101
  %107 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %108 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %107, i32 0, i32 2
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i32 %109)
  %111 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %112 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %116 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %115, i32 0, i32 3
  %117 = load i32 (%struct.btmrvl_private*)*, i32 (%struct.btmrvl_private*)** %116, align 8
  %118 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %119 = call i32 %117(%struct.btmrvl_private* %118)
  br label %19

120:                                              ; preds = %101, %95
  %121 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %122 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %121, i32 0, i32 2
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i32 %123)
  br label %125

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125, %83
  %127 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %128 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @PS_SLEEP, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %19

133:                                              ; preds = %126
  %134 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %135 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %141 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %140, i32 0, i32 1
  %142 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %141, align 8
  %143 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139, %133
  br label %19

147:                                              ; preds = %139
  %148 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %5, align 8
  %149 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %148, i32 0, i32 1
  %150 = call %struct.sk_buff* @skb_dequeue(i32* %149)
  store %struct.sk_buff* %150, %struct.sk_buff** %7, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %152 = icmp ne %struct.sk_buff* %151, null
  br i1 %152, label %153, label %184

153:                                              ; preds = %147
  %154 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %156 = call i64 @btmrvl_tx_pkt(%struct.btmrvl_private* %154, %struct.sk_buff* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %153
  %159 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %160 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  br label %181

167:                                              ; preds = %153
  %168 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %172 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %170
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %176, align 4
  br label %181

181:                                              ; preds = %167, %158
  %182 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %183 = call i32 @kfree_skb(%struct.sk_buff* %182)
  br label %184

184:                                              ; preds = %181, %147
  br label %19

185:                                              ; preds = %72, %32
  ret i32 0
}

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @btmrvl_tx_pkt(%struct.btmrvl_private*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
