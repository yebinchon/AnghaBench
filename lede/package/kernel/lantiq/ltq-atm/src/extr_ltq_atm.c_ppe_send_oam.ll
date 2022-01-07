; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_ppe_send_oam.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_ppe_send_oam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.tx_descriptor*, %struct.sk_buff** }
%struct.tx_descriptor = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.atm_vcc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.uni_cell_header = type { i64, i32, i32 }

@ATM_PTI_SEGF5 = common dso_local global i64 0, align 8
@ATM_PTI_E2EF5 = common dso_local global i64 0, align 8
@g_atm_priv_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@g_showtime = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"not in showtime\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"FIND_VCC_FAIL\0A\00", align 1
@CELL_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"ALLOC_SKB_TX_FAIL\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"ALLOC_TX_CONNECTION_FAIL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, i8*, i32)* @ppe_send_oam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppe_send_oam(%struct.atm_vcc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atm_vcc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uni_cell_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.tx_descriptor, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.uni_cell_header*
  store %struct.uni_cell_header* %14, %struct.uni_cell_header** %9, align 8
  %15 = bitcast %struct.tx_descriptor* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 40, i1 false)
  %16 = load %struct.uni_cell_header*, %struct.uni_cell_header** %9, align 8
  %17 = getelementptr inbounds %struct.uni_cell_header, %struct.uni_cell_header* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ATM_PTI_SEGF5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.uni_cell_header*, %struct.uni_cell_header** %9, align 8
  %23 = getelementptr inbounds %struct.uni_cell_header, %struct.uni_cell_header* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ATM_PTI_E2EF5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21, %3
  %28 = load %struct.uni_cell_header*, %struct.uni_cell_header** %9, align 8
  %29 = getelementptr inbounds %struct.uni_cell_header, %struct.uni_cell_header* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.uni_cell_header*, %struct.uni_cell_header** %9, align 8
  %32 = getelementptr inbounds %struct.uni_cell_header, %struct.uni_cell_header* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @find_vpivci(i32 %30, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %27, %21
  %37 = load %struct.uni_cell_header*, %struct.uni_cell_header** %9, align 8
  %38 = getelementptr inbounds %struct.uni_cell_header, %struct.uni_cell_header* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.uni_cell_header*, %struct.uni_cell_header** %9, align 8
  %43 = getelementptr inbounds %struct.uni_cell_header, %struct.uni_cell_header* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %57

46:                                               ; preds = %41, %36
  %47 = load %struct.uni_cell_header*, %struct.uni_cell_header** %9, align 8
  %48 = getelementptr inbounds %struct.uni_cell_header, %struct.uni_cell_header* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @find_vpi(i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46, %27
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 3), align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 3), align 4
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %191

57:                                               ; preds = %46, %41
  %58 = load i32, i32* @g_showtime, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 2), align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 2), align 8
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %191

66:                                               ; preds = %57
  %67 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %68 = call i32 @find_vcc(%struct.atm_vcc* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 2), align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 2), align 8
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %191

77:                                               ; preds = %66
  %78 = load i32, i32* @CELL_SIZE, align 4
  %79 = call %struct.sk_buff* @alloc_skb_tx(i32 %78)
  store %struct.sk_buff* %79, %struct.sk_buff** %11, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %81 = icmp eq %struct.sk_buff* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 2), align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 2), align 8
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %191

88:                                               ; preds = %77
  %89 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %90 = load i32, i32* @CELL_SIZE, align 4
  %91 = call i32 @skb_put(%struct.sk_buff* %89, i32 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* @CELL_SIZE, align 4
  %97 = call i32 @memcpy(i64 %94, i8* %95, i32 %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = lshr i32 %101, 2
  %103 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %12, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = load i32, i32* @CELL_SIZE, align 4
  %105 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %12, i32 0, i32 7
  store i32 %104, i32* %105, align 8
  %106 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %12, i32 0, i32 6
  store i64 0, i64* %106, align 8
  %107 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %12, i32 0, i32 1
  store i32 1, i32* %107, align 4
  %108 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %12, i32 0, i32 2
  store i32 1, i32* %108, align 8
  %109 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %12, i32 0, i32 3
  store i32 1, i32* %109, align 4
  %110 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %12, i32 0, i32 5
  store i32 1, i32* %110, align 4
  %111 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %12, i32 0, i32 4
  store i32 1, i32* %111, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @get_tx_desc(i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %88
  %117 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %118 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %117)
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 2), align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 2), align 8
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %191

124:                                              ; preds = %88
  %125 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %126 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = icmp ne %struct.TYPE_4__* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %131 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = call i32 @atomic_inc(i32* %133)
  br label %135

135:                                              ; preds = %129, %124
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 1), align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load %struct.sk_buff**, %struct.sk_buff*** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %141, i64 %143
  %145 = load %struct.sk_buff*, %struct.sk_buff** %144, align 8
  %146 = icmp ne %struct.sk_buff* %145, null
  br i1 %146, label %147, label %159

147:                                              ; preds = %135
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 1), align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load %struct.sk_buff**, %struct.sk_buff*** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %153, i64 %155
  %157 = load %struct.sk_buff*, %struct.sk_buff** %156, align 8
  %158 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %157)
  br label %159

159:                                              ; preds = %147, %135
  %160 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 1), align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load %struct.sk_buff**, %struct.sk_buff*** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %166, i64 %168
  store %struct.sk_buff* %160, %struct.sk_buff** %169, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 1), align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load %struct.tx_descriptor*, %struct.tx_descriptor** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %175, i64 %177
  %179 = bitcast %struct.tx_descriptor* %178 to i8*
  %180 = bitcast %struct.tx_descriptor* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 8 %180, i64 40, i1 false)
  %181 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* @CELL_SIZE, align 4
  %185 = call i32 @dma_cache_wback(i64 %183, i32 %184)
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @mailbox_signal(i32 %186, i32 1)
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 0), align 8
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 0), align 8
  %190 = call i32 (...) @adsl_led_flash()
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %159, %116, %82, %71, %60, %52
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @find_vpivci(i32, i32) #2

declare dso_local i64 @find_vpi(i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @find_vcc(%struct.atm_vcc*) #2

declare dso_local %struct.sk_buff* @alloc_skb_tx(i32) #2

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i32 @memcpy(i64, i8*, i32) #2

declare dso_local i32 @get_tx_desc(i32) #2

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #2

declare dso_local i32 @atomic_inc(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dma_cache_wback(i64, i32) #2

declare dso_local i32 @mailbox_signal(i32, i32) #2

declare dso_local i32 @adsl_led_flash(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
