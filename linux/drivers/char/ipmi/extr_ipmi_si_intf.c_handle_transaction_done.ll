; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_handle_transaction_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_handle_transaction_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32, i8, %struct.ipmi_smi_msg*, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.ipmi_smi_msg = type { i32, i8*, i32 (%struct.ipmi_smi_msg*)* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)* }

@.str = private unnamed_addr constant [5 x i8] c"Done\00", align 1
@IPMI_MAX_MSG_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error clearing flags: %2.2x\0A\00", align 1
@EVENT_MSG_BUFFER_FULL = common dso_local global i8 0, align 1
@events = common dso_local global i32 0, align 4
@RECEIVE_MSG_AVAIL = common dso_local global i8 0, align 1
@incoming_messages = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Couldn't get irq info: %x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Maybe ok, but ipmi might run very slowly.\0A\00", align 1
@SI_BT = common dso_local global i32 0, align 4
@GLOBAL_ENABLES_MASK = common dso_local global i8 0, align 1
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_SET_BMC_GLOBAL_ENABLES_CMD = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Could not set the global enables: 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smi_info*)* @handle_transaction_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_transaction_done(%struct.smi_info* %0) #0 {
  %2 = alloca %struct.smi_info*, align 8
  %3 = alloca %struct.ipmi_smi_msg*, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca [4 x i8], align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  store %struct.smi_info* %0, %struct.smi_info** %2, align 8
  %11 = call i32 @debug_timestamp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %13 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %385 [
    i32 129, label %15
    i32 131, label %49
    i32 133, label %82
    i32 132, label %109
    i32 130, label %168
    i32 134, label %227
    i32 128, label %337
  ]

15:                                               ; preds = %1
  %16 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %17 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %16, i32 0, i32 2
  %18 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %17, align 8
  %19 = icmp ne %struct.ipmi_smi_msg* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %385

21:                                               ; preds = %15
  %22 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %23 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %22, i32 0, i32 6
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %25, align 8
  %27 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %28 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %31 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %30, i32 0, i32 2
  %32 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %31, align 8
  %33 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* @IPMI_MAX_MSG_LENGTH, align 4
  %36 = call i32 %26(i32 %29, i8* %34, i32 %35)
  %37 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %38 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %37, i32 0, i32 2
  %39 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %38, align 8
  %40 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  %41 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %42 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %41, i32 0, i32 2
  %43 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %42, align 8
  store %struct.ipmi_smi_msg* %43, %struct.ipmi_smi_msg** %3, align 8
  %44 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %45 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %44, i32 0, i32 2
  store %struct.ipmi_smi_msg* null, %struct.ipmi_smi_msg** %45, align 8
  %46 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %47 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %48 = call i32 @deliver_recv_msg(%struct.smi_info* %46, %struct.ipmi_smi_msg* %47)
  br label %385

49:                                               ; preds = %1
  %50 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %51 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %50, i32 0, i32 6
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %53, align 8
  %55 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %56 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %59 = call i32 %54(i32 %57, i8* %58, i32 4)
  store i32 %59, i32* %5, align 4
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %49
  %65 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %66 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %65, i32 0, i32 0
  store i32 129, i32* %66, align 8
  br label %81

67:                                               ; preds = %49
  %68 = load i32, i32* %5, align 4
  %69 = icmp ult i32 %68, 4
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %72 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %71, i32 0, i32 0
  store i32 129, i32* %72, align 8
  br label %80

73:                                               ; preds = %67
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  %75 = load i8, i8* %74, align 1
  %76 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %77 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %76, i32 0, i32 1
  store i8 %75, i8* %77, align 4
  %78 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %79 = call i32 @handle_flags(%struct.smi_info* %78)
  br label %80

80:                                               ; preds = %73, %70
  br label %81

81:                                               ; preds = %80, %64
  br label %385

82:                                               ; preds = %1
  %83 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %84 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %83, i32 0, i32 6
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %86, align 8
  %88 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %89 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %92 = call i32 %87(i32 %90, i8* %91, i32 3)
  %93 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %82
  %98 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %99 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = call i32 (i32, i8*, ...) @dev_warn(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %97, %82
  %107 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %108 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %107, i32 0, i32 0
  store i32 129, i32* %108, align 8
  br label %385

109:                                              ; preds = %1
  %110 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %111 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %110, i32 0, i32 6
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %113, align 8
  %115 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %116 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %119 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %118, i32 0, i32 2
  %120 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %119, align 8
  %121 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* @IPMI_MAX_MSG_LENGTH, align 4
  %124 = call i32 %114(i32 %117, i8* %122, i32 %123)
  %125 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %126 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %125, i32 0, i32 2
  %127 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %126, align 8
  %128 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 8
  %129 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %130 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %129, i32 0, i32 2
  %131 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %130, align 8
  store %struct.ipmi_smi_msg* %131, %struct.ipmi_smi_msg** %3, align 8
  %132 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %133 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %132, i32 0, i32 2
  store %struct.ipmi_smi_msg* null, %struct.ipmi_smi_msg** %133, align 8
  %134 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %135 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 2
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %109
  %142 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %143 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %142, i32 0, i32 2
  %144 = load i32 (%struct.ipmi_smi_msg*)*, i32 (%struct.ipmi_smi_msg*)** %143, align 8
  %145 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %146 = call i32 %144(%struct.ipmi_smi_msg* %145)
  %147 = load i8, i8* @EVENT_MSG_BUFFER_FULL, align 1
  %148 = zext i8 %147 to i32
  %149 = xor i32 %148, -1
  %150 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %151 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %150, i32 0, i32 1
  %152 = load i8, i8* %151, align 4
  %153 = zext i8 %152 to i32
  %154 = and i32 %153, %149
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %151, align 4
  %156 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %157 = call i32 @handle_flags(%struct.smi_info* %156)
  br label %167

158:                                              ; preds = %109
  %159 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %160 = load i32, i32* @events, align 4
  %161 = call i32 @smi_inc_stat(%struct.smi_info* %159, i32 %160)
  %162 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %163 = call i32 @handle_flags(%struct.smi_info* %162)
  %164 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %165 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %166 = call i32 @deliver_recv_msg(%struct.smi_info* %164, %struct.ipmi_smi_msg* %165)
  br label %167

167:                                              ; preds = %158, %141
  br label %385

168:                                              ; preds = %1
  %169 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %170 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %169, i32 0, i32 6
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %172, align 8
  %174 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %175 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %178 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %177, i32 0, i32 2
  %179 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %178, align 8
  %180 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = load i32, i32* @IPMI_MAX_MSG_LENGTH, align 4
  %183 = call i32 %173(i32 %176, i8* %181, i32 %182)
  %184 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %185 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %184, i32 0, i32 2
  %186 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %185, align 8
  %187 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %186, i32 0, i32 0
  store i32 %183, i32* %187, align 8
  %188 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %189 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %188, i32 0, i32 2
  %190 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %189, align 8
  store %struct.ipmi_smi_msg* %190, %struct.ipmi_smi_msg** %3, align 8
  %191 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %192 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %191, i32 0, i32 2
  store %struct.ipmi_smi_msg* null, %struct.ipmi_smi_msg** %192, align 8
  %193 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %194 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 2
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %217

200:                                              ; preds = %168
  %201 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %202 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %201, i32 0, i32 2
  %203 = load i32 (%struct.ipmi_smi_msg*)*, i32 (%struct.ipmi_smi_msg*)** %202, align 8
  %204 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %205 = call i32 %203(%struct.ipmi_smi_msg* %204)
  %206 = load i8, i8* @RECEIVE_MSG_AVAIL, align 1
  %207 = zext i8 %206 to i32
  %208 = xor i32 %207, -1
  %209 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %210 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %209, i32 0, i32 1
  %211 = load i8, i8* %210, align 4
  %212 = zext i8 %211 to i32
  %213 = and i32 %212, %208
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %210, align 4
  %215 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %216 = call i32 @handle_flags(%struct.smi_info* %215)
  br label %226

217:                                              ; preds = %168
  %218 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %219 = load i32, i32* @incoming_messages, align 4
  %220 = call i32 @smi_inc_stat(%struct.smi_info* %218, i32 %219)
  %221 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %222 = call i32 @handle_flags(%struct.smi_info* %221)
  %223 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %224 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %225 = call i32 @deliver_recv_msg(%struct.smi_info* %223, %struct.ipmi_smi_msg* %224)
  br label %226

226:                                              ; preds = %217, %200
  br label %385

227:                                              ; preds = %1
  %228 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %229 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %228, i32 0, i32 6
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %231, align 8
  %233 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %234 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %237 = call i32 %232(i32 %235, i8* %236, i32 4)
  %238 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %258

242:                                              ; preds = %227
  %243 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %244 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = call i32 (i32, i8*, ...) @dev_warn(i32 %246, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %249)
  %251 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %252 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 (i32, i8*, ...) @dev_warn(i32 %254, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %256 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %257 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %256, i32 0, i32 0
  store i32 129, i32* %257, align 8
  br label %385

258:                                              ; preds = %227
  %259 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %260 = call zeroext i8 @current_global_enables(%struct.smi_info* %259, i32 0, i32* %9)
  store i8 %260, i8* %8, align 1
  %261 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %262 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @SI_BT, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %258
  %268 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %269 = load i32, i32* %9, align 4
  %270 = call i32 @check_bt_irq(%struct.smi_info* %268, i32 %269)
  br label %271

271:                                              ; preds = %267, %258
  %272 = load i8, i8* %8, align 1
  %273 = zext i8 %272 to i32
  %274 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i32
  %277 = load i8, i8* @GLOBAL_ENABLES_MASK, align 1
  %278 = zext i8 %277 to i32
  %279 = and i32 %276, %278
  %280 = icmp ne i32 %273, %279
  br i1 %280, label %281, label %312

281:                                              ; preds = %271
  %282 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %283 = shl i32 %282, 2
  %284 = trunc i32 %283 to i8
  %285 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 %284, i8* %285, align 1
  %286 = load i8, i8* @IPMI_SET_BMC_GLOBAL_ENABLES_CMD, align 1
  %287 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  store i8 %286, i8* %287, align 1
  %288 = load i8, i8* %8, align 1
  %289 = zext i8 %288 to i32
  %290 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i32
  %293 = load i8, i8* @GLOBAL_ENABLES_MASK, align 1
  %294 = zext i8 %293 to i32
  %295 = xor i32 %294, -1
  %296 = and i32 %292, %295
  %297 = or i32 %289, %296
  %298 = trunc i32 %297 to i8
  %299 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  store i8 %298, i8* %299, align 1
  %300 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %301 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %300, i32 0, i32 6
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 1
  %304 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %303, align 8
  %305 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %306 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %305, i32 0, i32 5
  %307 = load i32, i32* %306, align 4
  %308 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %309 = call i32 %304(i32 %307, i8* %308, i32 3)
  %310 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %311 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %310, i32 0, i32 0
  store i32 128, i32* %311, align 8
  br label %336

312:                                              ; preds = %271
  %313 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %314 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 8
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %332

317:                                              ; preds = %312
  %318 = call i8* (...) @ipmi_alloc_smi_msg()
  %319 = bitcast i8* %318 to %struct.ipmi_smi_msg*
  %320 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %321 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %320, i32 0, i32 2
  store %struct.ipmi_smi_msg* %319, %struct.ipmi_smi_msg** %321, align 8
  %322 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %323 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %322, i32 0, i32 2
  %324 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %323, align 8
  %325 = icmp ne %struct.ipmi_smi_msg* %324, null
  br i1 %325, label %329, label %326

326:                                              ; preds = %317
  %327 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %328 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %327, i32 0, i32 0
  store i32 129, i32* %328, align 8
  br label %385

329:                                              ; preds = %317
  %330 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %331 = call i32 @start_getting_events(%struct.smi_info* %330)
  br label %335

332:                                              ; preds = %312
  %333 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %334 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %333, i32 0, i32 0
  store i32 129, i32* %334, align 8
  br label %335

335:                                              ; preds = %332, %329
  br label %336

336:                                              ; preds = %335, %281
  br label %385

337:                                              ; preds = %1
  %338 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %339 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %338, i32 0, i32 6
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 0
  %342 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %341, align 8
  %343 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %344 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 4
  %346 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %347 = call i32 %342(i32 %345, i8* %346, i32 4)
  %348 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  %349 = load i8, i8* %348, align 1
  %350 = zext i8 %349 to i32
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %361

352:                                              ; preds = %337
  %353 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %354 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = call i32 (i32, i8*, ...) @dev_warn(i32 %356, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %359)
  br label %361

361:                                              ; preds = %352, %337
  %362 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %363 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 8
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %381

366:                                              ; preds = %361
  %367 = call i8* (...) @ipmi_alloc_smi_msg()
  %368 = bitcast i8* %367 to %struct.ipmi_smi_msg*
  %369 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %370 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %369, i32 0, i32 2
  store %struct.ipmi_smi_msg* %368, %struct.ipmi_smi_msg** %370, align 8
  %371 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %372 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %371, i32 0, i32 2
  %373 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %372, align 8
  %374 = icmp ne %struct.ipmi_smi_msg* %373, null
  br i1 %374, label %378, label %375

375:                                              ; preds = %366
  %376 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %377 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %376, i32 0, i32 0
  store i32 129, i32* %377, align 8
  br label %385

378:                                              ; preds = %366
  %379 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %380 = call i32 @start_getting_events(%struct.smi_info* %379)
  br label %384

381:                                              ; preds = %361
  %382 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %383 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %382, i32 0, i32 0
  store i32 129, i32* %383, align 8
  br label %384

384:                                              ; preds = %381, %378
  br label %385

385:                                              ; preds = %1, %384, %375, %336, %326, %242, %226, %167, %106, %81, %21, %20
  ret void
}

declare dso_local i32 @debug_timestamp(i8*) #1

declare dso_local i32 @deliver_recv_msg(%struct.smi_info*, %struct.ipmi_smi_msg*) #1

declare dso_local i32 @handle_flags(%struct.smi_info*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @smi_inc_stat(%struct.smi_info*, i32) #1

declare dso_local zeroext i8 @current_global_enables(%struct.smi_info*, i32, i32*) #1

declare dso_local i32 @check_bt_irq(%struct.smi_info*, i32) #1

declare dso_local i8* @ipmi_alloc_smi_msg(...) #1

declare dso_local i32 @start_getting_events(%struct.smi_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
