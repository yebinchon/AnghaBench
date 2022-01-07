; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_tx_packets.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_tx_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, %struct.TYPE_7__*, %struct.ag71xx_ring }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ag71xx_ring = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.ag71xx_platform_data = type { i64 }
%struct.ag71xx_desc = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s: processing TX ring\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@AG71XX_REG_TX_STATUS = common dso_local global i32 0, align 4
@TX_STATUS_PS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: %d packets sent out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*, i32)* @ag71xx_tx_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_tx_packets(%struct.ag71xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ag71xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ag71xx_ring*, align 8
  %7 = alloca %struct.ag71xx_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ag71xx_desc*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %18 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %17, i32 0, i32 2
  store %struct.ag71xx_ring* %18, %struct.ag71xx_ring** %6, align 8
  %19 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %20 = call %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx* %19)
  store %struct.ag71xx_platform_data* %20, %struct.ag71xx_platform_data** %7, align 8
  store i32 0, i32* %8, align 4
  %21 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %22 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @BIT(i32 %23)
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %27 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @BIT(i32 %28)
  store i32 %29, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %30 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %31 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %141, %101, %2
  %37 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %38 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %39, %40
  %42 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %43 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %142

46:                                               ; preds = %36
  %47 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %48 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %14, align 4
  %54 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %54, i32 %55)
  store %struct.ag71xx_desc* %56, %struct.ag71xx_desc** %15, align 8
  %57 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %58 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load %struct.sk_buff*, %struct.sk_buff** %63, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %16, align 8
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %46
  %68 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %15, align 8
  %69 = call i32 @ag71xx_desc_empty(%struct.ag71xx_desc* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %67
  %72 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %73 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %78 = call i64 @ag71xx_check_dma_stuck(%struct.ag71xx* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %82 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %81, i32 0, i32 0
  %83 = load i32, i32* @HZ, align 4
  %84 = sdiv i32 %83, 2
  %85 = call i32 @schedule_delayed_work(i32* %82, i32 %84)
  store i32 1, i32* %8, align 4
  br label %86

86:                                               ; preds = %80, %76, %71
  br label %142

87:                                               ; preds = %67, %46
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i32, i32* @DESC_EMPTY, align 4
  %92 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %15, align 8
  %93 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %87
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %100 = icmp ne %struct.sk_buff* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  br label %36

102:                                              ; preds = %96
  %103 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %104 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %103)
  %105 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %106 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %105, i32 0, i32 2
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %111, align 8
  %112 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %113 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %112, i32 0, i32 2
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %128 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %134, %102
  %132 = load i32, i32* %13, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %136 = load i32, i32* @AG71XX_REG_TX_STATUS, align 4
  %137 = load i32, i32* @TX_STATUS_PS, align 4
  %138 = call i32 @ag71xx_wr(%struct.ag71xx* %135, i32 %136, i32 %137)
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %13, align 4
  br label %131

141:                                              ; preds = %131
  br label %36

142:                                              ; preds = %86, %36
  %143 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %144 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %143, i32 0, i32 1
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  br label %201

153:                                              ; preds = %142
  %154 = load i32, i32* %12, align 4
  %155 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %156 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %155, i32 0, i32 1
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %154
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %164 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %163, i32 0, i32 1
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, %162
  store i32 %169, i32* %167, align 4
  %170 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %171 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %170, i32 0, i32 1
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @netdev_completed_queue(%struct.TYPE_7__* %172, i32 %173, i32 %174)
  %176 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %177 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %180 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %178, %181
  %183 = load i32, i32* %10, align 4
  %184 = mul nsw i32 %183, 3
  %185 = sdiv i32 %184, 4
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %153
  %188 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %189 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %188, i32 0, i32 1
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = call i32 @netif_wake_queue(%struct.TYPE_7__* %190)
  br label %192

192:                                              ; preds = %187, %153
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %192
  %196 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %197 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %196, i32 0, i32 0
  %198 = call i32 @cancel_delayed_work(i32* %197)
  br label %199

199:                                              ; preds = %195, %192
  %200 = load i32, i32* %11, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %199, %152
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i32 @ag71xx_desc_empty(%struct.ag71xx_desc*) #1

declare dso_local i64 @ag71xx_check_dma_stuck(%struct.ag71xx*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @netdev_completed_queue(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_7__*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
