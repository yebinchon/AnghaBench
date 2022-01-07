; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_queue = type { i32, i32, i32, i32, %struct.TYPE_9__*, %struct.sk_buff**, i32, %struct.mmsghdr* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mmsghdr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.vector_private = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_queue*, %struct.sk_buff*)* @vector_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_enqueue(%struct.vector_queue* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vector_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.vector_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mmsghdr*, align 8
  %10 = alloca i32, align 4
  store %struct.vector_queue* %0, %struct.vector_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.vector_queue*, %struct.vector_queue** %4, align 8
  %12 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %11, i32 0, i32 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = call %struct.vector_private* @netdev_priv(%struct.TYPE_9__* %13)
  store %struct.vector_private* %14, %struct.vector_private** %6, align 8
  %15 = load %struct.vector_queue*, %struct.vector_queue** %4, align 8
  %16 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %15, i32 0, i32 7
  %17 = load %struct.mmsghdr*, %struct.mmsghdr** %16, align 8
  store %struct.mmsghdr* %17, %struct.mmsghdr** %9, align 8
  %18 = load %struct.vector_queue*, %struct.vector_queue** %4, align 8
  %19 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %18, i32 0, i32 3
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.vector_queue*, %struct.vector_queue** %4, align 8
  %22 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %21, i32 0, i32 6
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.vector_queue*, %struct.vector_queue** %4, align 8
  %25 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load %struct.vector_queue*, %struct.vector_queue** %4, align 8
  %28 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %27, i32 0, i32 6
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %2
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.vector_queue*, %struct.vector_queue** %4, align 8
  %39 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %91

42:                                               ; preds = %36
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.vector_queue*, %struct.vector_queue** %4, align 8
  %45 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %44, i32 0, i32 5
  %46 = load %struct.sk_buff**, %struct.sk_buff*** %45, align 8
  %47 = load %struct.vector_queue*, %struct.vector_queue** %4, align 8
  %48 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %46, i64 %50
  store %struct.sk_buff* %43, %struct.sk_buff** %51, align 8
  %52 = load %struct.vector_queue*, %struct.vector_queue** %4, align 8
  %53 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mmsghdr*, %struct.mmsghdr** %9, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %55, i64 %56
  store %struct.mmsghdr* %57, %struct.mmsghdr** %9, align 8
  %58 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = load %struct.mmsghdr*, %struct.mmsghdr** %9, align 8
  %61 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @prep_msg(%struct.vector_private* %58, %struct.sk_buff* %59, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %42
  br label %97

68:                                               ; preds = %42
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.mmsghdr*, %struct.mmsghdr** %9, align 8
  %71 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %74 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mmsghdr*, %struct.mmsghdr** %9, align 8
  %79 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 4
  %81 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %82 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mmsghdr*, %struct.mmsghdr** %9, align 8
  %87 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load %struct.vector_queue*, %struct.vector_queue** %4, align 8
  %90 = call i32 @vector_advancetail(%struct.vector_queue* %89, i32 1)
  store i32 %90, i32* %7, align 4
  br label %92

91:                                               ; preds = %36
  br label %97

92:                                               ; preds = %68
  %93 = load %struct.vector_queue*, %struct.vector_queue** %4, align 8
  %94 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %93, i32 0, i32 3
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %123

97:                                               ; preds = %91, %67
  %98 = load %struct.vector_queue*, %struct.vector_queue** %4, align 8
  %99 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %98, i32 0, i32 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = icmp ne %struct.sk_buff* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %97
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %8, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = call i32 @dev_consume_skb_any(%struct.sk_buff* %111)
  %113 = load %struct.vector_queue*, %struct.vector_queue** %4, align 8
  %114 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %113, i32 0, i32 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @netdev_completed_queue(%struct.TYPE_9__* %115, i32 1, i32 %116)
  br label %118

118:                                              ; preds = %107, %97
  %119 = load %struct.vector_queue*, %struct.vector_queue** %4, align 8
  %120 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %119, i32 0, i32 3
  %121 = call i32 @spin_unlock(i32* %120)
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %92
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.vector_private* @netdev_priv(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @prep_msg(%struct.vector_private*, %struct.sk_buff*, i32) #1

declare dso_local i32 @vector_advancetail(%struct.vector_queue*, i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netdev_completed_queue(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
