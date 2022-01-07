; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_mailbox_oam_rx_handler.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_mailbox_oam_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.rx_descriptor*, i32, i32, %struct.TYPE_4__*, i32* }
%struct.rx_descriptor = type { i32, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.atm_vcc* }
%struct.atm_vcc = type { i32 (%struct.atm_vcc*, %struct.uni_cell_header*)* }
%struct.uni_cell_header = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@RX_DMA_CH_OAM = common dso_local global i32 0, align 4
@g_atm_priv_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [53 x i8] c"loop_count = %u, own = %d, c = %d, oam_desc_pos = %u\00", align 1
@RX_DMA_CH_OAM_BUF_SIZE = common dso_local global i64 0, align 8
@ATM_PTI_SEGF5 = common dso_local global i64 0, align 8
@ATM_PTI_E2EF5 = common dso_local global i64 0, align 8
@RX_DMA_CH_OAM_DESC_LEN = common dso_local global i64 0, align 8
@CELL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mailbox_oam_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mailbox_oam_rx_handler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rx_descriptor, align 8
  %3 = alloca %struct.uni_cell_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atm_vcc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @RX_DMA_CH_OAM, align 4
  %9 = call %struct.TYPE_6__* @WRX_DMA_CHANNEL_CONFIG(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %1, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %156, %0
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %159

16:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %37, %16
  %18 = load %struct.rx_descriptor*, %struct.rx_descriptor** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 1), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %18, i64 %19
  %21 = bitcast %struct.rx_descriptor* %2 to i8*
  %22 = bitcast %struct.rx_descriptor* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false)
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = icmp eq i32 %24, 1000
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %39

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i1 [ true, %28 ], [ %36, %32 ]
  br i1 %38, label %17, label %39

39:                                               ; preds = %37, %26
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 1
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 0), align 8
  %50 = call i32 @ASSERT(i32 %42, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45, i32 %48, i64 %49)
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 5), align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 0), align 8
  %53 = load i64, i64* @RX_DMA_CH_OAM_BUF_SIZE, align 8
  %54 = mul i64 %52, %53
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = bitcast i32* %55 to %struct.uni_cell_header*
  store %struct.uni_cell_header* %56, %struct.uni_cell_header** %3, align 8
  %57 = load %struct.uni_cell_header*, %struct.uni_cell_header** %3, align 8
  %58 = getelementptr inbounds %struct.uni_cell_header, %struct.uni_cell_header* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ATM_PTI_SEGF5, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %39
  %63 = load %struct.uni_cell_header*, %struct.uni_cell_header** %3, align 8
  %64 = getelementptr inbounds %struct.uni_cell_header, %struct.uni_cell_header* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ATM_PTI_E2EF5, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62, %39
  %69 = load %struct.uni_cell_header*, %struct.uni_cell_header** %3, align 8
  %70 = getelementptr inbounds %struct.uni_cell_header, %struct.uni_cell_header* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.uni_cell_header*, %struct.uni_cell_header** %3, align 8
  %73 = getelementptr inbounds %struct.uni_cell_header, %struct.uni_cell_header* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @find_vpivci(i32 %71, i32 %74)
  store i32 %75, i32* %4, align 4
  br label %93

76:                                               ; preds = %62
  %77 = load %struct.uni_cell_header*, %struct.uni_cell_header** %3, align 8
  %78 = getelementptr inbounds %struct.uni_cell_header, %struct.uni_cell_header* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.uni_cell_header*, %struct.uni_cell_header** %3, align 8
  %83 = getelementptr inbounds %struct.uni_cell_header, %struct.uni_cell_header* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %86, label %91

86:                                               ; preds = %81, %76
  %87 = load %struct.uni_cell_header*, %struct.uni_cell_header** %3, align 8
  %88 = getelementptr inbounds %struct.uni_cell_header, %struct.uni_cell_header* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @find_vpi(i32 %89)
  store i32 %90, i32* %4, align 4
  br label %92

91:                                               ; preds = %81
  store i32 -1, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %86
  br label %93

93:                                               ; preds = %92, %68
  %94 = load i32, i32* %4, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %130

96:                                               ; preds = %93
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 4), align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.atm_vcc*, %struct.atm_vcc** %101, align 8
  %103 = icmp ne %struct.atm_vcc* %102, null
  br i1 %103, label %104, label %130

104:                                              ; preds = %96
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 4), align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.atm_vcc*, %struct.atm_vcc** %109, align 8
  store %struct.atm_vcc* %110, %struct.atm_vcc** %5, align 8
  %111 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %112 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %111, i32 0, i32 0
  %113 = load i32 (%struct.atm_vcc*, %struct.uni_cell_header*)*, i32 (%struct.atm_vcc*, %struct.uni_cell_header*)** %112, align 8
  %114 = icmp ne i32 (%struct.atm_vcc*, %struct.uni_cell_header*)* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %104
  %116 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %117 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %116, i32 0, i32 0
  %118 = load i32 (%struct.atm_vcc*, %struct.uni_cell_header*)*, i32 (%struct.atm_vcc*, %struct.uni_cell_header*)** %117, align 8
  %119 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %120 = load %struct.uni_cell_header*, %struct.uni_cell_header** %3, align 8
  %121 = call i32 %118(%struct.atm_vcc* %119, %struct.uni_cell_header* %120)
  br label %126

122:                                              ; preds = %104
  %123 = load %struct.uni_cell_header*, %struct.uni_cell_header** %3, align 8
  %124 = bitcast %struct.uni_cell_header* %123 to i8*
  %125 = call i32 @ifx_push_oam(i8* %124)
  br label %126

126:                                              ; preds = %122, %115
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 3), align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 3), align 4
  %129 = call i32 (...) @adsl_led_flash()
  br label %133

130:                                              ; preds = %96, %93
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 2), align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 2), align 8
  br label %133

133:                                              ; preds = %130, %126
  %134 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 3
  store i64 0, i64* %134, align 8
  %135 = load i64, i64* @RX_DMA_CH_OAM_BUF_SIZE, align 8
  %136 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 1
  store i64 %135, i64* %136, align 8
  %137 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 2
  store i64 0, i64* %138, align 8
  %139 = load %struct.rx_descriptor*, %struct.rx_descriptor** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 1), align 8
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 0), align 8
  %141 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %139, i64 %140
  %142 = bitcast %struct.rx_descriptor* %141 to i8*
  %143 = bitcast %struct.rx_descriptor* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 %143, i64 32, i1 false)
  %144 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 0), align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 0), align 8
  %146 = load i64, i64* @RX_DMA_CH_OAM_DESC_LEN, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %133
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 0), align 8
  br label %149

149:                                              ; preds = %148, %133
  %150 = load %struct.uni_cell_header*, %struct.uni_cell_header** %3, align 8
  %151 = ptrtoint %struct.uni_cell_header* %150 to i64
  %152 = load i32, i32* @CELL_SIZE, align 4
  %153 = call i32 @dma_cache_inv(i64 %151, i32 %152)
  %154 = load i32, i32* @RX_DMA_CH_OAM, align 4
  %155 = call i32 @mailbox_signal(i32 %154, i32 0)
  br label %156

156:                                              ; preds = %149
  %157 = load i32, i32* %6, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %12

159:                                              ; preds = %12
  ret void
}

declare dso_local %struct.TYPE_6__* @WRX_DMA_CHANNEL_CONFIG(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ASSERT(i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @find_vpivci(i32, i32) #1

declare dso_local i32 @find_vpi(i32) #1

declare dso_local i32 @ifx_push_oam(i8*) #1

declare dso_local i32 @adsl_led_flash(...) #1

declare dso_local i32 @dma_cache_inv(i64, i32) #1

declare dso_local i32 @mailbox_signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
