; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_i_ipmi_req_lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_i_ipmi_req_lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, i32 }
%struct.ipmi_addr = type { i64 }
%struct.kernel_ipmi_msg = type { i64 }
%struct.ipmi_smi_msg = type { i32, %struct.ipmi_lan_addr*, %struct.ipmi_recv_msg* }
%struct.ipmi_lan_addr = type { i32 }
%struct.ipmi_recv_msg = type { %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.ipmi_channel = type { i64 }
%struct.TYPE_4__ = type { %struct.ipmi_channel* }

@IPMI_MAX_CHANNELS = common dso_local global i64 0, align 8
@sent_invalid_commands = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPMI_CHANNEL_MEDIUM_8023LAN = common dso_local global i64 0, align 8
@IPMI_CHANNEL_MEDIUM_ASYNC = common dso_local global i64 0, align 8
@IPMI_MAX_MSG_LENGTH = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@sent_lan_responses = common dso_local global i32 0, align 4
@sent_lan_commands = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, %struct.ipmi_addr*, i64, %struct.kernel_ipmi_msg*, %struct.ipmi_smi_msg*, %struct.ipmi_recv_msg*, i8, i32, i32)* @i_ipmi_req_lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i_ipmi_req_lan(%struct.ipmi_smi* %0, %struct.ipmi_addr* %1, i64 %2, %struct.kernel_ipmi_msg* %3, %struct.ipmi_smi_msg* %4, %struct.ipmi_recv_msg* %5, i8 zeroext %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipmi_smi*, align 8
  %12 = alloca %struct.ipmi_addr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.kernel_ipmi_msg*, align 8
  %15 = alloca %struct.ipmi_smi_msg*, align 8
  %16 = alloca %struct.ipmi_recv_msg*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ipmi_lan_addr*, align 8
  %21 = alloca i8, align 1
  %22 = alloca i64, align 8
  %23 = alloca %struct.ipmi_channel*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %11, align 8
  store %struct.ipmi_addr* %1, %struct.ipmi_addr** %12, align 8
  store i64 %2, i64* %13, align 8
  store %struct.kernel_ipmi_msg* %3, %struct.kernel_ipmi_msg** %14, align 8
  store %struct.ipmi_smi_msg* %4, %struct.ipmi_smi_msg** %15, align 8
  store %struct.ipmi_recv_msg* %5, %struct.ipmi_recv_msg** %16, align 8
  store i8 %6, i8* %17, align 1
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %24, align 4
  %26 = load %struct.ipmi_addr*, %struct.ipmi_addr** %12, align 8
  %27 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IPMI_MAX_CHANNELS, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %9
  %32 = load %struct.ipmi_smi*, %struct.ipmi_smi** %11, align 8
  %33 = load i32, i32* @sent_invalid_commands, align 4
  %34 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %32, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  br label %176

37:                                               ; preds = %9
  %38 = load %struct.ipmi_smi*, %struct.ipmi_smi** %11, align 8
  %39 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_4__* @READ_ONCE(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.ipmi_channel*, %struct.ipmi_channel** %42, align 8
  store %struct.ipmi_channel* %43, %struct.ipmi_channel** %23, align 8
  %44 = load %struct.ipmi_channel*, %struct.ipmi_channel** %23, align 8
  %45 = load %struct.ipmi_addr*, %struct.ipmi_addr** %12, align 8
  %46 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %44, i64 %47
  %49 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IPMI_CHANNEL_MEDIUM_8023LAN, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %37
  %54 = load %struct.ipmi_channel*, %struct.ipmi_channel** %23, align 8
  %55 = load %struct.ipmi_addr*, %struct.ipmi_addr** %12, align 8
  %56 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %54, i64 %57
  %59 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IPMI_CHANNEL_MEDIUM_ASYNC, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load %struct.ipmi_smi*, %struct.ipmi_smi** %11, align 8
  %65 = load i32, i32* @sent_invalid_commands, align 4
  %66 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %64, i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %176

69:                                               ; preds = %53, %37
  %70 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %14, align 8
  %71 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 12
  %74 = load i64, i64* @IPMI_MAX_MSG_LENGTH, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.ipmi_smi*, %struct.ipmi_smi** %11, align 8
  %78 = load i32, i32* @sent_invalid_commands, align 4
  %79 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %77, i32 %78)
  %80 = load i32, i32* @EMSGSIZE, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %10, align 4
  br label %176

82:                                               ; preds = %69
  %83 = load %struct.ipmi_addr*, %struct.ipmi_addr** %12, align 8
  %84 = bitcast %struct.ipmi_addr* %83 to %struct.ipmi_lan_addr*
  store %struct.ipmi_lan_addr* %84, %struct.ipmi_lan_addr** %20, align 8
  %85 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %20, align 8
  %86 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 3
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load %struct.ipmi_smi*, %struct.ipmi_smi** %11, align 8
  %91 = load i32, i32* @sent_invalid_commands, align 4
  %92 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %90, i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %10, align 4
  br label %176

95:                                               ; preds = %82
  %96 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %16, align 8
  %97 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %96, i32 0, i32 2
  %98 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %20, align 8
  %99 = call i32 @memcpy(i32* %97, %struct.ipmi_lan_addr* %98, i32 4)
  %100 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %16, align 8
  %101 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %95
  %107 = load %struct.ipmi_smi*, %struct.ipmi_smi** %11, align 8
  %108 = load i32, i32* @sent_lan_responses, align 4
  %109 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %107, i32 %108)
  %110 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %15, align 8
  %111 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %14, align 8
  %112 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %20, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* %13, align 8
  %115 = trunc i64 %114 to i8
  %116 = load i8, i8* %17, align 1
  %117 = call i32 @format_lan_msg(%struct.ipmi_smi_msg* %110, %struct.kernel_ipmi_msg* %111, %struct.ipmi_lan_addr* %112, i64 %113, i8 zeroext %115, i8 zeroext %116)
  %118 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %16, align 8
  %119 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %15, align 8
  %120 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %119, i32 0, i32 2
  store %struct.ipmi_recv_msg* %118, %struct.ipmi_recv_msg** %120, align 8
  br label %174

121:                                              ; preds = %95
  %122 = load %struct.ipmi_smi*, %struct.ipmi_smi** %11, align 8
  %123 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %122, i32 0, i32 0
  %124 = load i64, i64* %25, align 8
  %125 = call i32 @spin_lock_irqsave(i32* %123, i64 %124)
  %126 = load %struct.ipmi_smi*, %struct.ipmi_smi** %11, align 8
  %127 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %16, align 8
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @intf_next_seq(%struct.ipmi_smi* %126, %struct.ipmi_recv_msg* %127, i32 %128, i32 %129, i32 0, i8* %21, i64* %22)
  store i32 %130, i32* %24, align 4
  %131 = load i32, i32* %24, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  br label %169

134:                                              ; preds = %121
  %135 = load %struct.ipmi_smi*, %struct.ipmi_smi** %11, align 8
  %136 = load i32, i32* @sent_lan_commands, align 4
  %137 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %135, i32 %136)
  %138 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %15, align 8
  %139 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %14, align 8
  %140 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %20, align 8
  %141 = load i8, i8* %21, align 1
  %142 = load i64, i64* %22, align 8
  %143 = call i64 @STORE_SEQ_IN_MSGID(i8 zeroext %141, i64 %142)
  %144 = load i8, i8* %21, align 1
  %145 = load i8, i8* %17, align 1
  %146 = call i32 @format_lan_msg(%struct.ipmi_smi_msg* %138, %struct.kernel_ipmi_msg* %139, %struct.ipmi_lan_addr* %140, i64 %143, i8 zeroext %144, i8 zeroext %145)
  %147 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %16, align 8
  %148 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %15, align 8
  %151 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %150, i32 0, i32 1
  %152 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %151, align 8
  %153 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %15, align 8
  %154 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @memcpy(i32* %149, %struct.ipmi_lan_addr* %152, i32 %155)
  %157 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %16, align 8
  %158 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %16, align 8
  %161 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 2
  store i32* %159, i32** %162, align 8
  %163 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %15, align 8
  %164 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %16, align 8
  %167 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  store i32 %165, i32* %168, align 4
  br label %169

169:                                              ; preds = %134, %133
  %170 = load %struct.ipmi_smi*, %struct.ipmi_smi** %11, align 8
  %171 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %170, i32 0, i32 0
  %172 = load i64, i64* %25, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* %171, i64 %172)
  br label %174

174:                                              ; preds = %169, %106
  %175 = load i32, i32* %24, align 4
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %174, %89, %76, %63, %31
  %177 = load i32, i32* %10, align 4
  ret i32 %177
}

declare dso_local i32 @ipmi_inc_stat(%struct.ipmi_smi*, i32) #1

declare dso_local %struct.TYPE_4__* @READ_ONCE(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ipmi_lan_addr*, i32) #1

declare dso_local i32 @format_lan_msg(%struct.ipmi_smi_msg*, %struct.kernel_ipmi_msg*, %struct.ipmi_lan_addr*, i64, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @intf_next_seq(%struct.ipmi_smi*, %struct.ipmi_recv_msg*, i32, i32, i32, i8*, i64*) #1

declare dso_local i64 @STORE_SEQ_IN_MSGID(i8 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
