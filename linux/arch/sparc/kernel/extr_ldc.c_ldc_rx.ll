; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_ldc_rx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_ldc_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i32, i32, i64, i32, i32, i32, %struct.ldc_packet*, %struct.TYPE_2__, i32 }
%struct.ldc_packet = type { i32 }
%struct.TYPE_2__ = type { i64 }

@RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"RX state[0x%02lx:0x%02lx] head[0x%04lx] tail[0x%04lx]\0A\00", align 1
@LDC_MODE_RAW = common dso_local global i64 0, align 8
@LDC_CHANNEL_UP = common dso_local global i64 0, align 8
@LDC_HS_COMPLETE = common dso_local global i64 0, align 8
@LDC_STATE_CONNECTED = common dso_local global i32 0, align 4
@LDC_EVENT_UP = common dso_local global i32 0, align 4
@LDC_FLAG_RESET = common dso_local global i32 0, align 4
@LDC_EVENT_RESET = common dso_local global i32 0, align 4
@LDC_EVENT_DATA_READY = common dso_local global i32 0, align 4
@LDC_PACKET_SIZE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ldc_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldc_rx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ldc_channel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ldc_packet*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.ldc_channel*
  store %struct.ldc_channel* %14, %struct.ldc_channel** %5, align 8
  %15 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %16 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %15, i32 0, i32 6
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %20 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %23 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %26 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %25, i32 0, i32 1
  %27 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %28 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %27, i32 0, i32 2
  %29 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %30 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %29, i32 0, i32 0
  %31 = call i32 @sun4v_ldc_rx_get_state(i32 %24, i32* %26, i32* %28, i64* %30)
  %32 = load i32, i32* @RX, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %35 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %38 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %41 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ldcdbg(i32 %32, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %36, i32 %39, i32 %42)
  store i32 0, i32* %8, align 4
  %44 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %45 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LDC_MODE_RAW, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %2
  %51 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %52 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LDC_CHANNEL_UP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %50
  %57 = load i64, i64* @LDC_HS_COMPLETE, align 8
  %58 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %59 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %61 = load i32, i32* @LDC_STATE_CONNECTED, align 4
  %62 = call i32 @ldc_set_state(%struct.ldc_channel* %60, i32 %61)
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @LDC_CHANNEL_UP, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = load i32, i32* @LDC_EVENT_UP, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %71 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %66, %56
  br label %74

74:                                               ; preds = %73, %50, %2
  %75 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %76 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @LDC_FLAG_RESET, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %83 = call i32 @ldc_rx_reset(%struct.ldc_channel* %82)
  br label %219

84:                                               ; preds = %74
  %85 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %86 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @LDC_HS_COMPLETE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %123

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %216, %90
  %92 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %93 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = load i32, i32* @LDC_EVENT_RESET, align 4
  store i32 %98, i32* %9, align 4
  %99 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %100 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @LDC_CHANNEL_UP, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @LDC_EVENT_UP, align 4
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %104, %97
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %106, %91
  %111 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %112 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %115 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load i32, i32* @LDC_EVENT_DATA_READY, align 4
  %120 = load i32, i32* %8, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %118, %110
  br label %219

123:                                              ; preds = %84
  %124 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %125 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %6, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %219

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %217, %130
  %132 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %133 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %136 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %134, %137
  br i1 %138, label %139, label %218

139:                                              ; preds = %131
  %140 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %141 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %140, i32 0, i32 7
  %142 = load %struct.ldc_packet*, %struct.ldc_packet** %141, align 8
  %143 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %144 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @LDC_PACKET_SIZE, align 4
  %147 = sdiv i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %142, i64 %148
  store %struct.ldc_packet* %149, %struct.ldc_packet** %10, align 8
  %150 = load %struct.ldc_packet*, %struct.ldc_packet** %10, align 8
  %151 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  switch i32 %152, label %172 [
    i32 130, label %153
    i32 129, label %164
    i32 128, label %168
  ]

153:                                              ; preds = %139
  %154 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %155 = load %struct.ldc_packet*, %struct.ldc_packet** %10, align 8
  %156 = call i32 @process_control_frame(%struct.ldc_channel* %154, %struct.ldc_packet* %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %8, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %159, %153
  br label %175

164:                                              ; preds = %139
  %165 = load i32, i32* @LDC_EVENT_DATA_READY, align 4
  %166 = load i32, i32* %8, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %175

168:                                              ; preds = %139
  %169 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %170 = load %struct.ldc_packet*, %struct.ldc_packet** %10, align 8
  %171 = call i32 @process_error_frame(%struct.ldc_channel* %169, %struct.ldc_packet* %170)
  store i32 %171, i32* %12, align 4
  br label %175

172:                                              ; preds = %139
  %173 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %174 = call i32 @LDC_ABORT(%struct.ldc_channel* %173)
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %172, %168, %164, %163
  %176 = load i32, i32* %12, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  br label %218

179:                                              ; preds = %175
  %180 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %181 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %11, align 8
  %184 = load i32, i32* @LDC_PACKET_SIZE, align 4
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %11, align 8
  %187 = add i64 %186, %185
  store i64 %187, i64* %11, align 8
  %188 = load i64, i64* %11, align 8
  %189 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %190 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @LDC_PACKET_SIZE, align 4
  %193 = mul nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = icmp eq i64 %188, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %179
  store i64 0, i64* %11, align 8
  br label %197

197:                                              ; preds = %196, %179
  %198 = load i64, i64* %11, align 8
  %199 = trunc i64 %198 to i32
  %200 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %201 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 8
  %202 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %203 = load i64, i64* %11, align 8
  %204 = call i32 @__set_rx_head(%struct.ldc_channel* %202, i64 %203)
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %197
  %208 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %209 = call i32 @LDC_ABORT(%struct.ldc_channel* %208)
  br label %218

210:                                              ; preds = %197
  %211 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %212 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @LDC_HS_COMPLETE, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  br label %91

217:                                              ; preds = %210
  br label %131

218:                                              ; preds = %207, %178, %131
  br label %219

219:                                              ; preds = %218, %129, %122, %81
  %220 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %221 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %220, i32 0, i32 6
  %222 = load i64, i64* %7, align 8
  %223 = call i32 @spin_unlock_irqrestore(i32* %221, i64 %222)
  %224 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %225 = load i32, i32* %8, align 4
  %226 = call i32 @send_events(%struct.ldc_channel* %224, i32 %225)
  %227 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %227
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sun4v_ldc_rx_get_state(i32, i32*, i32*, i64*) #1

declare dso_local i32 @ldcdbg(i32, i8*, i64, i64, i32, i32) #1

declare dso_local i32 @ldc_set_state(%struct.ldc_channel*, i32) #1

declare dso_local i32 @ldc_rx_reset(%struct.ldc_channel*) #1

declare dso_local i32 @process_control_frame(%struct.ldc_channel*, %struct.ldc_packet*) #1

declare dso_local i32 @process_error_frame(%struct.ldc_channel*, %struct.ldc_packet*) #1

declare dso_local i32 @LDC_ABORT(%struct.ldc_channel*) #1

declare dso_local i32 @__set_rx_head(%struct.ldc_channel*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @send_events(%struct.ldc_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
