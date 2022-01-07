; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_channel_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_channel_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.ipmi_channel* }
%struct.ipmi_channel = type { i32, i32 }
%struct.ipmi_recv_msg = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64, i32*, i32 }
%struct.TYPE_4__ = type { i64 }

@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i64 0, align 8
@IPMI_NETFN_APP_RESPONSE = common dso_local global i64 0, align 8
@IPMI_GET_CHANNEL_INFO_CMD = common dso_local global i64 0, align 8
@IPMI_INVALID_COMMAND_ERR = common dso_local global i32 0, align 4
@IPMI_CHANNEL_MEDIUM_IPMB = common dso_local global i32 0, align 4
@IPMI_CHANNEL_PROTOCOL_IPMB = common dso_local global i32 0, align 4
@IPMI_MAX_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Error sending channel information for channel %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_smi*, %struct.ipmi_recv_msg*)* @channel_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_handler(%struct.ipmi_smi* %0, %struct.ipmi_recv_msg* %1) #0 {
  %3 = alloca %struct.ipmi_smi*, align 8
  %4 = alloca %struct.ipmi_recv_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipmi_channel*, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %3, align 8
  store %struct.ipmi_recv_msg* %1, %struct.ipmi_recv_msg** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %10 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %13 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %195

18:                                               ; preds = %2
  %19 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %20 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IPMI_NETFN_APP_RESPONSE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %195

25:                                               ; preds = %18
  %26 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %27 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IPMI_GET_CHANNEL_INFO_CMD, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %195

32:                                               ; preds = %25
  %33 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %34 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %32
  %41 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %42 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IPMI_INVALID_COMMAND_ERR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %40
  %50 = load i32, i32* @IPMI_CHANNEL_MEDIUM_IPMB, align 4
  %51 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %52 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %51, i32 0, i32 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.ipmi_channel*, %struct.ipmi_channel** %57, align 8
  %59 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %58, i64 0
  %60 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %59, i32 0, i32 0
  store i32 %50, i32* %60, align 4
  %61 = load i32, i32* @IPMI_CHANNEL_PROTOCOL_IPMB, align 4
  %62 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %63 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %62, i32 0, i32 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.ipmi_channel*, %struct.ipmi_channel** %68, align 8
  %70 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %69, i64 0
  %71 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %70, i32 0, i32 1
  store i32 %61, i32* %71, align 4
  %72 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %73 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %72, i32 0, i32 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %79 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %78, i32 0, i32 5
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %79, align 8
  %80 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %81 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %83 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %82, i32 0, i32 3
  %84 = call i32 @wake_up(i32* %83)
  br label %196

85:                                               ; preds = %40
  br label %129

86:                                               ; preds = %32
  %87 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %88 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %90, 4
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %129

93:                                               ; preds = %86
  %94 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %95 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %6, align 4
  %97 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %98 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %97, i32 0, i32 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.ipmi_channel*, %struct.ipmi_channel** %103, align 8
  store %struct.ipmi_channel* %104, %struct.ipmi_channel** %8, align 8
  %105 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %106 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 127
  %112 = load %struct.ipmi_channel*, %struct.ipmi_channel** %8, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %112, i64 %114
  %116 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %115, i32 0, i32 0
  store i32 %111, i32* %116, align 4
  %117 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %118 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 31
  %124 = load %struct.ipmi_channel*, %struct.ipmi_channel** %8, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %124, i64 %126
  %128 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %127, i32 0, i32 1
  store i32 %123, i32* %128, align 4
  br label %129

129:                                              ; preds = %93, %92, %85
  %130 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %131 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  %134 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %135 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @IPMI_MAX_CHANNELS, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %129
  %140 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %141 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %140, i32 0, i32 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %147 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %146, i32 0, i32 5
  store %struct.TYPE_6__* %145, %struct.TYPE_6__** %147, align 8
  %148 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %149 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %148, i32 0, i32 1
  store i32 1, i32* %149, align 4
  %150 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %151 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %150, i32 0, i32 3
  %152 = call i32 @wake_up(i32* %151)
  br label %169

153:                                              ; preds = %129
  %154 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %155 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %154, i32 0, i32 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 %158
  %160 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %161 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %160, i32 0, i32 5
  store %struct.TYPE_6__* %159, %struct.TYPE_6__** %161, align 8
  %162 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %163 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %162, i32 0, i32 1
  store i32 1, i32* %163, align 4
  %164 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %165 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %166 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @send_channel_info_cmd(%struct.ipmi_smi* %164, i32 %167)
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %153, %139
  %170 = load i32, i32* %5, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %194

172:                                              ; preds = %169
  %173 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %174 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %177 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @dev_warn(i32 %175, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %178, i32 %179)
  %181 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %182 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %181, i32 0, i32 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i64 %185
  %187 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %188 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %187, i32 0, i32 5
  store %struct.TYPE_6__* %186, %struct.TYPE_6__** %188, align 8
  %189 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %190 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %189, i32 0, i32 1
  store i32 1, i32* %190, align 4
  %191 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %192 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %191, i32 0, i32 3
  %193 = call i32 @wake_up(i32* %192)
  br label %194

194:                                              ; preds = %172, %169
  br label %195

195:                                              ; preds = %194, %25, %18, %2
  br label %196

196:                                              ; preds = %195, %49
  ret void
}

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @send_channel_info_cmd(%struct.ipmi_smi*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
