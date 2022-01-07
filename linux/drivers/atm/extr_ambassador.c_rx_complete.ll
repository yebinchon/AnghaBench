; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_rx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_rx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.atm_vcc** }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.atm_vcc = type { %struct.TYPE_14__*, i32 (%struct.atm_vcc*, %struct.sk_buff*)*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.atm_vcc* }

@DBG_FLOW = common dso_local global i32 0, align 4
@DBG_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"rx_complete %p %p (len=%hu)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"<<<\00", align 1
@DBG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"dropped thanks to atm_charge (vc %hu, truesize %u)\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"dropped over-size frame\00", align 1
@DBG_WARN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"got frame but RX closed for channel %hu\00", align 1
@CRC_ERR = common dso_local global i64 0, align 8
@LEN_ERR = common dso_local global i64 0, align 8
@ABORT_ERR = common dso_local global i64 0, align 8
@UNUSED_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_17__*)* @rx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_complete(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.atm_vcc*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sk_buff* @bus_to_virt(i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %5, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @be16_to_cpu(i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @be16_to_cpu(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @be16_to_cpu(i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i32, i32* @DBG_FLOW, align 4
  %27 = load i32, i32* @DBG_RX, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 (i32, i8*, ...) @PRINTD(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %29, %struct.TYPE_17__* %30, i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %115, label %35

35:                                               ; preds = %2
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load %struct.atm_vcc**, %struct.atm_vcc*** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %38, i64 %39
  %41 = load %struct.atm_vcc*, %struct.atm_vcc** %40, align 8
  store %struct.atm_vcc* %41, %struct.atm_vcc** %9, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %49 = icmp ne %struct.atm_vcc* %48, null
  br i1 %49, label %50, label %108

50:                                               ; preds = %35
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %53 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ule i64 %51, %56
  br i1 %57, label %58, label %99

58:                                               ; preds = %50
  %59 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @atm_charge(%struct.atm_vcc* %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %58
  %66 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call %struct.TYPE_11__* @ATM_SKB(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store %struct.atm_vcc* %66, %struct.atm_vcc** %69, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @skb_put(%struct.sk_buff* %70, i64 %71)
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = call i32 @dump_skb(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %73, %struct.sk_buff* %74)
  %76 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %77 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = call i32 @atomic_inc(i32* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i32 @__net_timestamp(%struct.sk_buff* %81)
  %83 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %84 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %83, i32 0, i32 1
  %85 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %84, align 8
  %86 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i32 %85(%struct.atm_vcc* %86, %struct.sk_buff* %87)
  br label %173

89:                                               ; preds = %58
  %90 = load i32, i32* @DBG_INFO, align 4
  %91 = load i32, i32* @DBG_RX, align 4
  %92 = or i32 %90, %91
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i8*, ...) @PRINTD(i32 %92, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %93, i32 %96)
  br label %98

98:                                               ; preds = %89
  br label %107

99:                                               ; preds = %50
  %100 = load i32, i32* @KERN_INFO, align 4
  %101 = call i32 @PRINTK(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %103 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %102, i32 0, i32 0
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = call i32 @atomic_inc(i32* %105)
  br label %107

107:                                              ; preds = %99, %98
  br label %114

108:                                              ; preds = %35
  %109 = load i32, i32* @DBG_WARN, align 4
  %110 = load i32, i32* @DBG_RX, align 4
  %111 = or i32 %109, %110
  %112 = load i64, i64* %6, align 8
  %113 = call i32 (i32, i8*, ...) @PRINTD(i32 %111, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %112)
  br label %114

114:                                              ; preds = %108, %107
  br label %170

115:                                              ; preds = %2
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* @CRC_ERR, align 8
  %124 = and i64 %122, %123
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %115
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %126, %115
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* @LEN_ERR, align 8
  %136 = and i64 %134, %135
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %138, %133
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* @ABORT_ERR, align 8
  %148 = and i64 %146, %147
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %150, %145
  %158 = load i64, i64* %7, align 8
  %159 = load i64, i64* @UNUSED_ERR, align 8
  %160 = and i64 %158, %159
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %162, %157
  br label %170

170:                                              ; preds = %169, %114
  %171 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %172 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %171)
  br label %173

173:                                              ; preds = %170, %65
  ret void
}

declare dso_local %struct.sk_buff* @bus_to_virt(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

declare dso_local i64 @atm_charge(%struct.atm_vcc*, i32) #1

declare dso_local %struct.TYPE_11__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @dump_skb(i8*, i64, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @PRINTK(i32, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
