; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vdsl.c_clear_tables.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vdsl.c_clear_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i32 }

@WAN_RX_DESC_NUM = common dso_local global i32 0, align 4
@WAN_RX_DESC_BASE = common dso_local global %struct.TYPE_8__* null, align 8
@CPU_TO_WAN_TX_DESC_NUM = common dso_local global i32 0, align 4
@CPU_TO_WAN_TX_DESC_BASE = common dso_local global %struct.TYPE_10__* null, align 8
@WAN_TX_DESC_NUM = common dso_local global i32 0, align 4
@WAN_SWAP_DESC_NUM = common dso_local global i32 0, align 4
@WAN_SWAP_DESC_BASE = common dso_local global %struct.TYPE_7__* null, align 8
@FASTPATH_TO_WAN_TX_DESC_NUM = common dso_local global i32 0, align 4
@FASTPATH_TO_WAN_TX_DESC_BASE = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clear_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_tables() #0 {
  %1 = alloca %struct.sk_buff*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %22, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @WAN_RX_DESC_NUM, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @WAN_RX_DESC_BASE, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sk_buff* @get_skb_pointer(i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %1, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %20 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %19)
  br label %21

21:                                               ; preds = %18, %8
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %4

25:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @CPU_TO_WAN_TX_DESC_NUM, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CPU_TO_WAN_TX_DESC_BASE, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.sk_buff* @get_skb_pointer(i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %1, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %42 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %41)
  br label %43

43:                                               ; preds = %40, %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %26

47:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %75, %47
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %78

51:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %71, %51
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @WAN_TX_DESC_NUM, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = call %struct.TYPE_6__* @WAN_TX_DESC_BASE(i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.sk_buff* @get_skb_pointer(i32 %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %1, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %69 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %68)
  br label %70

70:                                               ; preds = %67, %56
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %2, align 4
  br label %52

74:                                               ; preds = %52
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %48

78:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %97, %78
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @WAN_SWAP_DESC_NUM, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %79
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @WAN_SWAP_DESC_BASE, align 8
  %85 = load i32, i32* %2, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.sk_buff* @get_skb_pointer(i32 %89)
  store %struct.sk_buff* %90, %struct.sk_buff** %1, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %92 = icmp ne %struct.sk_buff* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %95 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %94)
  br label %96

96:                                               ; preds = %93, %83
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %2, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %2, align 4
  br label %79

100:                                              ; preds = %79
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %119, %100
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @FASTPATH_TO_WAN_TX_DESC_NUM, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %101
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** @FASTPATH_TO_WAN_TX_DESC_BASE, align 8
  %107 = load i32, i32* %2, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call %struct.sk_buff* @get_skb_pointer(i32 %111)
  store %struct.sk_buff* %112, %struct.sk_buff** %1, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %114 = icmp ne %struct.sk_buff* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %117 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %116)
  br label %118

118:                                              ; preds = %115, %105
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %2, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %2, align 4
  br label %101

122:                                              ; preds = %101
  ret void
}

declare dso_local %struct.sk_buff* @get_skb_pointer(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @WAN_TX_DESC_BASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
