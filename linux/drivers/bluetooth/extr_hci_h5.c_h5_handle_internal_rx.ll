; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_handle_internal_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_handle_internal_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.TYPE_4__*, %struct.h5* }
%struct.TYPE_4__ = type { i32 }
%struct.h5 = type { i64, i8, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@__const.h5_handle_internal_rx.sync_req = private unnamed_addr constant [2 x i8] c"\01~", align 1
@__const.h5_handle_internal_rx.sync_rsp = private unnamed_addr constant [2 x i8] c"\02}", align 1
@__const.h5_handle_internal_rx.conf_req = private unnamed_addr constant [3 x i8] c"\03\FC\00", align 1
@__const.h5_handle_internal_rx.conf_rsp = private unnamed_addr constant [2 x i8] c"\04{", align 1
@__const.h5_handle_internal_rx.wakeup_req = private unnamed_addr constant [2 x i8] c"\05\FA", align 1
@__const.h5_handle_internal_rx.woken_req = private unnamed_addr constant [2 x i8] c"\06\F9", align 1
@__const.h5_handle_internal_rx.sleep_req = private unnamed_addr constant [2 x i8] c"\07x", align 1
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_3WIRE_LINK_PKT = common dso_local global i64 0, align 8
@H5_ACTIVE = common dso_local global i64 0, align 8
@H5_INITIALIZED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Three-wire init complete. tx_win %u\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Peer went to sleep\00", align 1
@H5_SLEEPING = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"Peer woke up\00", align 1
@H5_AWAKE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Peer requested wakeup\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Link Control: 0x%02hhx 0x%02hhx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_uart*)* @h5_handle_internal_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h5_handle_internal_rx(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.hci_uart*, align 8
  %3 = alloca %struct.h5*, align 8
  %4 = alloca [2 x i8], align 1
  %5 = alloca [2 x i8], align 1
  %6 = alloca [3 x i8], align 1
  %7 = alloca [2 x i8], align 1
  %8 = alloca [2 x i8], align 1
  %9 = alloca [2 x i8], align 1
  %10 = alloca [2 x i8], align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %2, align 8
  %13 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %14 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %13, i32 0, i32 1
  %15 = load %struct.h5*, %struct.h5** %14, align 8
  store %struct.h5* %15, %struct.h5** %3, align 8
  %16 = bitcast [2 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.h5_handle_internal_rx.sync_req, i32 0, i32 0), i64 2, i1 false)
  %17 = bitcast [2 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.h5_handle_internal_rx.sync_rsp, i32 0, i32 0), i64 2, i1 false)
  %18 = bitcast [3 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.h5_handle_internal_rx.conf_req, i32 0, i32 0), i64 3, i1 false)
  %19 = bitcast [2 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.h5_handle_internal_rx.conf_rsp, i32 0, i32 0), i64 2, i1 false)
  %20 = bitcast [2 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.h5_handle_internal_rx.wakeup_req, i32 0, i32 0), i64 2, i1 false)
  %21 = bitcast [2 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.h5_handle_internal_rx.woken_req, i32 0, i32 0), i64 2, i1 false)
  %22 = bitcast [2 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.h5_handle_internal_rx.sleep_req, i32 0, i32 0), i64 2, i1 false)
  %23 = load %struct.h5*, %struct.h5** %3, align 8
  %24 = getelementptr inbounds %struct.h5, %struct.h5* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %11, align 8
  %28 = load %struct.h5*, %struct.h5** %3, align 8
  %29 = getelementptr inbounds %struct.h5, %struct.h5* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  store i8* %33, i8** %12, align 8
  %34 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %35 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @H5_HDR_PKT_TYPE(i8* %40)
  %42 = load i64, i64* @HCI_3WIRE_LINK_PKT, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  br label %185

45:                                               ; preds = %1
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @H5_HDR_LEN(i8* %46)
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %185

50:                                               ; preds = %45
  %51 = load %struct.h5*, %struct.h5** %3, align 8
  %52 = call zeroext i8 @h5_cfg_field(%struct.h5* %51)
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  store i8 %52, i8* %53, align 1
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %56 = call i64 @memcmp(i8* %54, i8* %55, i32 2)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %50
  %59 = load %struct.h5*, %struct.h5** %3, align 8
  %60 = getelementptr inbounds %struct.h5, %struct.h5* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @H5_ACTIVE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %66 = call i32 @h5_peer_reset(%struct.hci_uart* %65)
  br label %67

67:                                               ; preds = %64, %58
  %68 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %69 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %70 = call i32 @h5_link_control(%struct.hci_uart* %68, i8* %69, i32 2)
  br label %182

71:                                               ; preds = %50
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %74 = call i64 @memcmp(i8* %72, i8* %73, i32 2)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = load %struct.h5*, %struct.h5** %3, align 8
  %78 = getelementptr inbounds %struct.h5, %struct.h5* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @H5_ACTIVE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %84 = call i32 @h5_peer_reset(%struct.hci_uart* %83)
  br label %85

85:                                               ; preds = %82, %76
  %86 = load i64, i64* @H5_INITIALIZED, align 8
  %87 = load %struct.h5*, %struct.h5** %3, align 8
  %88 = getelementptr inbounds %struct.h5, %struct.h5* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %90 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %91 = call i32 @h5_link_control(%struct.hci_uart* %89, i8* %90, i32 3)
  br label %181

92:                                               ; preds = %71
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %95 = call i64 @memcmp(i8* %93, i8* %94, i32 2)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %99 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %100 = call i32 @h5_link_control(%struct.hci_uart* %98, i8* %99, i32 2)
  %101 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %102 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %103 = call i32 @h5_link_control(%struct.hci_uart* %101, i8* %102, i32 3)
  br label %180

104:                                              ; preds = %92
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %107 = call i64 @memcmp(i8* %105, i8* %106, i32 2)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %133

109:                                              ; preds = %104
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 @H5_HDR_LEN(i8* %110)
  %112 = icmp sgt i32 %111, 2
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load i8*, i8** %12, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 7
  %119 = trunc i32 %118 to i8
  %120 = load %struct.h5*, %struct.h5** %3, align 8
  %121 = getelementptr inbounds %struct.h5, %struct.h5* %120, i32 0, i32 1
  store i8 %119, i8* %121, align 8
  br label %122

122:                                              ; preds = %113, %109
  %123 = load %struct.h5*, %struct.h5** %3, align 8
  %124 = getelementptr inbounds %struct.h5, %struct.h5* %123, i32 0, i32 1
  %125 = load i8, i8* %124, align 8
  %126 = zext i8 %125 to i32
  %127 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i64, i64* @H5_ACTIVE, align 8
  %129 = load %struct.h5*, %struct.h5** %3, align 8
  %130 = getelementptr inbounds %struct.h5, %struct.h5* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %132 = call i32 @hci_uart_init_ready(%struct.hci_uart* %131)
  br label %185

133:                                              ; preds = %104
  %134 = load i8*, i8** %12, align 8
  %135 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %136 = call i64 @memcmp(i8* %134, i8* %135, i32 2)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %140 = load i8*, i8** @H5_SLEEPING, align 8
  %141 = load %struct.h5*, %struct.h5** %3, align 8
  %142 = getelementptr inbounds %struct.h5, %struct.h5* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  br label %185

143:                                              ; preds = %133
  %144 = load i8*, i8** %12, align 8
  %145 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %146 = call i64 @memcmp(i8* %144, i8* %145, i32 2)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %150 = load i8*, i8** @H5_AWAKE, align 8
  %151 = load %struct.h5*, %struct.h5** %3, align 8
  %152 = getelementptr inbounds %struct.h5, %struct.h5* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  br label %177

153:                                              ; preds = %143
  %154 = load i8*, i8** %12, align 8
  %155 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %156 = call i64 @memcmp(i8* %154, i8* %155, i32 2)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %160 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %161 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %162 = call i32 @h5_link_control(%struct.hci_uart* %160, i8* %161, i32 2)
  %163 = load i8*, i8** @H5_AWAKE, align 8
  %164 = load %struct.h5*, %struct.h5** %3, align 8
  %165 = getelementptr inbounds %struct.h5, %struct.h5* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  br label %176

166:                                              ; preds = %153
  %167 = load i8*, i8** %12, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = load i8*, i8** %12, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %170, i32 %174)
  br label %185

176:                                              ; preds = %158
  br label %177

177:                                              ; preds = %176, %148
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179, %97
  br label %181

181:                                              ; preds = %180, %85
  br label %182

182:                                              ; preds = %181, %67
  %183 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %184 = call i32 @hci_uart_tx_wakeup(%struct.hci_uart* %183)
  br label %185

185:                                              ; preds = %182, %166, %138, %122, %49, %44
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BT_DBG(i8*, ...) #2

declare dso_local i64 @H5_HDR_PKT_TYPE(i8*) #2

declare dso_local i32 @H5_HDR_LEN(i8*) #2

declare dso_local zeroext i8 @h5_cfg_field(%struct.h5*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @h5_peer_reset(%struct.hci_uart*) #2

declare dso_local i32 @h5_link_control(%struct.hci_uart*, i8*, i32) #2

declare dso_local i32 @hci_uart_init_ready(%struct.hci_uart*) #2

declare dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
