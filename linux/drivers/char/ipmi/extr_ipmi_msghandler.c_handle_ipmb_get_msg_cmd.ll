; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_ipmb_get_msg_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_ipmb_get_msg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8 }
%struct.ipmi_smi_msg = type { i32, i32*, i32*, i32 }
%struct.cmd_rcvr = type { %struct.ipmi_user* }
%struct.ipmi_user = type { i32 }
%struct.ipmi_ipmb_addr = type { i32, i32, i32, i32 }
%struct.ipmi_recv_msg = type { i32, i32, %struct.TYPE_4__, i32, %struct.ipmi_user*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@invalid_commands = common dso_local global i32 0, align 4
@unhandled_commands = common dso_local global i32 0, align 4
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_SEND_MSG_CMD = common dso_local global i32 0, align 4
@IPMI_INVALID_CMD_COMPLETION_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid command:\00", align 1
@free_user = common dso_local global i32 0, align 4
@IPMI_IPMB_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_CMD_RECV_TYPE = common dso_local global i32 0, align 4
@handled_commands = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, %struct.ipmi_smi_msg*)* @handle_ipmb_get_msg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ipmb_get_msg_cmd(%struct.ipmi_smi* %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_smi*, align 8
  %5 = alloca %struct.ipmi_smi_msg*, align 8
  %6 = alloca %struct.cmd_rcvr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.ipmi_user*, align 8
  %12 = alloca %struct.ipmi_ipmb_addr*, align 8
  %13 = alloca %struct.ipmi_recv_msg*, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %4, align 8
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.ipmi_user* null, %struct.ipmi_user** %11, align 8
  %14 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %15 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %20 = load i32, i32* @invalid_commands, align 4
  %21 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %19, i32 %20)
  store i32 0, i32* %3, align 4
  br label %325

22:                                               ; preds = %2
  %23 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %24 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %325

30:                                               ; preds = %22
  %31 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %32 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 2
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %8, align 1
  %38 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %39 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  %42 = load i32, i32* %41, align 4
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %9, align 1
  %44 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %45 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 15
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %10, align 1
  %51 = call i32 (...) @rcu_read_lock()
  %52 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %53 = load i8, i8* %8, align 1
  %54 = load i8, i8* %9, align 1
  %55 = load i8, i8* %10, align 1
  %56 = call %struct.cmd_rcvr* @find_cmd_rcvr(%struct.ipmi_smi* %52, i8 zeroext %53, i8 zeroext %54, i8 zeroext %55)
  store %struct.cmd_rcvr* %56, %struct.cmd_rcvr** %6, align 8
  %57 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %6, align 8
  %58 = icmp ne %struct.cmd_rcvr* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %30
  %60 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %6, align 8
  %61 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %60, i32 0, i32 0
  %62 = load %struct.ipmi_user*, %struct.ipmi_user** %61, align 8
  store %struct.ipmi_user* %62, %struct.ipmi_user** %11, align 8
  %63 = load %struct.ipmi_user*, %struct.ipmi_user** %11, align 8
  %64 = getelementptr inbounds %struct.ipmi_user, %struct.ipmi_user* %63, i32 0, i32 0
  %65 = call i32 @kref_get(i32* %64)
  br label %67

66:                                               ; preds = %30
  store %struct.ipmi_user* null, %struct.ipmi_user** %11, align 8
  br label %67

67:                                               ; preds = %66, %59
  %68 = call i32 (...) @rcu_read_unlock()
  %69 = load %struct.ipmi_user*, %struct.ipmi_user** %11, align 8
  %70 = icmp eq %struct.ipmi_user* %69, null
  br i1 %70, label %71, label %214

71:                                               ; preds = %67
  %72 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %73 = load i32, i32* @unhandled_commands, align 4
  %74 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %72, i32 %73)
  %75 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %76 = shl i32 %75, 2
  %77 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %78 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* @IPMI_SEND_MSG_CMD, align 4
  %82 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %83 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 %81, i32* %85, align 4
  %86 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %87 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %92 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 %90, i32* %94, align 4
  %95 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %96 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 6
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %101 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  store i32 %99, i32* %103, align 4
  %104 = load i8, i8* %8, align 1
  %105 = zext i8 %104 to i32
  %106 = add nsw i32 %105, 1
  %107 = shl i32 %106, 2
  %108 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %109 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 7
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 3
  %114 = or i32 %107, %113
  %115 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %116 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  store i32 %114, i32* %118, align 4
  %119 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %120 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  %123 = bitcast i32* %122 to i8*
  %124 = call i8* @ipmb_checksum(i8* %123, i32 2)
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %127 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 5
  store i32 %125, i32* %129, align 4
  %130 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %131 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %130, i32 0, i32 2
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %134 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 15
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %145 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 6
  store i32 %143, i32* %147, align 4
  %148 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %149 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 7
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 252
  %154 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %155 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 3
  %160 = or i32 %153, %159
  %161 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %162 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 7
  store i32 %160, i32* %164, align 4
  %165 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %166 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 8
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %171 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 8
  store i32 %169, i32* %173, align 4
  %174 = load i32, i32* @IPMI_INVALID_CMD_COMPLETION_CODE, align 4
  %175 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %176 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 9
  store i32 %174, i32* %178, align 4
  %179 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %180 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 6
  %183 = bitcast i32* %182 to i8*
  %184 = call i8* @ipmb_checksum(i8* %183, i32 4)
  %185 = ptrtoint i8* %184 to i32
  %186 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %187 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 10
  store i32 %185, i32* %189, align 4
  %190 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %191 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %190, i32 0, i32 3
  store i32 11, i32* %191, align 8
  %192 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %193 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = bitcast i32* %194 to i8*
  %196 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %197 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @ipmi_debug_msg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %195, i32 %198)
  %200 = call i32 (...) @rcu_read_lock()
  %201 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %202 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %71
  %206 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %207 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %208 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %211 = call i32 @smi_send(%struct.ipmi_smi* %206, i32 %209, %struct.ipmi_smi_msg* %210, i32 0)
  store i32 -1, i32* %7, align 4
  br label %212

212:                                              ; preds = %205, %71
  %213 = call i32 (...) @rcu_read_unlock()
  br label %323

214:                                              ; preds = %67
  %215 = call %struct.ipmi_recv_msg* (...) @ipmi_alloc_recv_msg()
  store %struct.ipmi_recv_msg* %215, %struct.ipmi_recv_msg** %13, align 8
  %216 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %217 = icmp ne %struct.ipmi_recv_msg* %216, null
  br i1 %217, label %223, label %218

218:                                              ; preds = %214
  store i32 1, i32* %7, align 4
  %219 = load %struct.ipmi_user*, %struct.ipmi_user** %11, align 8
  %220 = getelementptr inbounds %struct.ipmi_user, %struct.ipmi_user* %219, i32 0, i32 0
  %221 = load i32, i32* @free_user, align 4
  %222 = call i32 @kref_put(i32* %220, i32 %221)
  br label %322

223:                                              ; preds = %214
  %224 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %225 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %224, i32 0, i32 5
  %226 = bitcast i32* %225 to %struct.ipmi_ipmb_addr*
  store %struct.ipmi_ipmb_addr* %226, %struct.ipmi_ipmb_addr** %12, align 8
  %227 = load i32, i32* @IPMI_IPMB_ADDR_TYPE, align 4
  %228 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %12, align 8
  %229 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 4
  %230 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %231 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 6
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %12, align 8
  %236 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 4
  %237 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %238 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 7
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, 3
  %243 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %12, align 8
  %244 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 4
  %245 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %246 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 3
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, 15
  %251 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %12, align 8
  %252 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 4
  %253 = load %struct.ipmi_user*, %struct.ipmi_user** %11, align 8
  %254 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %255 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %254, i32 0, i32 4
  store %struct.ipmi_user* %253, %struct.ipmi_user** %255, align 8
  %256 = load i32, i32* @IPMI_CMD_RECV_TYPE, align 4
  %257 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %258 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %257, i32 0, i32 3
  store i32 %256, i32* %258, align 8
  %259 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %260 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 7
  %263 = load i32, i32* %262, align 4
  %264 = ashr i32 %263, 2
  %265 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %266 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %265, i32 0, i32 0
  store i32 %264, i32* %266, align 8
  %267 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %268 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 4
  %271 = load i32, i32* %270, align 4
  %272 = ashr i32 %271, 2
  %273 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %274 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  store i32 %272, i32* %275, align 8
  %276 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %277 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 8
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %282 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 1
  store i32 %280, i32* %283, align 4
  %284 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %285 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %288 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 3
  store i32 %286, i32* %289, align 4
  %290 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %291 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = sub nsw i32 %292, 10
  %294 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %295 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 2
  store i32 %293, i32* %296, align 8
  %297 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %298 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %301 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 9
  %304 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %305 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = sub nsw i32 %306, 10
  %308 = call i32 @memcpy(i32 %299, i32* %303, i32 %307)
  %309 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %310 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %311 = call i64 @deliver_response(%struct.ipmi_smi* %309, %struct.ipmi_recv_msg* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %223
  %314 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %315 = load i32, i32* @unhandled_commands, align 4
  %316 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %314, i32 %315)
  br label %321

317:                                              ; preds = %223
  %318 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %319 = load i32, i32* @handled_commands, align 4
  %320 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %318, i32 %319)
  br label %321

321:                                              ; preds = %317, %313
  br label %322

322:                                              ; preds = %321, %218
  br label %323

323:                                              ; preds = %322, %212
  %324 = load i32, i32* %7, align 4
  store i32 %324, i32* %3, align 4
  br label %325

325:                                              ; preds = %323, %29, %18
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local i32 @ipmi_inc_stat(%struct.ipmi_smi*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cmd_rcvr* @find_cmd_rcvr(%struct.ipmi_smi*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i8* @ipmb_checksum(i8*, i32) #1

declare dso_local i32 @ipmi_debug_msg(i8*, i8*, i32) #1

declare dso_local i32 @smi_send(%struct.ipmi_smi*, i32, %struct.ipmi_smi_msg*, i32) #1

declare dso_local %struct.ipmi_recv_msg* @ipmi_alloc_recv_msg(...) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @deliver_response(%struct.ipmi_smi*, %struct.ipmi_recv_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
