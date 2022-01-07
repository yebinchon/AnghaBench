; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_one_recv_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_one_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, i32, i32, i64 }
%struct.ipmi_smi_msg = type { i32*, i32, i32, i32*, %struct.ipmi_recv_msg*, i32 }
%struct.ipmi_recv_msg = type { i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.ipmi_channel = type { i64 }
%struct.TYPE_4__ = type { %struct.ipmi_channel* }

@.str = private unnamed_addr constant [6 x i8] c"Recv:\00", align 1
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_SEND_MSG_CMD = common dso_local global i32 0, align 4
@IPMI_NODE_BUSY_ERR = common dso_local global i32 0, align 4
@IPMI_LOST_ARBITRATION_ERR = common dso_local global i32 0, align 4
@IPMI_BUS_ERR = common dso_local global i32 0, align 4
@IPMI_NAK_ON_WRITE_ERR = common dso_local global i32 0, align 4
@sent_lan_command_errs = common dso_local global i32 0, align 4
@sent_ipmb_command_errs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"BMC returned too small a message for netfn %x cmd %x, got %d bytes\0A\00", align 1
@IPMI_ERR_UNSPECIFIED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [80 x i8] c"BMC returned incorrect response, expected netfn %x cmd %x, got netfn %x cmd %x\0A\00", align 1
@IPMI_MAX_CHANNELS = common dso_local global i32 0, align 4
@IPMI_RESPONSE_RESPONSE_TYPE = common dso_local global i32 0, align 4
@IPMI_GET_MSG_CMD = common dso_local global i32 0, align 4
@IPMI_CHANNEL_MEDIUM_OEM_MIN = common dso_local global i32 0, align 4
@IPMI_CHANNEL_MEDIUM_OEM_MAX = common dso_local global i32 0, align 4
@IPMI_READ_EVENT_MSG_BUFFER_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, %struct.ipmi_smi_msg*)* @handle_one_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_one_recv_msg(%struct.ipmi_smi* %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca %struct.ipmi_smi*, align 8
  %4 = alloca %struct.ipmi_smi_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipmi_channel*, align 8
  %9 = alloca %struct.ipmi_recv_msg*, align 8
  %10 = alloca %struct.ipmi_channel*, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %3, align 8
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %4, align 8
  %11 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %12 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %15 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ipmi_debug_msg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %13, i32 %16)
  %18 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %19 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 2
  br i1 %21, label %22, label %149

22:                                               ; preds = %2
  %23 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %24 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %29 = shl i32 %28, 2
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %149

31:                                               ; preds = %22
  %32 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %33 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IPMI_SEND_MSG_CMD, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %149

39:                                               ; preds = %31
  %40 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %41 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %40, i32 0, i32 4
  %42 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %41, align 8
  %43 = icmp eq %struct.ipmi_recv_msg* %42, null
  br i1 %43, label %44, label %149

44:                                               ; preds = %39
  %45 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %46 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %148

50:                                               ; preds = %44
  %51 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %52 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %53, 3
  br i1 %54, label %55, label %141

55:                                               ; preds = %50
  %56 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %57 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %141

62:                                               ; preds = %55
  %63 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %64 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IPMI_NODE_BUSY_ERR, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %141

70:                                               ; preds = %62
  %71 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %72 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IPMI_LOST_ARBITRATION_ERR, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %141

78:                                               ; preds = %70
  %79 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %80 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IPMI_BUS_ERR, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %141

86:                                               ; preds = %78
  %87 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %88 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IPMI_NAK_ON_WRITE_ERR, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %141

94:                                               ; preds = %86
  %95 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %96 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 15
  store i32 %100, i32* %7, align 4
  %101 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %102 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call %struct.TYPE_4__* @READ_ONCE(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.ipmi_channel*, %struct.ipmi_channel** %105, align 8
  store %struct.ipmi_channel* %106, %struct.ipmi_channel** %8, align 8
  %107 = load %struct.ipmi_channel*, %struct.ipmi_channel** %8, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %107, i64 %109
  %111 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 130
  br i1 %113, label %122, label %114

114:                                              ; preds = %94
  %115 = load %struct.ipmi_channel*, %struct.ipmi_channel** %8, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %115, i64 %117
  %119 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 129
  br i1 %121, label %122, label %126

122:                                              ; preds = %114, %94
  %123 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %124 = load i32, i32* @sent_lan_command_errs, align 4
  %125 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %123, i32 %124)
  br label %130

126:                                              ; preds = %114
  %127 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %128 = load i32, i32* @sent_ipmb_command_errs, align 4
  %129 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %122
  %131 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %132 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %133 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %136 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @intf_err_seq(%struct.ipmi_smi* %131, i32 %134, i32 %139)
  br label %147

141:                                              ; preds = %86, %78, %70, %62, %55, %50
  %142 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %143 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %144 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @intf_start_seq_timer(%struct.ipmi_smi* %142, i32 %145)
  br label %147

147:                                              ; preds = %141, %130
  br label %148

148:                                              ; preds = %147, %49
  store i32 0, i32* %5, align 4
  br label %495

149:                                              ; preds = %39, %31, %22, %2
  %150 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %151 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %152, 2
  br i1 %153, label %154, label %201

154:                                              ; preds = %149
  %155 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %156 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %159 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = ashr i32 %162, 2
  %164 = or i32 %163, 1
  %165 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %166 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %171 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_warn(i32 %157, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %164, i32 %169, i32 %172)
  %174 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %175 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, 4
  %180 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %181 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  store i32 %179, i32* %183, align 4
  %184 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %185 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %190 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  store i32 %188, i32* %192, align 4
  %193 = load i8*, i8** @IPMI_ERR_UNSPECIFIED, align 8
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %196 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  store i32 %194, i32* %198, align 4
  %199 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %200 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %199, i32 0, i32 1
  store i32 3, i32* %200, align 8
  br label %284

201:                                              ; preds = %149
  %202 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %203 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = ashr i32 %206, 2
  %208 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %209 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = ashr i32 %212, 2
  %214 = or i32 %213, 1
  %215 = icmp ne i32 %207, %214
  br i1 %215, label %228, label %216

216:                                              ; preds = %201
  %217 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %218 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %223 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %222, i32 0, i32 3
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %221, %226
  br i1 %227, label %228, label %283

228:                                              ; preds = %216, %201
  %229 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %230 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %233 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = ashr i32 %236, 2
  %238 = or i32 %237, 1
  %239 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %240 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %245 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = ashr i32 %248, 2
  %250 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %251 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_warn(i32 %231, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %238, i32 %243, i32 %249, i32 %254)
  %256 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %257 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %256, i32 0, i32 3
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, 4
  %262 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %263 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  store i32 %261, i32* %265, align 4
  %266 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %267 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %266, i32 0, i32 3
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %272 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  store i32 %270, i32* %274, align 4
  %275 = load i8*, i8** @IPMI_ERR_UNSPECIFIED, align 8
  %276 = ptrtoint i8* %275 to i32
  %277 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %278 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  store i32 %276, i32* %280, align 4
  %281 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %282 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %281, i32 0, i32 1
  store i32 3, i32* %282, align 8
  br label %283

283:                                              ; preds = %228, %216
  br label %284

284:                                              ; preds = %283, %154
  br label %285

285:                                              ; preds = %284
  %286 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %287 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %292 = or i32 %291, 1
  %293 = shl i32 %292, 2
  %294 = icmp eq i32 %290, %293
  br i1 %294, label %295, label %357

295:                                              ; preds = %285
  %296 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %297 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @IPMI_SEND_MSG_CMD, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %357

303:                                              ; preds = %295
  %304 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %305 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %304, i32 0, i32 4
  %306 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %305, align 8
  %307 = icmp ne %struct.ipmi_recv_msg* %306, null
  br i1 %307, label %308, label %357

308:                                              ; preds = %303
  %309 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %310 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %309, i32 0, i32 4
  %311 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %310, align 8
  store %struct.ipmi_recv_msg* %311, %struct.ipmi_recv_msg** %9, align 8
  store i32 0, i32* %5, align 4
  %312 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %313 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = icmp slt i32 %314, 2
  br i1 %315, label %316, label %317

316:                                              ; preds = %308
  br label %495

317:                                              ; preds = %308
  %318 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %319 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %318, i32 0, i32 3
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 2
  %322 = load i32, i32* %321, align 4
  %323 = and i32 %322, 15
  store i32 %323, i32* %6, align 4
  %324 = load i32, i32* %6, align 4
  %325 = load i32, i32* @IPMI_MAX_CHANNELS, align 4
  %326 = icmp sge i32 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %317
  br label %495

328:                                              ; preds = %317
  %329 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %9, align 8
  %330 = icmp ne %struct.ipmi_recv_msg* %329, null
  br i1 %330, label %332, label %331

331:                                              ; preds = %328
  br label %495

332:                                              ; preds = %328
  %333 = load i32, i32* @IPMI_RESPONSE_RESPONSE_TYPE, align 4
  %334 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %9, align 8
  %335 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %334, i32 0, i32 2
  store i32 %333, i32* %335, align 8
  %336 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %9, align 8
  %337 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %9, align 8
  %340 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 0
  store i32* %338, i32** %341, align 8
  %342 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %9, align 8
  %343 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 1
  store i32 1, i32* %344, align 8
  %345 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %346 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %345, i32 0, i32 0
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 2
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %9, align 8
  %351 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 0
  store i32 %349, i32* %353, align 4
  %354 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %355 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %9, align 8
  %356 = call i32 @deliver_local_response(%struct.ipmi_smi* %354, %struct.ipmi_recv_msg* %355)
  br label %494

357:                                              ; preds = %303, %295, %285
  %358 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %359 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %358, i32 0, i32 0
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %364 = or i32 %363, 1
  %365 = shl i32 %364, 2
  %366 = icmp eq i32 %362, %365
  br i1 %366, label %367, label %466

367:                                              ; preds = %357
  %368 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %369 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %368, i32 0, i32 0
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 1
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @IPMI_GET_MSG_CMD, align 4
  %374 = icmp eq i32 %372, %373
  br i1 %374, label %375, label %466

375:                                              ; preds = %367
  %376 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %377 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %376, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 3
  %380 = load i32, i32* %379, align 4
  %381 = and i32 %380, 15
  store i32 %381, i32* %6, align 4
  %382 = load i32, i32* %6, align 4
  %383 = load i32, i32* @IPMI_MAX_CHANNELS, align 4
  %384 = icmp sge i32 %382, %383
  br i1 %384, label %385, label %386

385:                                              ; preds = %375
  store i32 0, i32* %5, align 4
  br label %495

386:                                              ; preds = %375
  %387 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %388 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %392, label %391

391:                                              ; preds = %386
  store i32 0, i32* %5, align 4
  br label %495

392:                                              ; preds = %386
  %393 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %394 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = call %struct.TYPE_4__* @READ_ONCE(i32 %395)
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 0
  %398 = load %struct.ipmi_channel*, %struct.ipmi_channel** %397, align 8
  store %struct.ipmi_channel* %398, %struct.ipmi_channel** %10, align 8
  %399 = load %struct.ipmi_channel*, %struct.ipmi_channel** %10, align 8
  %400 = load i32, i32* %6, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %399, i64 %401
  %403 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  switch i64 %404, label %439 [
    i64 128, label %405
    i64 130, label %422
    i64 129, label %422
  ]

405:                                              ; preds = %392
  %406 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %407 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %406, i32 0, i32 0
  %408 = load i32*, i32** %407, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 4
  %410 = load i32, i32* %409, align 4
  %411 = and i32 %410, 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %405
  %414 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %415 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %416 = call i32 @handle_ipmb_get_msg_rsp(%struct.ipmi_smi* %414, %struct.ipmi_smi_msg* %415)
  store i32 %416, i32* %5, align 4
  br label %421

417:                                              ; preds = %405
  %418 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %419 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %420 = call i32 @handle_ipmb_get_msg_cmd(%struct.ipmi_smi* %418, %struct.ipmi_smi_msg* %419)
  store i32 %420, i32* %5, align 4
  br label %421

421:                                              ; preds = %417, %413
  br label %465

422:                                              ; preds = %392, %392
  %423 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %424 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %423, i32 0, i32 0
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 6
  %427 = load i32, i32* %426, align 4
  %428 = and i32 %427, 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %422
  %431 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %432 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %433 = call i32 @handle_lan_get_msg_rsp(%struct.ipmi_smi* %431, %struct.ipmi_smi_msg* %432)
  store i32 %433, i32* %5, align 4
  br label %438

434:                                              ; preds = %422
  %435 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %436 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %437 = call i32 @handle_lan_get_msg_cmd(%struct.ipmi_smi* %435, %struct.ipmi_smi_msg* %436)
  store i32 %437, i32* %5, align 4
  br label %438

438:                                              ; preds = %434, %430
  br label %465

439:                                              ; preds = %392
  %440 = load %struct.ipmi_channel*, %struct.ipmi_channel** %10, align 8
  %441 = load i32, i32* %6, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %440, i64 %442
  %444 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = load i32, i32* @IPMI_CHANNEL_MEDIUM_OEM_MIN, align 4
  %447 = sext i32 %446 to i64
  %448 = icmp sge i64 %445, %447
  br i1 %448, label %449, label %463

449:                                              ; preds = %439
  %450 = load %struct.ipmi_channel*, %struct.ipmi_channel** %10, align 8
  %451 = load i32, i32* %6, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %450, i64 %452
  %454 = getelementptr inbounds %struct.ipmi_channel, %struct.ipmi_channel* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = load i32, i32* @IPMI_CHANNEL_MEDIUM_OEM_MAX, align 4
  %457 = sext i32 %456 to i64
  %458 = icmp sle i64 %455, %457
  br i1 %458, label %459, label %463

459:                                              ; preds = %449
  %460 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %461 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %462 = call i32 @handle_oem_get_msg_cmd(%struct.ipmi_smi* %460, %struct.ipmi_smi_msg* %461)
  store i32 %462, i32* %5, align 4
  br label %464

463:                                              ; preds = %449, %439
  store i32 0, i32* %5, align 4
  br label %464

464:                                              ; preds = %463, %459
  br label %465

465:                                              ; preds = %464, %438, %421
  br label %493

466:                                              ; preds = %367, %357
  %467 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %468 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %467, i32 0, i32 0
  %469 = load i32*, i32** %468, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 0
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %473 = or i32 %472, 1
  %474 = shl i32 %473, 2
  %475 = icmp eq i32 %471, %474
  br i1 %475, label %476, label %488

476:                                              ; preds = %466
  %477 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %478 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %477, i32 0, i32 0
  %479 = load i32*, i32** %478, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 1
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* @IPMI_READ_EVENT_MSG_BUFFER_CMD, align 4
  %483 = icmp eq i32 %481, %482
  br i1 %483, label %484, label %488

484:                                              ; preds = %476
  %485 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %486 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %487 = call i32 @handle_read_event_rsp(%struct.ipmi_smi* %485, %struct.ipmi_smi_msg* %486)
  store i32 %487, i32* %5, align 4
  br label %492

488:                                              ; preds = %476, %466
  %489 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %490 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %491 = call i32 @handle_bmc_rsp(%struct.ipmi_smi* %489, %struct.ipmi_smi_msg* %490)
  store i32 %491, i32* %5, align 4
  br label %492

492:                                              ; preds = %488, %484
  br label %493

493:                                              ; preds = %492, %465
  br label %494

494:                                              ; preds = %493, %332
  br label %495

495:                                              ; preds = %494, %391, %385, %331, %327, %316, %148
  %496 = load i32, i32* %5, align 4
  ret i32 %496
}

declare dso_local i32 @ipmi_debug_msg(i8*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @READ_ONCE(i32) #1

declare dso_local i32 @ipmi_inc_stat(%struct.ipmi_smi*, i32) #1

declare dso_local i32 @intf_err_seq(%struct.ipmi_smi*, i32, i32) #1

declare dso_local i32 @intf_start_seq_timer(%struct.ipmi_smi*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @deliver_local_response(%struct.ipmi_smi*, %struct.ipmi_recv_msg*) #1

declare dso_local i32 @handle_ipmb_get_msg_rsp(%struct.ipmi_smi*, %struct.ipmi_smi_msg*) #1

declare dso_local i32 @handle_ipmb_get_msg_cmd(%struct.ipmi_smi*, %struct.ipmi_smi_msg*) #1

declare dso_local i32 @handle_lan_get_msg_rsp(%struct.ipmi_smi*, %struct.ipmi_smi_msg*) #1

declare dso_local i32 @handle_lan_get_msg_cmd(%struct.ipmi_smi*, %struct.ipmi_smi_msg*) #1

declare dso_local i32 @handle_oem_get_msg_cmd(%struct.ipmi_smi*, %struct.ipmi_smi_msg*) #1

declare dso_local i32 @handle_read_event_rsp(%struct.ipmi_smi*, %struct.ipmi_smi_msg*) #1

declare dso_local i32 @handle_bmc_rsp(%struct.ipmi_smi*, %struct.ipmi_smi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
