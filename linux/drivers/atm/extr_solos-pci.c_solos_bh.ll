; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_solos-pci.c_solos_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_solos-pci.c_solos_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solos_card = type { i32, i32, i64, i32, %struct.TYPE_5__*, %struct.sk_buff**, i64*, i64, i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i64, i32, i32 }
%struct.pkt_hdr = type { i32, i32, i32, i32 }
%struct.atm_vcc = type { %struct.TYPE_4__*, i32 (%struct.atm_vcc*, %struct.sk_buff*)* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@RX_DMA_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid buffer size\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to allocate sk_buff for RX\0A\00", align 1
@atmdebug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Received: port %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"size: %d VPI: %d VCI: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Received packet for unknown VPI.VCI %d.%d on port %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Bad status packet of %d bytes on port %d:\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Dropping console response on port %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to allocate RX skb\00", align 1
@FLAGS_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @solos_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solos_bh(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.solos_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pkt_hdr, align 4
  %8 = alloca %struct.pkt_hdr*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.atm_vcc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store i64 %0, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.solos_card*
  store %struct.solos_card* %15, %struct.solos_card** %3, align 8
  store i32 0, i32* %5, align 4
  %16 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %17 = call i32 @fpga_tx(%struct.solos_card* %16)
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %365, %1
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %21 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %368

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 16, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %290

30:                                               ; preds = %24
  %31 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %32 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %30
  %36 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %37 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %36, i32 0, i32 5
  %38 = load %struct.sk_buff**, %struct.sk_buff*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %38, i64 %40
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %9, align 8
  %43 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %44 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %43, i32 0, i32 5
  %45 = load %struct.sk_buff**, %struct.sk_buff*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %45, i64 %47
  store %struct.sk_buff* null, %struct.sk_buff** %48, align 8
  %49 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %50 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %49, i32 0, i32 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = call %struct.TYPE_6__* @SKB_CB(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @RX_DMA_SIZE, align 4
  %58 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %59 = call i32 @dma_unmap_single(i32* %52, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = bitcast i8* %63 to %struct.pkt_hdr*
  store %struct.pkt_hdr* %64, %struct.pkt_hdr** %8, align 8
  %65 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %66 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, 16
  %73 = trunc i64 %72 to i32
  %74 = call %struct.pkt_hdr* @skb_put(%struct.sk_buff* %69, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %76 = call i32 @skb_pull(%struct.sk_buff* %75, i32 16)
  br label %131

77:                                               ; preds = %30
  store %struct.pkt_hdr* %7, %struct.pkt_hdr** %8, align 8
  %78 = load i32, i32* %6, align 4
  %79 = shl i32 16, %78
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %83 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @RX_BUF(%struct.solos_card* %83, i32 %84)
  %86 = call i32 @memcpy_fromio(%struct.pkt_hdr* %82, i64 %85, i32 16)
  %87 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %88 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %94 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = sub i64 %96, 16
  %98 = icmp ugt i64 %92, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %77
  %100 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %101 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %100, i32 0, i32 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = call i32 (i32*, i8*, ...) @dev_warn(i32* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %365

105:                                              ; preds = %77
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  %108 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32* null, i32 %107)
  store %struct.sk_buff* %108, %struct.sk_buff** %9, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %110 = icmp ne %struct.sk_buff* %109, null
  br i1 %110, label %121, label %111

111:                                              ; preds = %105
  %112 = call i64 (...) @net_ratelimit()
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %116 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %115, i32 0, i32 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = call i32 (i32*, i8*, ...) @dev_warn(i32* %118, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %114, %111
  br label %365

121:                                              ; preds = %105
  %122 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call %struct.pkt_hdr* @skb_put(%struct.sk_buff* %122, i32 %123)
  %125 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i64 @RX_BUF(%struct.solos_card* %125, i32 %126)
  %128 = add i64 %127, 16
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @memcpy_fromio(%struct.pkt_hdr* %124, i64 %128, i32 %129)
  br label %131

131:                                              ; preds = %121, %35
  %132 = load i64, i64* @atmdebug, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %131
  %135 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %136 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %135, i32 0, i32 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %6, align 4
  %140 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  %141 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %142 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %141, i32 0, i32 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %147 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @le16_to_cpu(i32 %148)
  %150 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %151 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @le16_to_cpu(i32 %152)
  %154 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %145, i32 %149, i32 %153)
  %155 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %156 = call i32 @print_buffer(%struct.sk_buff* %155)
  br label %157

157:                                              ; preds = %134, %131
  %158 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %159 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @le16_to_cpu(i32 %160)
  switch i32 %161, label %244 [
    i32 129, label %162
    i32 128, label %219
    i32 130, label %243
  ]

162:                                              ; preds = %157
  %163 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %164 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %163, i32 0, i32 6
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %171 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le16_to_cpu(i32 %172)
  %174 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %175 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @le16_to_cpu(i32 %176)
  %178 = call %struct.atm_vcc* @find_vcc(i64 %169, i32 %173, i32 %177)
  store %struct.atm_vcc* %178, %struct.atm_vcc** %10, align 8
  %179 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %180 = icmp ne %struct.atm_vcc* %179, null
  br i1 %180, label %202, label %181

181:                                              ; preds = %162
  %182 = call i64 (...) @net_ratelimit()
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %181
  %185 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %186 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %185, i32 0, i32 4
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %190 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @le16_to_cpu(i32 %191)
  %193 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %194 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @le16_to_cpu(i32 %195)
  %197 = load i32, i32* %6, align 4
  %198 = call i32 (i32*, i8*, ...) @dev_warn(i32* %188, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %192, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %184, %181
  %200 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %201 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %200)
  br label %289

202:                                              ; preds = %162
  %203 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %204 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %205 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @atm_charge(%struct.atm_vcc* %203, i32 %206)
  %208 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %209 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %208, i32 0, i32 1
  %210 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %209, align 8
  %211 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %212 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %213 = call i32 %210(%struct.atm_vcc* %211, %struct.sk_buff* %212)
  %214 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %215 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %214, i32 0, i32 0
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = call i32 @atomic_inc(i32* %217)
  br label %289

219:                                              ; preds = %157
  %220 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %221 = load i32, i32* %6, align 4
  %222 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %223 = call i32 @process_status(%struct.solos_card* %220, i32 %221, %struct.sk_buff* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %240

225:                                              ; preds = %219
  %226 = call i64 (...) @net_ratelimit()
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %240

228:                                              ; preds = %225
  %229 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %230 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %229, i32 0, i32 4
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %234 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %6, align 4
  %237 = call i32 (i32*, i8*, ...) @dev_warn(i32* %232, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %235, i32 %236)
  %238 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %239 = call i32 @print_buffer(%struct.sk_buff* %238)
  br label %240

240:                                              ; preds = %228, %225, %219
  %241 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %242 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %241)
  br label %289

243:                                              ; preds = %157
  br label %244

244:                                              ; preds = %157, %243
  %245 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %246 = load i32, i32* %6, align 4
  %247 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %248 = call i32 @process_command(%struct.solos_card* %245, i32 %246, %struct.sk_buff* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %244
  br label %289

251:                                              ; preds = %244
  %252 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %253 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %252, i32 0, i32 8
  %254 = call i32 @spin_lock(i32* %253)
  %255 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %256 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %255, i32 0, i32 9
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = call i32 @skb_queue_len(i32* %260)
  %262 = icmp sgt i32 %261, 10
  br i1 %262, label %263, label %276

263:                                              ; preds = %251
  %264 = call i64 (...) @net_ratelimit()
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %263
  %267 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %268 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %267, i32 0, i32 4
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 0
  %271 = load i32, i32* %6, align 4
  %272 = call i32 (i32*, i8*, ...) @dev_warn(i32* %270, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %266, %263
  %274 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %275 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %274)
  br label %285

276:                                              ; preds = %251
  %277 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %278 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %277, i32 0, i32 9
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %6, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %284 = call i32 @skb_queue_tail(i32* %282, %struct.sk_buff* %283)
  br label %285

285:                                              ; preds = %276, %273
  %286 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %287 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %286, i32 0, i32 8
  %288 = call i32 @spin_unlock(i32* %287)
  br label %289

289:                                              ; preds = %285, %250, %240, %202, %199
  br label %290

290:                                              ; preds = %289, %24
  %291 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %292 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %291, i32 0, i32 7
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %364

295:                                              ; preds = %290
  %296 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %297 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %296, i32 0, i32 6
  %298 = load i64*, i64** %297, align 8
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %298, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %364

304:                                              ; preds = %295
  %305 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %306 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %305, i32 0, i32 5
  %307 = load %struct.sk_buff**, %struct.sk_buff*** %306, align 8
  %308 = load i32, i32* %6, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %307, i64 %309
  %311 = load %struct.sk_buff*, %struct.sk_buff** %310, align 8
  %312 = icmp ne %struct.sk_buff* %311, null
  br i1 %312, label %364, label %313

313:                                              ; preds = %304
  %314 = load i32, i32* @RX_DMA_SIZE, align 4
  %315 = call %struct.sk_buff* @dev_alloc_skb(i32 %314)
  store %struct.sk_buff* %315, %struct.sk_buff** %12, align 8
  %316 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %317 = icmp ne %struct.sk_buff* %316, null
  br i1 %317, label %318, label %350

318:                                              ; preds = %313
  %319 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %320 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %319, i32 0, i32 4
  %321 = load %struct.TYPE_5__*, %struct.TYPE_5__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 0
  %323 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %324 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i32, i32* @RX_DMA_SIZE, align 4
  %327 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %328 = call i32 @dma_map_single(i32* %322, i64 %325, i32 %326, i32 %327)
  %329 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %330 = call %struct.TYPE_6__* @SKB_CB(%struct.sk_buff* %329)
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 0
  store i32 %328, i32* %331, align 4
  %332 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %333 = call %struct.TYPE_6__* @SKB_CB(%struct.sk_buff* %332)
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %337 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %336, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = load i32, i32* %6, align 4
  %340 = call i64 @RX_DMA_ADDR(i32 %339)
  %341 = add nsw i64 %338, %340
  %342 = call i32 @iowrite32(i32 %335, i64 %341)
  %343 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %344 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %345 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %344, i32 0, i32 5
  %346 = load %struct.sk_buff**, %struct.sk_buff*** %345, align 8
  %347 = load i32, i32* %6, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %346, i64 %348
  store %struct.sk_buff* %343, %struct.sk_buff** %349, align 8
  br label %363

350:                                              ; preds = %313
  %351 = call i64 (...) @net_ratelimit()
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %350
  %354 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %355 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %354, i32 0, i32 4
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 0
  %358 = call i32 (i32*, i8*, ...) @dev_warn(i32* %357, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %359

359:                                              ; preds = %353, %350
  %360 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %361 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %360, i32 0, i32 3
  %362 = call i32 @tasklet_schedule(i32* %361)
  br label %363

363:                                              ; preds = %359, %318
  br label %364

364:                                              ; preds = %363, %304, %295, %290
  br label %365

365:                                              ; preds = %364, %120, %99
  %366 = load i32, i32* %6, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %6, align 4
  br label %18

368:                                              ; preds = %18
  %369 = load i32, i32* %5, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %379

371:                                              ; preds = %368
  %372 = load i32, i32* %5, align 4
  %373 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %374 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @FLAGS_ADDR, align 8
  %377 = add nsw i64 %375, %376
  %378 = call i32 @iowrite32(i32 %372, i64 %377)
  br label %379

379:                                              ; preds = %371, %368
  ret void
}

declare dso_local i32 @fpga_tx(%struct.solos_card*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.pkt_hdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy_fromio(%struct.pkt_hdr*, i64, i32) #1

declare dso_local i64 @RX_BUF(%struct.solos_card*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @print_buffer(%struct.sk_buff*) #1

declare dso_local %struct.atm_vcc* @find_vcc(i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @atm_charge(%struct.atm_vcc*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @process_status(%struct.solos_card*, i32, %struct.sk_buff*) #1

declare dso_local i32 @process_command(%struct.solos_card*, i32, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @dma_map_single(i32*, i64, i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @RX_DMA_ADDR(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
