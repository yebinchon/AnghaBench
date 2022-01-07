; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_clear_priv_data.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_clear_priv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__*, i32*, i32*, i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { %struct.sk_buff** }
%struct.sk_buff = type { i32 }

@MAX_PVC_NUMBER = common dso_local global i32 0, align 4
@g_atm_priv_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@dma_tx_descriptor_length = common dso_local global i32 0, align 4
@dma_rx_descriptor_length = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clear_priv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_priv_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %51, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @MAX_PVC_NUMBER, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %54

8:                                                ; preds = %4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 6), align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %15 = icmp ne %struct.sk_buff** %14, null
  br i1 %15, label %16, label %50

16:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @dma_tx_descriptor_length, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 6), align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.sk_buff**, %struct.sk_buff*** %26, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %27, i64 %29
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %21
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 6), align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.sk_buff**, %struct.sk_buff*** %38, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %39, i64 %41
  %43 = load %struct.sk_buff*, %struct.sk_buff** %42, align 8
  %44 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %43)
  br label %45

45:                                               ; preds = %33, %21
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %17

49:                                               ; preds = %17
  br label %50

50:                                               ; preds = %49, %8
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %4

54:                                               ; preds = %4
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 5), align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 5), align 8
  %59 = call i32 @kfree(i32* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 4), align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 4), align 8
  %65 = call i32 @kfree(i32* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 3), align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 3), align 8
  %71 = call i32 @kfree(i32* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 2), align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 2), align 8
  %77 = call i32 @kfree(i32* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 0), align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %119

81:                                               ; preds = %78
  store i32 0, i32* %1, align 4
  br label %82

82:                                               ; preds = %113, %81
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @dma_rx_descriptor_length, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %116

86:                                               ; preds = %82
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 1), align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %86
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 1), align 8
  %96 = load i32, i32* %1, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %94, %86
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 1), align 8
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call %struct.sk_buff* @get_skb_rx_pointer(i32 %108)
  store %struct.sk_buff* %109, %struct.sk_buff** %3, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %111 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %110)
  br label %112

112:                                              ; preds = %102, %94
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %1, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %1, align 4
  br label %82

116:                                              ; preds = %82
  %117 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 0), align 8
  %118 = call i32 @kfree(i32* %117)
  br label %119

119:                                              ; preds = %116, %78
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.sk_buff* @get_skb_rx_pointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
