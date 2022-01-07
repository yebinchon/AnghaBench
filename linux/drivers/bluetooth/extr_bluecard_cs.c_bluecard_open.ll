; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bluecard_cs.c_bluecard_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bluecard_cs.c_bluecard_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bluecard_info = type { i32, %struct.hci_dev*, i32, i32, i32, %struct.TYPE_4__*, i32*, i64, i32, i32, i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@bluecard_activity_led_timeout = common dso_local global i32 0, align 4
@RECV_WAIT_PACKET_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't allocate HCI device\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HCI_PCCARD = common dso_local global i32 0, align 4
@bluecard_hci_open = common dso_local global i32 0, align 4
@bluecard_hci_close = common dso_local global i32 0, align 4
@bluecard_hci_flush = common dso_local global i32 0, align 4
@bluecard_hci_send_frame = common dso_local global i32 0, align 4
@CARD_HAS_PCCARD_ID = common dso_local global i32 0, align 4
@CARD_HAS_POWER_LED = common dso_local global i32 0, align 4
@CARD_HAS_ACTIVITY_LED = common dso_local global i32 0, align 4
@REG_CONTROL_BT_RESET = common dso_local global i32 0, align 4
@REG_CONTROL_CARD_RESET = common dso_local global i32 0, align 4
@REG_CONTROL = common dso_local global i32 0, align 4
@REG_CONTROL_BT_ON = common dso_local global i32 0, align 4
@REG_CONTROL_BT_RES_PU = common dso_local global i32 0, align 4
@REG_INTERRUPT = common dso_local global i32 0, align 4
@REG_CONTROL_INTERRUPT = common dso_local global i32 0, align 4
@REG_CONTROL_RTS = common dso_local global i32 0, align 4
@XMIT_BUF_ONE_READY = common dso_local global i32 0, align 4
@XMIT_BUF_TWO_READY = common dso_local global i32 0, align 4
@XMIT_SENDING_READY = common dso_local global i32 0, align 4
@REG_COMMAND_RX_BUF_ONE = common dso_local global i32 0, align 4
@REG_COMMAND = common dso_local global i32 0, align 4
@REG_COMMAND_RX_BUF_TWO = common dso_local global i32 0, align 4
@CARD_READY = common dso_local global i32 0, align 4
@RTS_LEVEL_SHIFT_BITS = common dso_local global i32 0, align 4
@REG_RX_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't register HCI device\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bluecard_info*)* @bluecard_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluecard_open(%struct.bluecard_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bluecard_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i8, align 1
  store %struct.bluecard_info* %0, %struct.bluecard_info** %3, align 8
  %7 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %8 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %7, i32 0, i32 5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %11, i64 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %17 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %16, i32 0, i32 10
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %20 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %19, i32 0, i32 9
  %21 = load i32, i32* @bluecard_activity_led_timeout, align 4
  %22 = call i32 @timer_setup(i32* %20, i32 %21, i32 0)
  %23 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %24 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %23, i32 0, i32 2
  %25 = call i32 @skb_queue_head_init(i32* %24)
  %26 = load i32, i32* @RECV_WAIT_PACKET_TYPE, align 4
  %27 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %28 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 8
  %29 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %30 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %29, i32 0, i32 7
  store i64 0, i64* %30, align 8
  %31 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %32 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %33, %struct.hci_dev** %5, align 8
  %34 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %35 = icmp ne %struct.hci_dev* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %1
  %37 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %239

40:                                               ; preds = %1
  %41 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %42 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %43 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %42, i32 0, i32 1
  store %struct.hci_dev* %41, %struct.hci_dev** %43, align 8
  %44 = load i32, i32* @HCI_PCCARD, align 4
  %45 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %46 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %48 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %49 = call i32 @hci_set_drvdata(%struct.hci_dev* %47, %struct.bluecard_info* %48)
  %50 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %51 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %52 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %51, i32 0, i32 5
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %50, i32* %54)
  %56 = load i32, i32* @bluecard_hci_open, align 4
  %57 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %58 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @bluecard_hci_close, align 4
  %60 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @bluecard_hci_flush, align 4
  %63 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %64 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @bluecard_hci_send_frame, align 4
  %66 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %67 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 48
  %70 = call zeroext i8 @inb(i32 %69)
  store i8 %70, i8* %6, align 1
  %71 = load i8, i8* %6, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 15
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %80

75:                                               ; preds = %40
  %76 = load i32, i32* @CARD_HAS_PCCARD_ID, align 4
  %77 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %78 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %77, i32 0, i32 3
  %79 = call i32 @set_bit(i32 %76, i32* %78)
  br label %80

80:                                               ; preds = %75, %40
  %81 = load i8, i8* %6, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 16
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32, i32* @CARD_HAS_POWER_LED, align 4
  %87 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %88 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %87, i32 0, i32 3
  %89 = call i32 @set_bit(i32 %86, i32* %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load i8, i8* %6, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32, i32* @CARD_HAS_ACTIVITY_LED, align 4
  %97 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %98 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %97, i32 0, i32 3
  %99 = call i32 @set_bit(i32 %96, i32* %98)
  br label %100

100:                                              ; preds = %95, %90
  %101 = load i32, i32* @REG_CONTROL_BT_RESET, align 4
  %102 = load i32, i32* @REG_CONTROL_CARD_RESET, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %105 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %107 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @REG_CONTROL, align 4
  %111 = add i32 %109, %110
  %112 = call i32 @outb(i32 %108, i32 %111)
  %113 = load i32, i32* %4, align 4
  %114 = add i32 %113, 48
  %115 = call i32 @outb(i32 128, i32 %114)
  %116 = call i32 @msleep(i32 10)
  %117 = load i32, i32* %4, align 4
  %118 = add i32 %117, 48
  %119 = call i32 @outb(i32 0, i32 %118)
  %120 = load i32, i32* @REG_CONTROL_BT_ON, align 4
  %121 = load i32, i32* @REG_CONTROL_BT_RES_PU, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %124 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %126 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @REG_CONTROL, align 4
  %130 = add i32 %128, %129
  %131 = call i32 @outb(i32 %127, i32 %130)
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @REG_INTERRUPT, align 4
  %134 = add i32 %132, %133
  %135 = call i32 @outb(i32 255, i32 %134)
  %136 = load i32, i32* @REG_CONTROL_INTERRUPT, align 4
  %137 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %138 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %142 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @REG_CONTROL, align 4
  %146 = add i32 %144, %145
  %147 = call i32 @outb(i32 %143, i32 %146)
  %148 = load i8, i8* %6, align 1
  %149 = zext i8 %148 to i32
  %150 = and i32 %149, 15
  %151 = icmp eq i32 %150, 3
  br i1 %151, label %152, label %201

152:                                              ; preds = %100
  %153 = load i32, i32* @REG_CONTROL_RTS, align 4
  %154 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %155 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %159 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @REG_CONTROL, align 4
  %163 = add i32 %161, %162
  %164 = call i32 @outb(i32 %160, i32 %163)
  %165 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %166 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, 3
  store i32 %168, i32* %166, align 8
  %169 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %170 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* @REG_CONTROL, align 4
  %174 = add i32 %172, %173
  %175 = call i32 @outb(i32 %171, i32 %174)
  %176 = load i32, i32* @REG_CONTROL_RTS, align 4
  %177 = xor i32 %176, -1
  %178 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %179 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = and i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %183 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @REG_CONTROL, align 4
  %187 = add i32 %185, %186
  %188 = call i32 @outb(i32 %184, i32 %187)
  %189 = load i32, i32* @XMIT_BUF_ONE_READY, align 4
  %190 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %191 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %190, i32 0, i32 4
  %192 = call i32 @set_bit(i32 %189, i32* %191)
  %193 = load i32, i32* @XMIT_BUF_TWO_READY, align 4
  %194 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %195 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %194, i32 0, i32 4
  %196 = call i32 @set_bit(i32 %193, i32* %195)
  %197 = load i32, i32* @XMIT_SENDING_READY, align 4
  %198 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %199 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %198, i32 0, i32 4
  %200 = call i32 @set_bit(i32 %197, i32* %199)
  br label %201

201:                                              ; preds = %152, %100
  %202 = load i32, i32* @REG_COMMAND_RX_BUF_ONE, align 4
  %203 = load i32, i32* %4, align 4
  %204 = load i32, i32* @REG_COMMAND, align 4
  %205 = add i32 %203, %204
  %206 = call i32 @outb(i32 %202, i32 %205)
  %207 = load i32, i32* @REG_COMMAND_RX_BUF_TWO, align 4
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* @REG_COMMAND, align 4
  %210 = add i32 %208, %209
  %211 = call i32 @outb(i32 %207, i32 %210)
  %212 = load i32, i32* @CARD_READY, align 4
  %213 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %214 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %213, i32 0, i32 3
  %215 = call i32 @set_bit(i32 %212, i32* %214)
  %216 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %217 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %216, i32 0, i32 2
  %218 = call i32 @skb_queue_purge(i32* %217)
  %219 = load i32, i32* @RTS_LEVEL_SHIFT_BITS, align 4
  %220 = shl i32 15, %219
  %221 = or i32 %220, 1
  %222 = load i32, i32* %4, align 4
  %223 = load i32, i32* @REG_RX_CONTROL, align 4
  %224 = add i32 %222, %223
  %225 = call i32 @outb(i32 %221, i32 %224)
  %226 = call i32 @msleep(i32 1250)
  %227 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %228 = call i64 @hci_register_dev(%struct.hci_dev* %227)
  %229 = icmp slt i64 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %201
  %231 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %232 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %233 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %232, i32 0, i32 1
  store %struct.hci_dev* null, %struct.hci_dev** %233, align 8
  %234 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %235 = call i32 @hci_free_dev(%struct.hci_dev* %234)
  %236 = load i32, i32* @ENODEV, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %2, align 4
  br label %239

238:                                              ; preds = %201
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %238, %230, %36
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @hci_set_drvdata(%struct.hci_dev*, %struct.bluecard_info*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i64 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
