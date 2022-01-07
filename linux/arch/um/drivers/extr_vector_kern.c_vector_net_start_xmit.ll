; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_net_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_net_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.vector_private = type { i64, i64, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@VECTOR_TX = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@TX_SMALL_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @vector_net_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_net_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.vector_private*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.vector_private* @netdev_priv(%struct.net_device* %8)
  store %struct.vector_private* %9, %struct.vector_private** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %11 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %10, i32 0, i32 10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %2
  %15 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %16 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %15, i32 0, i32 9
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %21 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @deactivate_fd(i64 %19, i64 %22)
  %24 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %25 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %24, i32 0, i32 9
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %30 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %29, i32 0, i32 9
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %28, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %14
  %36 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %37 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %42 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %41, i32 0, i32 9
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %47 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @deactivate_fd(i64 %45, i64 %48)
  br label %50

50:                                               ; preds = %40, %35, %14
  %51 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %51, i32* %3, align 4
  br label %131

52:                                               ; preds = %2
  %53 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %54 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @VECTOR_TX, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @writev_tx(%struct.vector_private* %60, %struct.sk_buff* %61)
  %63 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %63, i32* %3, align 4
  br label %131

64:                                               ; preds = %52
  %65 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %66 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @netdev_sent_queue(i32 %67, i32 %70)
  %72 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %73 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %72, i32 0, i32 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i32 @vector_enqueue(%struct.TYPE_7__* %74, %struct.sk_buff* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %79 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %78, i32 0, i32 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp sge i32 %77, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %64
  %86 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %87 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = call i32 @netif_stop_queue(%struct.net_device* %91)
  %93 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %94 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %93, i32 0, i32 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = call i32 @vector_send(%struct.TYPE_7__* %95)
  %97 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %97, i32* %3, align 4
  br label %131

98:                                               ; preds = %64
  %99 = call i64 (...) @netdev_xmit_more()
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %103 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %102, i32 0, i32 7
  %104 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %105 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @mod_timer(i32* %103, i32 %106)
  %108 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %108, i32* %3, align 4
  br label %131

109:                                              ; preds = %98
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @TX_SMALL_PACKET, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %117 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %122 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %121, i32 0, i32 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = call i32 @vector_send(%struct.TYPE_7__* %123)
  br label %129

125:                                              ; preds = %109
  %126 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %127 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %126, i32 0, i32 3
  %128 = call i32 @tasklet_schedule(i32* %127)
  br label %129

129:                                              ; preds = %125, %115
  %130 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %101, %85, %59, %50
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.vector_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @deactivate_fd(i64, i64) #1

declare dso_local i32 @writev_tx(%struct.vector_private*, %struct.sk_buff*) #1

declare dso_local i32 @netdev_sent_queue(i32, i32) #1

declare dso_local i32 @vector_enqueue(%struct.TYPE_7__*, %struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @vector_send(%struct.TYPE_7__*) #1

declare dso_local i64 @netdev_xmit_more(...) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
