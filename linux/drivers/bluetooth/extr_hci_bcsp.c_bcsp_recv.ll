; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcsp.c_bcsp_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcsp.c_bcsp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.bcsp_struct* }
%struct.bcsp_struct = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"hu %p count %d rx_state %d rx_count %ld\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Short BCSP packet\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Error in BCSP hdr checksum\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Checksum failed: computed %04x received %04x\00", align 1
@BCSP_ESCSTATE_NOESC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Can't allocate mem for new packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i8*, i32)* @bcsp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcsp_recv(%struct.hci_uart* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_uart*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcsp_struct*, align 8
  %9 = alloca i8*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %11 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %10, i32 0, i32 0
  %12 = load %struct.bcsp_struct*, %struct.bcsp_struct** %11, align 8
  store %struct.bcsp_struct* %12, %struct.bcsp_struct** %8, align 8
  %13 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %16 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %19 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %13, i32 %14, i32 %17, i32 %20)
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %9, align 8
  br label %23

23:                                               ; preds = %232, %169, %153, %144, %104, %94, %51, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %233

26:                                               ; preds = %23
  %27 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %28 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 192
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %39 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @kfree_skb(%struct.TYPE_4__* %40)
  %42 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %43 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %42, i32 0, i32 0
  store i32 128, i32* %43, align 8
  %44 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %45 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %51

46:                                               ; preds = %31
  %47 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @bcsp_unslip_one_byte(%struct.bcsp_struct* %47, i8 zeroext %49)
  br label %51

51:                                               ; preds = %46, %36
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %9, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  br label %23

56:                                               ; preds = %26
  %57 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %58 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %232 [
    i32 132, label %60
    i32 130, label %126
    i32 131, label %145
    i32 129, label %182
    i32 128, label %195
  ]

60:                                               ; preds = %56
  %61 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %62 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %69 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %67, %74
  %76 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %77 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %75, %82
  %84 = xor i32 %83, -1
  %85 = and i32 255, %84
  %86 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %87 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %85, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %60
  %95 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %97 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = call i32 @kfree_skb(%struct.TYPE_4__* %98)
  %100 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %101 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %100, i32 0, i32 0
  store i32 129, i32* %101, align 8
  %102 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %103 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  br label %23

104:                                              ; preds = %60
  %105 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %106 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %105, i32 0, i32 0
  store i32 130, i32* %106, align 8
  %107 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %108 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 4
  %115 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %116 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %115, i32 0, i32 2
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 4
  %123 = add nsw i32 %114, %122
  %124 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %125 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %23

126:                                              ; preds = %56
  %127 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %128 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 64
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %126
  %137 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %138 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %137, i32 0, i32 0
  store i32 131, i32* %138, align 8
  %139 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %140 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %139, i32 0, i32 1
  store i32 2, i32* %140, align 4
  br label %144

141:                                              ; preds = %126
  %142 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %143 = call i32 @bcsp_complete_rx_pkt(%struct.hci_uart* %142)
  br label %144

144:                                              ; preds = %141, %136
  br label %23

145:                                              ; preds = %56
  %146 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %147 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @bitrev16(i32 %148)
  %150 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %151 = call i32 @bscp_get_crc(%struct.bcsp_struct* %150)
  %152 = icmp ne i32 %149, %151
  br i1 %152, label %153, label %169

153:                                              ; preds = %145
  %154 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %155 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @bitrev16(i32 %156)
  %158 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %159 = call i32 @bscp_get_crc(%struct.bcsp_struct* %158)
  %160 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %157, i32 %159)
  %161 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %162 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %161, i32 0, i32 2
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = call i32 @kfree_skb(%struct.TYPE_4__* %163)
  %165 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %166 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %165, i32 0, i32 0
  store i32 129, i32* %166, align 8
  %167 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %168 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %167, i32 0, i32 1
  store i32 0, i32* %168, align 4
  br label %23

169:                                              ; preds = %145
  %170 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %171 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %170, i32 0, i32 2
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %174 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %173, i32 0, i32 2
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, 2
  %179 = call i32 @skb_trim(%struct.TYPE_4__* %172, i32 %178)
  %180 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %181 = call i32 @bcsp_complete_rx_pkt(%struct.hci_uart* %180)
  br label %23

182:                                              ; preds = %56
  %183 = load i8*, i8** %9, align 8
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  switch i32 %185, label %189 [
    i32 192, label %186
  ]

186:                                              ; preds = %182
  %187 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %188 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %187, i32 0, i32 0
  store i32 128, i32* %188, align 8
  br label %190

189:                                              ; preds = %182
  br label %190

190:                                              ; preds = %189, %186
  %191 = load i8*, i8** %9, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %9, align 8
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, -1
  store i32 %194, i32* %7, align 4
  br label %232

195:                                              ; preds = %56
  %196 = load i8*, i8** %9, align 8
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  switch i32 %198, label %204 [
    i32 192, label %199
  ]

199:                                              ; preds = %195
  %200 = load i8*, i8** %9, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %9, align 8
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %7, align 4
  br label %231

204:                                              ; preds = %195
  %205 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %206 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %205, i32 0, i32 0
  store i32 132, i32* %206, align 8
  %207 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %208 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %207, i32 0, i32 1
  store i32 4, i32* %208, align 4
  %209 = load i32, i32* @BCSP_ESCSTATE_NOESC, align 4
  %210 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %211 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %210, i32 0, i32 4
  store i32 %209, i32* %211, align 4
  %212 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %213 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @BCSP_CRC_INIT(i32 %214)
  %216 = load i32, i32* @GFP_ATOMIC, align 4
  %217 = call %struct.TYPE_4__* @bt_skb_alloc(i32 4101, i32 %216)
  %218 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %219 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %218, i32 0, i32 2
  store %struct.TYPE_4__* %217, %struct.TYPE_4__** %219, align 8
  %220 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %221 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %220, i32 0, i32 2
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = icmp ne %struct.TYPE_4__* %222, null
  br i1 %223, label %230, label %224

224:                                              ; preds = %204
  %225 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %226 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %227 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %226, i32 0, i32 0
  store i32 129, i32* %227, align 8
  %228 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %229 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %228, i32 0, i32 1
  store i32 0, i32* %229, align 4
  store i32 0, i32* %4, align 4
  br label %235

230:                                              ; preds = %204
  br label %231

231:                                              ; preds = %230, %199
  br label %232

232:                                              ; preds = %56, %231, %190
  br label %23

233:                                              ; preds = %23
  %234 = load i32, i32* %7, align 4
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %233, %224
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*, i32, i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.TYPE_4__*) #1

declare dso_local i32 @bcsp_unslip_one_byte(%struct.bcsp_struct*, i8 zeroext) #1

declare dso_local i32 @bcsp_complete_rx_pkt(%struct.hci_uart*) #1

declare dso_local i32 @bitrev16(i32) #1

declare dso_local i32 @bscp_get_crc(%struct.bcsp_struct*) #1

declare dso_local i32 @skb_trim(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @BCSP_CRC_INIT(i32) #1

declare dso_local %struct.TYPE_4__* @bt_skb_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
