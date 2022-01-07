; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bluecard_cs.c_bluecard_write_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bluecard_cs.c_bluecard_write_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bluecard_info = type { i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Unknown device\00", align 1
@XMIT_SENDING_READY = common dso_local global i64 0, align 8
@XMIT_SENDING = common dso_local global i64 0, align 8
@XMIT_WAKEUP = common dso_local global i64 0, align 8
@XMIT_BUFFER_NUMBER = common dso_local global i64 0, align 8
@XMIT_BUF_TWO_READY = common dso_local global i64 0, align 8
@REG_COMMAND_TX_BUF_TWO = common dso_local global i8 0, align 1
@XMIT_BUF_ONE_READY = common dso_local global i64 0, align 8
@REG_COMMAND_TX_BUF_ONE = common dso_local global i8 0, align 1
@REG_CONTROL_RTS = common dso_local global i32 0, align 4
@REG_CONTROL = common dso_local global i64 0, align 8
@REG_COMMAND = common dso_local global i64 0, align 8
@wq = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@REG_CONTROL_BAUD_RATE_460800 = common dso_local global i8 0, align 1
@REG_CONTROL_BAUD_RATE_230400 = common dso_local global i8 0, align 1
@REG_CONTROL_BAUD_RATE_115200 = common dso_local global i8 0, align 1
@REG_CONTROL_BAUD_RATE_57600 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bluecard_info*)* @bluecard_write_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bluecard_write_wakeup(%struct.bluecard_info* %0) #0 {
  %2 = alloca %struct.bluecard_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.bluecard_info* %0, %struct.bluecard_info** %2, align 8
  %10 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %11 = icmp ne %struct.bluecard_info* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @BT_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %223

14:                                               ; preds = %1
  %15 = load i64, i64* @XMIT_SENDING_READY, align 8
  %16 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %17 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i64 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %223

21:                                               ; preds = %14
  %22 = load i64, i64* @XMIT_SENDING, align 8
  %23 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %24 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %23, i32 0, i32 1
  %25 = call i64 @test_and_set_bit(i64 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i64, i64* @XMIT_WAKEUP, align 8
  %29 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %30 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %29, i32 0, i32 1
  %31 = call i32 @set_bit(i64 %28, i32* %30)
  br label %223

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %212, %32
  %34 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %35 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  %43 = load i64, i64* @XMIT_WAKEUP, align 8
  %44 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %45 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %44, i32 0, i32 1
  %46 = call i32 @clear_bit(i64 %43, i32* %45)
  %47 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %48 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %47, i32 0, i32 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = call i32 @pcmcia_dev_present(%struct.TYPE_8__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %33
  br label %223

53:                                               ; preds = %33
  %54 = load i64, i64* @XMIT_BUFFER_NUMBER, align 8
  %55 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %56 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %55, i32 0, i32 1
  %57 = call i64 @test_bit(i64 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load i64, i64* @XMIT_BUF_TWO_READY, align 8
  %61 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %62 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %61, i32 0, i32 1
  %63 = call i64 @test_bit(i64 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %218

66:                                               ; preds = %59
  store i32 16, i32* %4, align 4
  %67 = load i8, i8* @REG_COMMAND_TX_BUF_TWO, align 1
  store i8 %67, i8* %5, align 1
  %68 = load i64, i64* @XMIT_BUF_TWO_READY, align 8
  store i64 %68, i64* %6, align 8
  br label %79

69:                                               ; preds = %53
  %70 = load i64, i64* @XMIT_BUF_ONE_READY, align 8
  %71 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %72 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %71, i32 0, i32 1
  %73 = call i64 @test_bit(i64 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %218

76:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  %77 = load i8, i8* @REG_COMMAND_TX_BUF_ONE, align 1
  store i8 %77, i8* %5, align 1
  %78 = load i64, i64* @XMIT_BUF_ONE_READY, align 8
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %76, %66
  %80 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %81 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %80, i32 0, i32 3
  %82 = call %struct.sk_buff* @skb_dequeue(i32* %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %7, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  br label %218

86:                                               ; preds = %79
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %87)
  %89 = and i32 %88, 128
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load i32, i32* @REG_CONTROL_RTS, align 4
  %93 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %94 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %98 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = zext i32 %100 to i64
  %102 = load i64, i64* @REG_CONTROL, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outb(i32 %99, i64 %103)
  br label %105

105:                                              ; preds = %91, %86
  %106 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %107 = call i32 @bluecard_enable_activity_led(%struct.bluecard_info* %106)
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @bluecard_write(i32 %108, i32 %109, i32 %112, i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load i8, i8* %5, align 1
  %118 = load i32, i32* %3, align 4
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* @REG_COMMAND, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @outb_p(i8 zeroext %117, i64 %121)
  %123 = load i64, i64* %6, align 8
  %124 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %125 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %124, i32 0, i32 1
  %126 = call i32 @clear_bit(i64 %123, i32* %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %128 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %127)
  %129 = and i32 %128, 128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %182

131:                                              ; preds = %105
  %132 = load i32, i32* @wq, align 4
  %133 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %132)
  %134 = load i32, i32* @wait, align 4
  %135 = call i32 @DEFINE_WAIT(i32 %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %137 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %136)
  switch i32 %137, label %145 [
    i32 129, label %138
    i32 130, label %140
    i32 131, label %142
    i32 128, label %144
  ]

138:                                              ; preds = %131
  %139 = load i8, i8* @REG_CONTROL_BAUD_RATE_460800, align 1
  store i8 %139, i8* %9, align 1
  br label %147

140:                                              ; preds = %131
  %141 = load i8, i8* @REG_CONTROL_BAUD_RATE_230400, align 1
  store i8 %141, i8* %9, align 1
  br label %147

142:                                              ; preds = %131
  %143 = load i8, i8* @REG_CONTROL_BAUD_RATE_115200, align 1
  store i8 %143, i8* %9, align 1
  br label %147

144:                                              ; preds = %131
  br label %145

145:                                              ; preds = %131, %144
  %146 = load i8, i8* @REG_CONTROL_BAUD_RATE_57600, align 1
  store i8 %146, i8* %9, align 1
  br label %147

147:                                              ; preds = %145, %142, %140, %138
  %148 = call i32 @mdelay(i32 100)
  %149 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %150 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, -4
  store i32 %152, i32* %150, align 8
  %153 = load i8, i8* %9, align 1
  %154 = zext i8 %153 to i32
  %155 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %156 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %160 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %3, align 4
  %163 = zext i32 %162 to i64
  %164 = load i64, i64* @REG_CONTROL, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @outb(i32 %161, i64 %165)
  %167 = load i32, i32* @REG_CONTROL_RTS, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %170 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %174 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %3, align 4
  %177 = zext i32 %176 to i64
  %178 = load i64, i64* @REG_CONTROL, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @outb(i32 %175, i64 %179)
  %181 = call i32 @mdelay(i32 1000)
  br label %182

182:                                              ; preds = %147, %105
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %183, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %190 = call i32 @kfree_skb(%struct.sk_buff* %189)
  br label %199

191:                                              ; preds = %182
  %192 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @skb_pull(%struct.sk_buff* %192, i32 %193)
  %195 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %196 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %195, i32 0, i32 3
  %197 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %198 = call i32 @skb_queue_head(i32* %196, %struct.sk_buff* %197)
  br label %199

199:                                              ; preds = %191, %188
  %200 = load i32, i32* %8, align 4
  %201 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %202 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %201, i32 0, i32 2
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, %200
  store i32 %207, i32* %205, align 4
  %208 = load i64, i64* @XMIT_BUFFER_NUMBER, align 8
  %209 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %210 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %209, i32 0, i32 1
  %211 = call i32 @change_bit(i64 %208, i32* %210)
  br label %212

212:                                              ; preds = %199
  %213 = load i64, i64* @XMIT_WAKEUP, align 8
  %214 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %215 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %214, i32 0, i32 1
  %216 = call i64 @test_bit(i64 %213, i32* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %33, label %218

218:                                              ; preds = %212, %85, %75, %65
  %219 = load i64, i64* @XMIT_SENDING, align 8
  %220 = load %struct.bluecard_info*, %struct.bluecard_info** %2, align 8
  %221 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %220, i32 0, i32 1
  %222 = call i32 @clear_bit(i64 %219, i32* %221)
  br label %223

223:                                              ; preds = %218, %52, %27, %20, %12
  ret void
}

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i64 @test_and_set_bit(i64, i32*) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @pcmcia_dev_present(%struct.TYPE_8__*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @bluecard_enable_activity_led(%struct.bluecard_info*) #1

declare dso_local i32 @bluecard_write(i32, i32, i32, i32) #1

declare dso_local i32 @outb_p(i8 zeroext, i64) #1

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @change_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
