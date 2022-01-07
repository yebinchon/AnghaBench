; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_synclink_cs.c_hdlc_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_synclink_cs.c_hdlc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i64, i32, i32, i32, i64 }

@CHA = common dso_local global i64 0, align 8
@CHB = common dso_local global i64 0, align 8
@HDLC_FLAG_RXC_DPLL = common dso_local global i32 0, align 4
@HDLC_FLAG_TXC_DPLL = common dso_local global i32 0, align 4
@HDLC_FLAG_RXC_BRG = common dso_local global i32 0, align 4
@HDLC_FLAG_TXC_BRG = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i8 0, align 1
@SerialSignal_RTS = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i8 0, align 1
@MODE = common dso_local global i64 0, align 8
@BIT3 = common dso_local global i8 0, align 1
@BIT4 = common dso_local global i8 0, align 1
@CCR0 = common dso_local global i64 0, align 8
@CCR1 = common dso_local global i64 0, align 8
@BIT5 = common dso_local global i8 0, align 1
@HDLC_CRC_32_CCITT = common dso_local global i64 0, align 8
@BIT1 = common dso_local global i8 0, align 1
@HDLC_ENCODING_NRZB = common dso_local global i32 0, align 4
@CCR2 = common dso_local global i64 0, align 8
@HDLC_CRC_NONE = common dso_local global i64 0, align 8
@HDLC_PREAMBLE_PATTERN_NONE = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i8 0, align 1
@BIT7 = common dso_local global i8 0, align 1
@CCR3 = common dso_local global i64 0, align 8
@PRE = common dso_local global i64 0, align 8
@CCR4 = common dso_local global i64 0, align 8
@RLCR = common dso_local global i64 0, align 8
@HDLC_FLAG_AUTO_DCD = common dso_local global i32 0, align 4
@XBCH = common dso_local global i64 0, align 8
@HDLC_FLAG_AUTO_CTS = common dso_local global i32 0, align 4
@IRQ_CTS = common dso_local global i32 0, align 4
@PVR = common dso_local global i64 0, align 8
@IRQ_RXEOM = common dso_local global i32 0, align 4
@IRQ_RXFIFO = common dso_local global i32 0, align 4
@IRQ_ALLSENT = common dso_local global i32 0, align 4
@IRQ_UNDERRUN = common dso_local global i32 0, align 4
@IRQ_TXFIFO = common dso_local global i32 0, align 4
@CMD_TXRESET = common dso_local global i64 0, align 8
@CMD_RXRESET = common dso_local global i64 0, align 8
@ISR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @hdlc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_mode(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %7 = load i64, i64* @CHA, align 8
  %8 = call i32 @irq_disable(%struct.TYPE_20__* %6, i64 %7, i32 65535)
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %10 = load i64, i64* @CHB, align 8
  %11 = call i32 @irq_disable(%struct.TYPE_20__* %9, i64 %10, i32 65535)
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %13 = call i32 @port_irq_disable(%struct.TYPE_20__* %12, i32 255)
  store i8 0, i8* %5, align 1
  store i8 0, i8* %4, align 1
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HDLC_FLAG_RXC_DPLL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @HDLC_FLAG_TXC_DPLL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i8 7, i8* %4, align 1
  br label %78

30:                                               ; preds = %21, %1
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @HDLC_FLAG_RXC_BRG, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @HDLC_FLAG_TXC_BRG, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i8 7, i8* %4, align 1
  store i8 1, i8* %5, align 1
  br label %77

47:                                               ; preds = %38, %30
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @HDLC_FLAG_RXC_DPLL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @HDLC_FLAG_TXC_BRG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i8 6, i8* %4, align 1
  store i8 1, i8* %5, align 1
  br label %65

64:                                               ; preds = %55
  store i8 6, i8* %4, align 1
  br label %65

65:                                               ; preds = %64, %63
  br label %76

66:                                               ; preds = %47
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @HDLC_FLAG_TXC_BRG, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i8 1, i8* %5, align 1
  br label %75

75:                                               ; preds = %74, %66
  br label %76

76:                                               ; preds = %75, %65
  br label %77

77:                                               ; preds = %76, %46
  br label %78

78:                                               ; preds = %77, %29
  store i8 -126, i8* %3, align 1
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i8, i8* @BIT0, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* %3, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %88, %86
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %3, align 1
  br label %91

91:                                               ; preds = %84, %78
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SerialSignal_RTS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load i8, i8* @BIT2, align 1
  %100 = zext i8 %99 to i32
  %101 = load i8, i8* %3, align 1
  %102 = zext i8 %101 to i32
  %103 = or i32 %102, %100
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %3, align 1
  br label %105

105:                                              ; preds = %98, %91
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %107 = load i64, i64* @CHA, align 8
  %108 = load i64, i64* @MODE, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i8, i8* %3, align 1
  %111 = call i32 @write_reg(%struct.TYPE_20__* %106, i64 %109, i8 zeroext %110)
  store i8 -64, i8* %3, align 1
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %150 [
    i32 135, label %116
    i32 136, label %123
    i32 137, label %130
    i32 138, label %140
  ]

116:                                              ; preds = %105
  %117 = load i8, i8* @BIT3, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* %3, align 1
  %120 = zext i8 %119 to i32
  %121 = or i32 %120, %118
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %3, align 1
  br label %150

123:                                              ; preds = %105
  %124 = load i8, i8* @BIT4, align 1
  %125 = zext i8 %124 to i32
  %126 = load i8, i8* %3, align 1
  %127 = zext i8 %126 to i32
  %128 = or i32 %127, %125
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %3, align 1
  br label %150

130:                                              ; preds = %105
  %131 = load i8, i8* @BIT4, align 1
  %132 = zext i8 %131 to i32
  %133 = load i8, i8* @BIT2, align 1
  %134 = zext i8 %133 to i32
  %135 = or i32 %132, %134
  %136 = load i8, i8* %3, align 1
  %137 = zext i8 %136 to i32
  %138 = or i32 %137, %135
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %3, align 1
  br label %150

140:                                              ; preds = %105
  %141 = load i8, i8* @BIT4, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8, i8* @BIT3, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %142, %144
  %146 = load i8, i8* %3, align 1
  %147 = zext i8 %146 to i32
  %148 = or i32 %147, %145
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %3, align 1
  br label %150

150:                                              ; preds = %105, %140, %130, %123, %116
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %152 = load i64, i64* @CHA, align 8
  %153 = load i64, i64* @CCR0, align 8
  %154 = add nsw i64 %152, %153
  %155 = load i8, i8* %3, align 1
  %156 = call i32 @write_reg(%struct.TYPE_20__* %151, i64 %154, i8 zeroext %155)
  %157 = load i8, i8* %4, align 1
  %158 = zext i8 %157 to i32
  %159 = add nsw i32 16, %158
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %3, align 1
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %162 = load i64, i64* @CHA, align 8
  %163 = load i64, i64* @CCR1, align 8
  %164 = add nsw i64 %162, %163
  %165 = load i8, i8* %3, align 1
  %166 = call i32 @write_reg(%struct.TYPE_20__* %161, i64 %164, i8 zeroext %165)
  store i8 0, i8* %3, align 1
  %167 = load i8, i8* %4, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp eq i32 %168, 2
  br i1 %169, label %190, label %170

170:                                              ; preds = %150
  %171 = load i8, i8* %4, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %172, 3
  br i1 %173, label %190, label %174

174:                                              ; preds = %170
  %175 = load i8, i8* %4, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp eq i32 %176, 6
  br i1 %177, label %190, label %178

178:                                              ; preds = %174
  %179 = load i8, i8* %4, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 7
  br i1 %181, label %190, label %182

182:                                              ; preds = %178
  %183 = load i8, i8* %4, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %182
  %187 = load i8, i8* %5, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %197

190:                                              ; preds = %186, %178, %174, %170, %150
  %191 = load i8, i8* @BIT5, align 1
  %192 = zext i8 %191 to i32
  %193 = load i8, i8* %3, align 1
  %194 = zext i8 %193 to i32
  %195 = or i32 %194, %192
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %3, align 1
  br label %197

197:                                              ; preds = %190, %186, %182
  %198 = load i8, i8* %5, align 1
  %199 = icmp ne i8 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = load i8, i8* @BIT4, align 1
  %202 = zext i8 %201 to i32
  %203 = load i8, i8* %3, align 1
  %204 = zext i8 %203 to i32
  %205 = or i32 %204, %202
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %3, align 1
  br label %207

207:                                              ; preds = %200, %197
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @HDLC_CRC_32_CCITT, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %207
  %215 = load i8, i8* @BIT1, align 1
  %216 = zext i8 %215 to i32
  %217 = load i8, i8* %3, align 1
  %218 = zext i8 %217 to i32
  %219 = or i32 %218, %216
  %220 = trunc i32 %219 to i8
  store i8 %220, i8* %3, align 1
  br label %221

221:                                              ; preds = %214, %207
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @HDLC_ENCODING_NRZB, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %221
  %229 = load i8, i8* @BIT0, align 1
  %230 = zext i8 %229 to i32
  %231 = load i8, i8* %3, align 1
  %232 = zext i8 %231 to i32
  %233 = or i32 %232, %230
  %234 = trunc i32 %233 to i8
  store i8 %234, i8* %3, align 1
  br label %235

235:                                              ; preds = %228, %221
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %237 = load i64, i64* @CHA, align 8
  %238 = load i64, i64* @CCR2, align 8
  %239 = add nsw i64 %237, %238
  %240 = load i8, i8* %3, align 1
  %241 = call i32 @write_reg(%struct.TYPE_20__* %236, i64 %239, i8 zeroext %240)
  store i8 0, i8* %3, align 1
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @HDLC_CRC_NONE, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %258

248:                                              ; preds = %235
  %249 = load i8, i8* @BIT2, align 1
  %250 = zext i8 %249 to i32
  %251 = load i8, i8* @BIT1, align 1
  %252 = zext i8 %251 to i32
  %253 = or i32 %250, %252
  %254 = load i8, i8* %3, align 1
  %255 = zext i8 %254 to i32
  %256 = or i32 %255, %253
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %3, align 1
  br label %258

258:                                              ; preds = %248, %235
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @HDLC_PREAMBLE_PATTERN_NONE, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %258
  %266 = load i8, i8* @BIT5, align 1
  %267 = zext i8 %266 to i32
  %268 = load i8, i8* %3, align 1
  %269 = zext i8 %268 to i32
  %270 = or i32 %269, %267
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* %3, align 1
  br label %272

272:                                              ; preds = %265, %258
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  switch i32 %276, label %301 [
    i32 134, label %277
    i32 133, label %284
    i32 132, label %291
  ]

277:                                              ; preds = %272
  %278 = load i8, i8* @BIT6, align 1
  %279 = zext i8 %278 to i32
  %280 = load i8, i8* %3, align 1
  %281 = zext i8 %280 to i32
  %282 = or i32 %281, %279
  %283 = trunc i32 %282 to i8
  store i8 %283, i8* %3, align 1
  br label %301

284:                                              ; preds = %272
  %285 = load i8, i8* @BIT6, align 1
  %286 = zext i8 %285 to i32
  %287 = load i8, i8* %3, align 1
  %288 = zext i8 %287 to i32
  %289 = or i32 %288, %286
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %3, align 1
  br label %301

291:                                              ; preds = %272
  %292 = load i8, i8* @BIT7, align 1
  %293 = zext i8 %292 to i32
  %294 = load i8, i8* @BIT6, align 1
  %295 = zext i8 %294 to i32
  %296 = or i32 %293, %295
  %297 = load i8, i8* %3, align 1
  %298 = zext i8 %297 to i32
  %299 = or i32 %298, %296
  %300 = trunc i32 %299 to i8
  store i8 %300, i8* %3, align 1
  br label %301

301:                                              ; preds = %272, %291, %284, %277
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %303 = load i64, i64* @CHA, align 8
  %304 = load i64, i64* @CCR3, align 8
  %305 = add nsw i64 %303, %304
  %306 = load i8, i8* %3, align 1
  %307 = call i32 @write_reg(%struct.TYPE_20__* %302, i64 %305, i8 zeroext %306)
  store i8 0, i8* %3, align 1
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  switch i32 %311, label %316 [
    i32 129, label %312
    i32 130, label %313
    i32 131, label %314
    i32 128, label %315
  ]

312:                                              ; preds = %301
  store i8 126, i8* %3, align 1
  br label %316

313:                                              ; preds = %301
  store i8 -86, i8* %3, align 1
  br label %316

314:                                              ; preds = %301
  store i8 85, i8* %3, align 1
  br label %316

315:                                              ; preds = %301
  store i8 -1, i8* %3, align 1
  br label %316

316:                                              ; preds = %301, %315, %314, %313, %312
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %318 = load i64, i64* @CHA, align 8
  %319 = load i64, i64* @PRE, align 8
  %320 = add nsw i64 %318, %319
  %321 = load i8, i8* %3, align 1
  %322 = call i32 @write_reg(%struct.TYPE_20__* %317, i64 %320, i8 zeroext %321)
  store i8 80, i8* %3, align 1
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %324 = load i64, i64* @CHA, align 8
  %325 = load i64, i64* @CCR4, align 8
  %326 = add nsw i64 %324, %325
  %327 = load i8, i8* %3, align 1
  %328 = call i32 @write_reg(%struct.TYPE_20__* %323, i64 %326, i8 zeroext %327)
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @HDLC_FLAG_RXC_DPLL, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %345

336:                                              ; preds = %316
  %337 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %338 = load i64, i64* @CHA, align 8
  %339 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %340, i32 0, i32 5
  %342 = load i32, i32* %341, align 8
  %343 = mul nsw i32 %342, 16
  %344 = call i32 @mgslpc_set_rate(%struct.TYPE_20__* %337, i64 %338, i32 %343)
  br label %353

345:                                              ; preds = %316
  %346 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %347 = load i64, i64* @CHA, align 8
  %348 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %348, i32 0, i32 2
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @mgslpc_set_rate(%struct.TYPE_20__* %346, i64 %347, i32 %351)
  br label %353

353:                                              ; preds = %345, %336
  %354 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %355 = load i64, i64* @CHA, align 8
  %356 = load i64, i64* @RLCR, align 8
  %357 = add nsw i64 %355, %356
  %358 = call i32 @write_reg(%struct.TYPE_20__* %354, i64 %357, i8 zeroext 0)
  store i8 0, i8* %3, align 1
  %359 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @HDLC_FLAG_AUTO_DCD, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %373

366:                                              ; preds = %353
  %367 = load i8, i8* @BIT5, align 1
  %368 = zext i8 %367 to i32
  %369 = load i8, i8* %3, align 1
  %370 = zext i8 %369 to i32
  %371 = or i32 %370, %368
  %372 = trunc i32 %371 to i8
  store i8 %372, i8* %3, align 1
  br label %373

373:                                              ; preds = %366, %353
  %374 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %375 = load i64, i64* @CHA, align 8
  %376 = load i64, i64* @XBCH, align 8
  %377 = add nsw i64 %375, %376
  %378 = load i8, i8* %3, align 1
  %379 = call i32 @write_reg(%struct.TYPE_20__* %374, i64 %377, i8 zeroext %378)
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %381 = call i32 @enable_auxclk(%struct.TYPE_20__* %380)
  %382 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %382, i32 0, i32 2
  %384 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i32 0, i32 6
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %392, label %387

387:                                              ; preds = %373
  %388 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %389 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %387, %373
  %393 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %394 = call i32 @loopback_enable(%struct.TYPE_20__* %393)
  br label %395

395:                                              ; preds = %392, %387
  %396 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %397 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %396, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @HDLC_FLAG_AUTO_CTS, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %414

403:                                              ; preds = %395
  %404 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %405 = load i64, i64* @CHB, align 8
  %406 = load i32, i32* @IRQ_CTS, align 4
  %407 = call i32 @irq_enable(%struct.TYPE_20__* %404, i64 %405, i32 %406)
  %408 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %409 = load i64, i64* @CHA, align 8
  %410 = load i64, i64* @PVR, align 8
  %411 = add nsw i64 %409, %410
  %412 = load i8, i8* @BIT3, align 1
  %413 = call i32 @set_reg_bits(%struct.TYPE_20__* %408, i64 %411, i8 zeroext %412)
  br label %421

414:                                              ; preds = %395
  %415 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %416 = load i64, i64* @CHA, align 8
  %417 = load i64, i64* @PVR, align 8
  %418 = add nsw i64 %416, %417
  %419 = load i8, i8* @BIT3, align 1
  %420 = call i32 @clear_reg_bits(%struct.TYPE_20__* %415, i64 %418, i8 zeroext %419)
  br label %421

421:                                              ; preds = %414, %403
  %422 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %423 = load i64, i64* @CHA, align 8
  %424 = load i32, i32* @IRQ_RXEOM, align 4
  %425 = load i32, i32* @IRQ_RXFIFO, align 4
  %426 = or i32 %424, %425
  %427 = load i32, i32* @IRQ_ALLSENT, align 4
  %428 = or i32 %426, %427
  %429 = load i32, i32* @IRQ_UNDERRUN, align 4
  %430 = or i32 %428, %429
  %431 = load i32, i32* @IRQ_TXFIFO, align 4
  %432 = or i32 %430, %431
  %433 = call i32 @irq_enable(%struct.TYPE_20__* %422, i64 %423, i32 %432)
  %434 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %435 = load i64, i64* @CHA, align 8
  %436 = load i64, i64* @CMD_TXRESET, align 8
  %437 = load i64, i64* @CMD_RXRESET, align 8
  %438 = add nsw i64 %436, %437
  %439 = call i32 @issue_command(%struct.TYPE_20__* %434, i64 %435, i64 %438)
  %440 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %441 = load i64, i64* @CHA, align 8
  %442 = call i32 @wait_command_complete(%struct.TYPE_20__* %440, i64 %441)
  %443 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %444 = load i64, i64* @CHA, align 8
  %445 = load i64, i64* @ISR, align 8
  %446 = add nsw i64 %444, %445
  %447 = call i32 @read_reg16(%struct.TYPE_20__* %443, i64 %446)
  %448 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %449 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %448, i32 0, i32 1
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %459, label %452

452:                                              ; preds = %421
  %453 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %454 = load i64, i64* @CHA, align 8
  %455 = load i64, i64* @CCR0, align 8
  %456 = add nsw i64 %454, %455
  %457 = load i8, i8* @BIT6, align 1
  %458 = call i32 @clear_reg_bits(%struct.TYPE_20__* %453, i64 %456, i8 zeroext %457)
  br label %459

459:                                              ; preds = %452, %421
  %460 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %461 = call i32 @tx_set_idle(%struct.TYPE_20__* %460)
  %462 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %463 = call i32 @tx_stop(%struct.TYPE_20__* %462)
  %464 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %465 = call i32 @rx_stop(%struct.TYPE_20__* %464)
  ret void
}

declare dso_local i32 @irq_disable(%struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @port_irq_disable(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @write_reg(%struct.TYPE_20__*, i64, i8 zeroext) #1

declare dso_local i32 @mgslpc_set_rate(%struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @enable_auxclk(%struct.TYPE_20__*) #1

declare dso_local i32 @loopback_enable(%struct.TYPE_20__*) #1

declare dso_local i32 @irq_enable(%struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @set_reg_bits(%struct.TYPE_20__*, i64, i8 zeroext) #1

declare dso_local i32 @clear_reg_bits(%struct.TYPE_20__*, i64, i8 zeroext) #1

declare dso_local i32 @issue_command(%struct.TYPE_20__*, i64, i64) #1

declare dso_local i32 @wait_command_complete(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @read_reg16(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @tx_set_idle(%struct.TYPE_20__*) #1

declare dso_local i32 @tx_stop(%struct.TYPE_20__*) #1

declare dso_local i32 @rx_stop(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
