; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_solos-pci.c_fpga_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_solos-pci.c_fpga_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solos_card = type { i32, i64, i8*, i32, i64, i32, %struct.TYPE_4__*, %struct.sk_buff**, i64, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i8*, i32 }
%struct.atm_vcc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pkt_hdr = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.atm_vcc* }

@FLAGS_ADDR = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@BUF_SIZE = common dso_local global i8 0, align 1
@atmdebug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Transmitted: port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"size: %d VPI: %d VCI: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solos_card*)* @fpga_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_tx(%struct.solos_card* %0) #0 {
  %2 = alloca %struct.solos_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.atm_vcc*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pkt_hdr*, align 8
  %13 = alloca i32, align 4
  store %struct.solos_card* %0, %struct.solos_card** %2, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %15 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %14, i32 0, i32 3
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %19 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FLAGS_ADDR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @ioread32(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %25 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %3, align 4
  store i8 0, i8* %8, align 1
  br label %30

30:                                               ; preds = %253, %1
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %258

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %252

37:                                               ; preds = %33
  %38 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %39 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %38, i32 0, i32 7
  %40 = load %struct.sk_buff**, %struct.sk_buff*** %39, align 8
  %41 = load i8, i8* %8, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %40, i64 %42
  %44 = load %struct.sk_buff*, %struct.sk_buff** %43, align 8
  store %struct.sk_buff* %44, %struct.sk_buff** %10, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %37
  %48 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %49 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %48, i32 0, i32 6
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = call %struct.TYPE_6__* @SKB_CB(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  %60 = call i32 @dma_unmap_single(i32* %51, i32 %55, i32 %58, i32 %59)
  %61 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %62 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %61, i32 0, i32 7
  %63 = load %struct.sk_buff**, %struct.sk_buff*** %62, align 8
  %64 = load i8, i8* %8, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %63, i64 %65
  store %struct.sk_buff* null, %struct.sk_buff** %66, align 8
  br label %67

67:                                               ; preds = %47, %37
  %68 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %69 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %68, i32 0, i32 9
  %70 = call i32 @spin_lock(i32* %69)
  %71 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %72 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %71, i32 0, i32 10
  %73 = load i32*, i32** %72, align 8
  %74 = load i8, i8* %8, align 1
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call %struct.sk_buff* @skb_dequeue(i32* %76)
  store %struct.sk_buff* %77, %struct.sk_buff** %6, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = icmp ne %struct.sk_buff* %78, null
  br i1 %79, label %89, label %80

80:                                               ; preds = %67
  %81 = load i8, i8* %8, align 1
  %82 = zext i8 %81 to i32
  %83 = shl i32 1, %82
  %84 = xor i32 %83, -1
  %85 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %86 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %80, %67
  %90 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %91 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %90, i32 0, i32 9
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = icmp ne %struct.sk_buff* %93, null
  br i1 %94, label %95, label %117

95:                                               ; preds = %89
  %96 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %97 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %96, i32 0, i32 8
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %117, label %100

100:                                              ; preds = %95
  %101 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %102 = load i8, i8* %8, align 1
  %103 = call i32 @TX_BUF(%struct.solos_card* %101, i8 zeroext %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @memcpy_toio(i32 %103, i8* %106, i32 %109)
  %111 = load i8, i8* %8, align 1
  %112 = zext i8 %111 to i32
  %113 = shl i32 1, %112
  %114 = load i32, i32* %5, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %116, %struct.sk_buff** %10, align 8
  br label %188

117:                                              ; preds = %95, %89
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = icmp ne %struct.sk_buff* %118, null
  br i1 %119, label %120, label %187

120:                                              ; preds = %117
  %121 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %122 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %121, i32 0, i32 8
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %187

125:                                              ; preds = %120
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %11, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = ptrtoint i8* %129 to i64
  %131 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %132 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = and i64 %130, %133
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %125
  %137 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %138 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = load i8, i8* @BUF_SIZE, align 1
  %141 = zext i8 %140 to i32
  %142 = load i8, i8* %8, align 1
  %143 = zext i8 %142 to i32
  %144 = mul nsw i32 %141, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %139, i64 %145
  store i8* %146, i8** %11, align 8
  %147 = load i8*, i8** %11, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @memcpy(i8* %147, i8* %150, i32 %153)
  br label %155

155:                                              ; preds = %136, %125
  %156 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %157 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %156, i32 0, i32 6
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i8*, i8** %11, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @DMA_TO_DEVICE, align 4
  %165 = call i32 @dma_map_single(i32* %159, i8* %160, i32 %163, i32 %164)
  %166 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %167 = call %struct.TYPE_6__* @SKB_CB(%struct.sk_buff* %166)
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %170 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %171 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %170, i32 0, i32 7
  %172 = load %struct.sk_buff**, %struct.sk_buff*** %171, align 8
  %173 = load i8, i8* %8, align 1
  %174 = zext i8 %173 to i64
  %175 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %172, i64 %174
  store %struct.sk_buff* %169, %struct.sk_buff** %175, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %177 = call %struct.TYPE_6__* @SKB_CB(%struct.sk_buff* %176)
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %181 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = load i8, i8* %8, align 1
  %184 = call i64 @TX_DMA_ADDR(i8 zeroext %183)
  %185 = add nsw i64 %182, %184
  %186 = call i32 @iowrite32(i32 %179, i64 %185)
  br label %187

187:                                              ; preds = %155, %120, %117
  br label %188

188:                                              ; preds = %187, %100
  %189 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %190 = icmp ne %struct.sk_buff* %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  br label %253

192:                                              ; preds = %188
  %193 = load i64, i64* @atmdebug, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %229

195:                                              ; preds = %192
  %196 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = bitcast i8* %198 to %struct.pkt_hdr*
  store %struct.pkt_hdr* %199, %struct.pkt_hdr** %12, align 8
  %200 = load %struct.pkt_hdr*, %struct.pkt_hdr** %12, align 8
  %201 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @le16_to_cpu(i32 %202)
  store i32 %203, i32* %13, align 4
  %204 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %205 = call i32 @skb_pull(%struct.sk_buff* %204, i32 12)
  %206 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %207 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %206, i32 0, i32 6
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i8, i8* %8, align 1
  %211 = zext i8 %210 to i32
  %212 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %209, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %211)
  %213 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %214 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %213, i32 0, i32 6
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %13, align 4
  %218 = load %struct.pkt_hdr*, %struct.pkt_hdr** %12, align 8
  %219 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @le16_to_cpu(i32 %220)
  %222 = load %struct.pkt_hdr*, %struct.pkt_hdr** %12, align 8
  %223 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @le16_to_cpu(i32 %224)
  %226 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %216, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %217, i32 %221, i32 %225)
  %227 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %228 = call i32 @print_buffer(%struct.sk_buff* %227)
  br label %229

229:                                              ; preds = %195, %192
  %230 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %231 = call %struct.TYPE_6__* @SKB_CB(%struct.sk_buff* %230)
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 1
  %233 = load %struct.atm_vcc*, %struct.atm_vcc** %232, align 8
  store %struct.atm_vcc* %233, %struct.atm_vcc** %7, align 8
  %234 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %235 = icmp ne %struct.atm_vcc* %234, null
  br i1 %235, label %236, label %245

236:                                              ; preds = %229
  %237 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %238 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %237, i32 0, i32 0
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = call i32 @atomic_inc(i32* %240)
  %242 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %243 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %244 = call i32 @solos_pop(%struct.atm_vcc* %242, %struct.sk_buff* %243)
  br label %251

245:                                              ; preds = %229
  %246 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %247 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %246)
  %248 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %249 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %248, i32 0, i32 5
  %250 = call i32 @wake_up(i32* %249)
  br label %251

251:                                              ; preds = %245, %236
  br label %252

252:                                              ; preds = %251, %33
  br label %253

253:                                              ; preds = %252, %191
  %254 = load i32, i32* %3, align 4
  %255 = ashr i32 %254, 1
  store i32 %255, i32* %3, align 4
  %256 = load i8, i8* %8, align 1
  %257 = add i8 %256, 1
  store i8 %257, i8* %8, align 1
  br label %30

258:                                              ; preds = %30
  %259 = load i32, i32* %5, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %269

261:                                              ; preds = %258
  %262 = load i32, i32* %5, align 4
  %263 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %264 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @FLAGS_ADDR, align 8
  %267 = add nsw i64 %265, %266
  %268 = call i32 @iowrite32(i32 %262, i64 %267)
  br label %269

269:                                              ; preds = %261, %258
  %270 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %271 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %270, i32 0, i32 3
  %272 = load i64, i64* %9, align 8
  %273 = call i32 @spin_unlock_irqrestore(i32* %271, i64 %272)
  %274 = load i32, i32* %4, align 4
  ret i32 %274
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memcpy_toio(i32, i8*, i32) #1

declare dso_local i32 @TX_BUF(%struct.solos_card*, i8 zeroext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @TX_DMA_ADDR(i8 zeroext) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @print_buffer(%struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @solos_pop(%struct.atm_vcc*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
