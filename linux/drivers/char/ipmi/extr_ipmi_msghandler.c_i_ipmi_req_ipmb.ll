; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_i_ipmi_req_ipmb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_i_ipmi_req_ipmb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, i64, i32 }
%struct.ipmi_addr = type { i64, i64 }
%struct.kernel_ipmi_msg = type { i64 }
%struct.ipmi_smi_msg = type { i32, %struct.ipmi_ipmb_addr*, %struct.ipmi_recv_msg* }
%struct.ipmi_ipmb_addr = type { i32 }
%struct.ipmi_recv_msg = type { %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.ipmi_channel = type { i64 }
%struct.TYPE_4__ = type { %struct.ipmi_channel* }

@IPMI_MAX_CHANNELS = common dso_local global i64 0, align 8
@sent_invalid_commands = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPMI_CHANNEL_MEDIUM_IPMB = common dso_local global i64 0, align 8
@IPMI_IPMB_BROADCAST_ADDR_TYPE = common dso_local global i64 0, align 8
@IPMI_IPMB_ADDR_TYPE = common dso_local global i64 0, align 8
@IPMI_MAX_MSG_LENGTH = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@sent_ipmb_responses = common dso_local global i32 0, align 4
@maintenance_mode_timeout_ms = common dso_local global i64 0, align 8
@default_maintenance_retry_ms = common dso_local global i32 0, align 4
@sent_ipmb_commands = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, %struct.ipmi_addr*, i64, %struct.kernel_ipmi_msg*, %struct.ipmi_smi_msg*, %struct.ipmi_recv_msg*, i8, i8, i32, i32)* @i_ipmi_req_ipmb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i_ipmi_req_ipmb(%struct.ipmi_smi* %0, %struct.ipmi_addr* %1, i64 %2, %struct.kernel_ipmi_msg* %3, %struct.ipmi_smi_msg* %4, %struct.ipmi_recv_msg* %5, i8 zeroext %6, i8 zeroext %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipmi_smi*, align 8
  %13 = alloca %struct.ipmi_addr*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.kernel_ipmi_msg*, align 8
  %16 = alloca %struct.ipmi_smi_msg*, align 8
  %17 = alloca %struct.ipmi_recv_msg*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ipmi_ipmb_addr*, align 8
  %23 = alloca i8, align 1
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.ipmi_channel*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %12, align 8
  store %struct.ipmi_addr* %1, %struct.ipmi_addr** %13, align 8
  store i64 %2, i64* %14, align 8
  store %struct.kernel_ipmi_msg* %3, %struct.kernel_ipmi_msg** %15, align 8
  store %struct.ipmi_smi_msg* %4, %struct.ipmi_smi_msg** %16, align 8
  store %struct.ipmi_recv_msg* %5, %struct.ipmi_recv_msg** %17, align 8
  store i8 %6, i8* %18, align 1
  store i8 %7, i8* %19, align 1
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %27, align 4
  %29 = load %struct.ipmi_addr*, %struct.ipmi_addr** %13, align 8
  %30 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IPMI_MAX_CHANNELS, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %10
  %35 = load %struct.ipmi_smi*, %struct.ipmi_smi** %12, align 8
  %36 = load i32, i32* @sent_invalid_commands, align 4
  %37 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %35, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %205

40:                                               ; preds = %10
  %41 = load %struct.ipmi_smi*, %struct.ipmi_smi** %12, align 8
  %42 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.TYPE_4__* @READ_ONCE(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.ipmi_channel*, %struct.ipmi_channel** %45, align 8
  store %struct.ipmi_channel* %46, %struct.ipmi_channel** %26, align 8
  %47 = load %struct.ipmi_channel*, %struct.ipmi_channel** %26, align 8
  %48 = load %struct.ipmi_addr*, %struct.ipmi_addr** %13, align 8
  %49 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %47, i64 %50
  %52 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IPMI_CHANNEL_MEDIUM_IPMB, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %40
  %57 = load %struct.ipmi_smi*, %struct.ipmi_smi** %12, align 8
  %58 = load i32, i32* @sent_invalid_commands, align 4
  %59 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %57, i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %11, align 4
  br label %205

62:                                               ; preds = %40
  %63 = load %struct.ipmi_addr*, %struct.ipmi_addr** %13, align 8
  %64 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IPMI_IPMB_BROADCAST_ADDR_TYPE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i64, i64* @IPMI_IPMB_ADDR_TYPE, align 8
  %70 = load %struct.ipmi_addr*, %struct.ipmi_addr** %13, align 8
  %71 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  store i32 1, i32* %25, align 4
  store i32 0, i32* %20, align 4
  br label %72

72:                                               ; preds = %68, %62
  %73 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %15, align 8
  %74 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 10
  %77 = load i32, i32* %25, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = load i64, i64* @IPMI_MAX_MSG_LENGTH, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %72
  %83 = load %struct.ipmi_smi*, %struct.ipmi_smi** %12, align 8
  %84 = load i32, i32* @sent_invalid_commands, align 4
  %85 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %83, i32 %84)
  %86 = load i32, i32* @EMSGSIZE, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %11, align 4
  br label %205

88:                                               ; preds = %72
  %89 = load %struct.ipmi_addr*, %struct.ipmi_addr** %13, align 8
  %90 = bitcast %struct.ipmi_addr* %89 to %struct.ipmi_ipmb_addr*
  store %struct.ipmi_ipmb_addr* %90, %struct.ipmi_ipmb_addr** %22, align 8
  %91 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %22, align 8
  %92 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 3
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.ipmi_smi*, %struct.ipmi_smi** %12, align 8
  %97 = load i32, i32* @sent_invalid_commands, align 4
  %98 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %96, i32 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %11, align 4
  br label %205

101:                                              ; preds = %88
  %102 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %17, align 8
  %103 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %102, i32 0, i32 2
  %104 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %22, align 8
  %105 = call i32 @memcpy(i32* %103, %struct.ipmi_ipmb_addr* %104, i32 4)
  %106 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %17, align 8
  %107 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %101
  %113 = load %struct.ipmi_smi*, %struct.ipmi_smi** %12, align 8
  %114 = load i32, i32* @sent_ipmb_responses, align 4
  %115 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %113, i32 %114)
  %116 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %16, align 8
  %117 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %15, align 8
  %118 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %22, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %14, align 8
  %121 = trunc i64 %120 to i8
  %122 = load i32, i32* %25, align 4
  %123 = load i8, i8* %18, align 1
  %124 = load i8, i8* %19, align 1
  %125 = call i32 @format_ipmb_msg(%struct.ipmi_smi_msg* %116, %struct.kernel_ipmi_msg* %117, %struct.ipmi_ipmb_addr* %118, i64 %119, i8 zeroext %121, i32 %122, i8 zeroext %123, i8 zeroext %124)
  %126 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %17, align 8
  %127 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %16, align 8
  %128 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %127, i32 0, i32 2
  store %struct.ipmi_recv_msg* %126, %struct.ipmi_recv_msg** %128, align 8
  br label %203

129:                                              ; preds = %101
  %130 = load %struct.ipmi_smi*, %struct.ipmi_smi** %12, align 8
  %131 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %130, i32 0, i32 0
  %132 = load i64, i64* %28, align 8
  %133 = call i32 @spin_lock_irqsave(i32* %131, i64 %132)
  %134 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %15, align 8
  %135 = call i64 @is_maintenance_mode_cmd(%struct.kernel_ipmi_msg* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %129
  %138 = load i64, i64* @maintenance_mode_timeout_ms, align 8
  %139 = load %struct.ipmi_smi*, %struct.ipmi_smi** %12, align 8
  %140 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %137, %129
  %142 = load %struct.ipmi_smi*, %struct.ipmi_smi** %12, align 8
  %143 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load i32, i32* %21, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* @default_maintenance_retry_ms, align 4
  store i32 %150, i32* %21, align 4
  br label %151

151:                                              ; preds = %149, %146, %141
  %152 = load %struct.ipmi_smi*, %struct.ipmi_smi** %12, align 8
  %153 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %17, align 8
  %154 = load i32, i32* %21, align 4
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* %25, align 4
  %157 = call i32 @intf_next_seq(%struct.ipmi_smi* %152, %struct.ipmi_recv_msg* %153, i32 %154, i32 %155, i32 %156, i8* %23, i64* %24)
  store i32 %157, i32* %27, align 4
  %158 = load i32, i32* %27, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  br label %198

161:                                              ; preds = %151
  %162 = load %struct.ipmi_smi*, %struct.ipmi_smi** %12, align 8
  %163 = load i32, i32* @sent_ipmb_commands, align 4
  %164 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %162, i32 %163)
  %165 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %16, align 8
  %166 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %15, align 8
  %167 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %22, align 8
  %168 = load i8, i8* %23, align 1
  %169 = load i64, i64* %24, align 8
  %170 = call i64 @STORE_SEQ_IN_MSGID(i8 zeroext %168, i64 %169)
  %171 = load i8, i8* %23, align 1
  %172 = load i32, i32* %25, align 4
  %173 = load i8, i8* %18, align 1
  %174 = load i8, i8* %19, align 1
  %175 = call i32 @format_ipmb_msg(%struct.ipmi_smi_msg* %165, %struct.kernel_ipmi_msg* %166, %struct.ipmi_ipmb_addr* %167, i64 %170, i8 zeroext %171, i32 %172, i8 zeroext %173, i8 zeroext %174)
  %176 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %17, align 8
  %177 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %16, align 8
  %180 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %179, i32 0, i32 1
  %181 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %180, align 8
  %182 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %16, align 8
  %183 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @memcpy(i32* %178, %struct.ipmi_ipmb_addr* %181, i32 %184)
  %186 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %17, align 8
  %187 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %17, align 8
  %190 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  store i32* %188, i32** %191, align 8
  %192 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %16, align 8
  %193 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %17, align 8
  %196 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  store i32 %194, i32* %197, align 4
  br label %198

198:                                              ; preds = %161, %160
  %199 = load %struct.ipmi_smi*, %struct.ipmi_smi** %12, align 8
  %200 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %199, i32 0, i32 0
  %201 = load i64, i64* %28, align 8
  %202 = call i32 @spin_unlock_irqrestore(i32* %200, i64 %201)
  br label %203

203:                                              ; preds = %198, %112
  %204 = load i32, i32* %27, align 4
  store i32 %204, i32* %11, align 4
  br label %205

205:                                              ; preds = %203, %95, %82, %56, %34
  %206 = load i32, i32* %11, align 4
  ret i32 %206
}

declare dso_local i32 @ipmi_inc_stat(%struct.ipmi_smi*, i32) #1

declare dso_local %struct.TYPE_4__* @READ_ONCE(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ipmi_ipmb_addr*, i32) #1

declare dso_local i32 @format_ipmb_msg(%struct.ipmi_smi_msg*, %struct.kernel_ipmi_msg*, %struct.ipmi_ipmb_addr*, i64, i8 zeroext, i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @is_maintenance_mode_cmd(%struct.kernel_ipmi_msg*) #1

declare dso_local i32 @intf_next_seq(%struct.ipmi_smi*, %struct.ipmi_recv_msg*, i32, i32, i32, i8*, i64*) #1

declare dso_local i64 @STORE_SEQ_IN_MSGID(i8 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
