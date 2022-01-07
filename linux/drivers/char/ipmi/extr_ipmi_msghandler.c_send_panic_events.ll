; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_send_panic_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_send_panic_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, %struct.TYPE_2__*, i64, i32, i32*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.kernel_ipmi_msg = type { i32, i32, i8*, i32 }
%struct.ipmi_system_interface_addr = type { i64, i8*, i8* }
%struct.ipmi_addr = type { i32 }
%struct.ipmi_ipmb_addr = type { i32, i32, i64, i32 }

@ipmi_send_panic_event = common dso_local global i64 0, align 8
@IPMI_SEND_PANIC_EVENT_NONE = common dso_local global i64 0, align 8
@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i8* null, align 8
@IPMI_BMC_CHANNEL = common dso_local global i8* null, align 8
@IPMI_SEND_PANIC_EVENT_STRING = common dso_local global i64 0, align 8
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_GET_DEVICE_ID_CMD = common dso_local global i32 0, align 4
@device_id_fetcher = common dso_local global i32* null, align 8
@IPMI_NETFN_SENSOR_EVENT_REQUEST = common dso_local global i32 0, align 4
@IPMI_GET_EVENT_RECEIVER_CMD = common dso_local global i32 0, align 4
@event_receiver_fetcher = common dso_local global i32* null, align 8
@IPMI_IPMB_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_NETFN_STORAGE_REQUEST = common dso_local global i32 0, align 4
@IPMI_ADD_SEL_ENTRY_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_smi*, i8*)* @send_panic_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_panic_events(%struct.ipmi_smi* %0, i8* %1) #0 {
  %3 = alloca %struct.ipmi_smi*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_ipmi_msg, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca %struct.ipmi_system_interface_addr*, align 8
  %8 = alloca %struct.ipmi_addr, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipmi_ipmb_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i64, i64* @ipmi_send_panic_event, align 8
  %15 = load i64, i64* @IPMI_SEND_PANIC_EVENT_NONE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %200

18:                                               ; preds = %2
  %19 = bitcast %struct.ipmi_addr* %8 to %struct.ipmi_system_interface_addr*
  store %struct.ipmi_system_interface_addr* %19, %struct.ipmi_system_interface_addr** %7, align 8
  %20 = load i8*, i8** @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 8
  %21 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %7, align 8
  %22 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @IPMI_BMC_CHANNEL, align 8
  %24 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %7, align 8
  %25 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %7, align 8
  %27 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 0
  store i32 4, i32* %28, align 8
  %29 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 1
  store i32 2, i32* %29, align 4
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %31 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 3
  store i32 8, i32* %32, align 8
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  store i8 65, i8* %33, align 16
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  store i8 3, i8* %34, align 1
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  store i8 32, i8* %35, align 2
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 4
  store i8 111, i8* %36, align 4
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 5
  store i8 -95, i8* %37, align 1
  %38 = load i8*, i8** %4, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %18
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 3
  store i8 %43, i8* %44, align 1
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 6
  store i8 %47, i8* %48, align 2
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8, i8* %50, align 1
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 7
  store i8 %51, i8* %52, align 1
  br label %53

53:                                               ; preds = %40, %18
  %54 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %55 = call i32 @ipmi_panic_request_and_wait(%struct.ipmi_smi* %54, %struct.ipmi_addr* %8, %struct.kernel_ipmi_msg* %5)
  %56 = load i64, i64* @ipmi_send_panic_event, align 8
  %57 = load i64, i64* @IPMI_SEND_PANIC_EVENT_STRING, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i8*, i8** %4, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59, %53
  br label %200

63:                                               ; preds = %59
  %64 = call i32 (...) @smp_rmb()
  %65 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %66 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %68 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %70 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %72 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = load i32, i32* @IPMI_GET_DEVICE_ID_CMD, align 4
  %74 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 2
  store i8* null, i8** %75, align 8
  %76 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 3
  store i32 0, i32* %76, align 8
  %77 = load i32*, i32** @device_id_fetcher, align 8
  %78 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %79 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %78, i32 0, i32 4
  store i32* %77, i32** %79, align 8
  %80 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %81 = call i32 @ipmi_panic_request_and_wait(%struct.ipmi_smi* %80, %struct.ipmi_addr* %8, %struct.kernel_ipmi_msg* %5)
  %82 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %83 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %63
  %87 = load i32, i32* @IPMI_NETFN_SENSOR_EVENT_REQUEST, align 4
  %88 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 0
  store i32 %87, i32* %88, align 8
  %89 = load i32, i32* @IPMI_GET_EVENT_RECEIVER_CMD, align 4
  %90 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 2
  store i8* null, i8** %91, align 8
  %92 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 3
  store i32 0, i32* %92, align 8
  %93 = load i32*, i32** @event_receiver_fetcher, align 8
  %94 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %95 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %94, i32 0, i32 4
  store i32* %93, i32** %95, align 8
  %96 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %97 = call i32 @ipmi_panic_request_and_wait(%struct.ipmi_smi* %96, %struct.ipmi_addr* %8, %struct.kernel_ipmi_msg* %5)
  br label %98

98:                                               ; preds = %86, %63
  %99 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %100 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %99, i32 0, i32 4
  store i32* null, i32** %100, align 8
  %101 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %102 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %139

106:                                              ; preds = %98
  %107 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %108 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %139

111:                                              ; preds = %106
  %112 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %113 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %116 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %114, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %111
  %123 = bitcast %struct.ipmi_addr* %8 to %struct.ipmi_ipmb_addr*
  store %struct.ipmi_ipmb_addr* %123, %struct.ipmi_ipmb_addr** %10, align 8
  %124 = load i32, i32* @IPMI_IPMB_ADDR_TYPE, align 4
  %125 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %10, align 8
  %126 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  %127 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %10, align 8
  %128 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  %129 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %130 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %10, align 8
  %133 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %135 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %10, align 8
  %138 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %156

139:                                              ; preds = %111, %106, %98
  %140 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %141 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = bitcast %struct.ipmi_addr* %8 to %struct.ipmi_system_interface_addr*
  store %struct.ipmi_system_interface_addr* %145, %struct.ipmi_system_interface_addr** %7, align 8
  %146 = load i8*, i8** @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 8
  %147 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %7, align 8
  %148 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  %149 = load i8*, i8** @IPMI_BMC_CHANNEL, align 8
  %150 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %7, align 8
  %151 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %7, align 8
  %153 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %152, i32 0, i32 0
  store i64 0, i64* %153, align 8
  br label %155

154:                                              ; preds = %139
  br label %200

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %155, %122
  %157 = load i32, i32* @IPMI_NETFN_STORAGE_REQUEST, align 4
  %158 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 0
  store i32 %157, i32* %158, align 8
  %159 = load i32, i32* @IPMI_ADD_SEL_ENTRY_CMD, align 4
  %160 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 1
  store i32 %159, i32* %160, align 4
  %161 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %162 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 2
  store i8* %161, i8** %162, align 8
  %163 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 3
  store i32 16, i32* %163, align 8
  store i32 0, i32* %11, align 4
  br label %164

164:                                              ; preds = %174, %156
  %165 = load i8*, i8** %9, align 8
  %166 = load i8, i8* %165, align 1
  %167 = icmp ne i8 %166, 0
  br i1 %167, label %168, label %200

168:                                              ; preds = %164
  %169 = load i8*, i8** %9, align 8
  %170 = call i32 @strlen(i8* %169)
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp sgt i32 %171, 11
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  store i32 11, i32* %12, align 4
  br label %174

174:                                              ; preds = %173, %168
  %175 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %175, align 16
  %176 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %176, align 1
  %177 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  store i8 -16, i8* %177, align 2
  %178 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %179 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %178, i32 0, i32 1
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = trunc i32 %183 to i8
  %185 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 3
  store i8 %184, i8* %185, align 1
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  %188 = trunc i32 %186 to i8
  %189 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 4
  store i8 %188, i8* %189, align 4
  %190 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %191 = getelementptr inbounds i8, i8* %190, i64 5
  %192 = load i8*, i8** %9, align 8
  %193 = call i32 @strncpy(i8* %191, i8* %192, i32 11)
  %194 = load i32, i32* %12, align 4
  %195 = load i8*, i8** %9, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8* %197, i8** %9, align 8
  %198 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %199 = call i32 @ipmi_panic_request_and_wait(%struct.ipmi_smi* %198, %struct.ipmi_addr* %8, %struct.kernel_ipmi_msg* %5)
  br label %164

200:                                              ; preds = %17, %62, %154, %164
  ret void
}

declare dso_local i32 @ipmi_panic_request_and_wait(%struct.ipmi_smi*, %struct.ipmi_addr*, %struct.kernel_ipmi_msg*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
