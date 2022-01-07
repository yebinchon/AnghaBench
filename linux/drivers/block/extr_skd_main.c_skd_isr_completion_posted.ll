; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_isr_completion_posted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_isr_completion_posted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i64, i64, i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, %struct.fit_comp_error_info*, %struct.fit_completion_entry_v1*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.fit_comp_error_info = type { i32, i32, i32, i32 }
%struct.fit_completion_entry_v1 = type { i64, i64, i64, i32 }
%struct.request = type { i32 }
%struct.skd_request_context = type { i64, i64, i64, i32, %struct.fit_comp_error_info, %struct.fit_completion_entry_v1 }

@SKD_N_COMPLETION_ENTRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [79 x i8] c"cycle=%d ix=%d got cycle=%d cmdctxt=0x%x stat=%d busy=%d rbytes=0x%x proto=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"end of completions\0A\00", align 1
@SKD_ID_SLOT_AND_TABLE_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"No request for tag %#x -> %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Completion mismatch comp_id=0x%04x skreq=0x%04x new=0x%04x\0A\00", align 1
@SKD_REQ_STATE_BUSY = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i64 0, align 8
@SAM_STAT_GOOD = common dso_local global i64 0, align 8
@BLK_STS_OK = common dso_local global i32 0, align 4
@SKD_DRVR_STATE_PAUSING = common dso_local global i64 0, align 8
@SKD_DRVR_STATE_PAUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skd_device*, i32, i32*)* @skd_isr_completion_posted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_isr_completion_posted(%struct.skd_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.skd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.fit_completion_entry_v1*, align 8
  %8 = alloca %struct.fit_comp_error_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.request*, align 8
  %13 = alloca %struct.skd_request_context*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.skd_device* %0, %struct.skd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %21 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %20, i32 0, i32 10
  %22 = call i32 @lockdep_assert_held(i32* %21)
  br label %23

23:                                               ; preds = %249, %158, %149, %116, %3
  %24 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %25 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SKD_N_COMPLETION_ENTRY, align 8
  %28 = icmp ult i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @SKD_ASSERT(i32 %29)
  %31 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %32 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %31, i32 0, i32 9
  %33 = load %struct.fit_completion_entry_v1*, %struct.fit_completion_entry_v1** %32, align 8
  %34 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %35 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.fit_completion_entry_v1, %struct.fit_completion_entry_v1* %33, i64 %36
  store %struct.fit_completion_entry_v1* %37, %struct.fit_completion_entry_v1** %7, align 8
  %38 = load %struct.fit_completion_entry_v1*, %struct.fit_completion_entry_v1** %7, align 8
  %39 = getelementptr inbounds %struct.fit_completion_entry_v1, %struct.fit_completion_entry_v1* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %16, align 8
  %41 = load %struct.fit_completion_entry_v1*, %struct.fit_completion_entry_v1** %7, align 8
  %42 = getelementptr inbounds %struct.fit_completion_entry_v1, %struct.fit_completion_entry_v1* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %14, align 8
  %44 = load %struct.fit_completion_entry_v1*, %struct.fit_completion_entry_v1** %7, align 8
  %45 = getelementptr inbounds %struct.fit_completion_entry_v1, %struct.fit_completion_entry_v1* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %15, align 8
  %47 = load %struct.fit_completion_entry_v1*, %struct.fit_completion_entry_v1** %7, align 8
  %48 = getelementptr inbounds %struct.fit_completion_entry_v1, %struct.fit_completion_entry_v1* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @be32_to_cpu(i32 %49)
  store i64 %50, i64* %17, align 8
  %51 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %52 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %51, i32 0, i32 8
  %53 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %52, align 8
  %54 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %55 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %53, i64 %56
  store %struct.fit_comp_error_info* %57, %struct.fit_comp_error_info** %8, align 8
  %58 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %59 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %58, i32 0, i32 5
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %63 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %66 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %72 = call i64 @skd_in_flight(%struct.skd_device* %71)
  %73 = load i64, i64* %17, align 8
  %74 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %75 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %61, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %64, i64 %67, i64 %68, i64 %69, i64 %70, i64 %72, i64 %73, i32 %76)
  %78 = load i64, i64* %16, align 8
  %79 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %80 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %23
  %84 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %85 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %84, i32 0, i32 5
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %250

89:                                               ; preds = %23
  %90 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %91 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %95 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SKD_N_COMPLETION_ENTRY, align 8
  %98 = icmp uge i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %89
  %100 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %101 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %103 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %99, %89
  %107 = load i64, i64* %14, align 8
  store i64 %107, i64* %9, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* @SKD_ID_SLOT_AND_TABLE_MASK, align 8
  %110 = and i64 %108, %109
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %113 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp uge i64 %111, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %106
  %117 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %118 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %11, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* %10, align 8
  %125 = call %struct.request* @blk_mq_tag_to_rq(i32 %123, i64 %124)
  %126 = call i32 @WARN_ON_ONCE(%struct.request* %125)
  %127 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %128 = load %struct.fit_completion_entry_v1*, %struct.fit_completion_entry_v1** %7, align 8
  %129 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %8, align 8
  %130 = call i32 @skd_complete_other(%struct.skd_device* %127, %struct.fit_completion_entry_v1* %128, %struct.fit_comp_error_info* %129)
  br label %23

131:                                              ; preds = %106
  %132 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %133 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* %11, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %10, align 8
  %140 = call %struct.request* @blk_mq_tag_to_rq(i32 %138, i64 %139)
  store %struct.request* %140, %struct.request** %12, align 8
  %141 = load %struct.request*, %struct.request** %12, align 8
  %142 = icmp ne %struct.request* %141, null
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %14, align 8
  %146 = load i64, i64* %10, align 8
  %147 = call i64 @WARN(i32 %144, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %145, i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %131
  br label %23

150:                                              ; preds = %131
  %151 = load %struct.request*, %struct.request** %12, align 8
  %152 = call %struct.skd_request_context* @blk_mq_rq_to_pdu(%struct.request* %151)
  store %struct.skd_request_context* %152, %struct.skd_request_context** %13, align 8
  %153 = load %struct.skd_request_context*, %struct.skd_request_context** %13, align 8
  %154 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %9, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %150
  %159 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %160 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %159, i32 0, i32 5
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i64, i64* %9, align 8
  %164 = load %struct.skd_request_context*, %struct.skd_request_context** %13, align 8
  %165 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %14, align 8
  %168 = call i32 @dev_err(i32* %162, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 %163, i64 %166, i64 %167)
  br label %23

169:                                              ; preds = %150
  %170 = load %struct.skd_request_context*, %struct.skd_request_context** %13, align 8
  %171 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @SKD_REQ_STATE_BUSY, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @SKD_ASSERT(i32 %175)
  %177 = load %struct.skd_request_context*, %struct.skd_request_context** %13, align 8
  %178 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %177, i32 0, i32 5
  %179 = load %struct.fit_completion_entry_v1*, %struct.fit_completion_entry_v1** %7, align 8
  %180 = bitcast %struct.fit_completion_entry_v1* %178 to i8*
  %181 = bitcast %struct.fit_completion_entry_v1* %179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 8 %181, i64 32, i1 false)
  %182 = load i64, i64* %15, align 8
  %183 = load i64, i64* @SAM_STAT_CHECK_CONDITION, align 8
  %184 = icmp eq i64 %182, %183
  %185 = zext i1 %184 to i32
  %186 = call i64 @unlikely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %209

188:                                              ; preds = %169
  %189 = load %struct.skd_request_context*, %struct.skd_request_context** %13, align 8
  %190 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %189, i32 0, i32 4
  %191 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %8, align 8
  %192 = bitcast %struct.fit_comp_error_info* %190 to i8*
  %193 = bitcast %struct.fit_comp_error_info* %191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %192, i8* align 4 %193, i64 16, i1 false)
  %194 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %195 = load i64, i64* %15, align 8
  %196 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %8, align 8
  %197 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %8, align 8
  %200 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %8, align 8
  %203 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %8, align 8
  %206 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @skd_log_check_status(%struct.skd_device* %194, i64 %195, i32 %198, i32 %201, i32 %204, i32 %207)
  br label %209

209:                                              ; preds = %188, %169
  %210 = load %struct.skd_request_context*, %struct.skd_request_context** %13, align 8
  %211 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp sgt i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %216 = load %struct.skd_request_context*, %struct.skd_request_context** %13, align 8
  %217 = call i32 @skd_postop_sg_list(%struct.skd_device* %215, %struct.skd_request_context* %216)
  br label %218

218:                                              ; preds = %214, %209
  %219 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %220 = load %struct.skd_request_context*, %struct.skd_request_context** %13, align 8
  %221 = call i32 @skd_release_skreq(%struct.skd_device* %219, %struct.skd_request_context* %220)
  %222 = load i64, i64* %15, align 8
  %223 = load i64, i64* @SAM_STAT_GOOD, align 8
  %224 = icmp eq i64 %222, %223
  %225 = zext i1 %224 to i32
  %226 = call i64 @likely(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %218
  %229 = load i32, i32* @BLK_STS_OK, align 4
  %230 = load %struct.skd_request_context*, %struct.skd_request_context** %13, align 8
  %231 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %230, i32 0, i32 3
  store i32 %229, i32* %231, align 8
  %232 = load %struct.request*, %struct.request** %12, align 8
  %233 = call i32 @blk_mq_complete_request(%struct.request* %232)
  br label %239

234:                                              ; preds = %218
  %235 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %236 = load %struct.skd_request_context*, %struct.skd_request_context** %13, align 8
  %237 = load %struct.request*, %struct.request** %12, align 8
  %238 = call i32 @skd_resolve_req_exception(%struct.skd_device* %235, %struct.skd_request_context* %236, %struct.request* %237)
  br label %239

239:                                              ; preds = %234, %228
  %240 = load i32, i32* %5, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %239
  %243 = load i32, i32* %19, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %19, align 4
  %245 = load i32, i32* %5, align 4
  %246 = icmp sge i32 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %242
  store i32 1, i32* %18, align 4
  br label %250

248:                                              ; preds = %242
  br label %249

249:                                              ; preds = %248, %239
  br label %23

250:                                              ; preds = %247, %83
  %251 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %252 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @SKD_DRVR_STATE_PAUSING, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %267

256:                                              ; preds = %250
  %257 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %258 = call i64 @skd_in_flight(%struct.skd_device* %257)
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %256
  %261 = load i64, i64* @SKD_DRVR_STATE_PAUSED, align 8
  %262 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %263 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %262, i32 0, i32 3
  store i64 %261, i64* %263, align 8
  %264 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %265 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %264, i32 0, i32 4
  %266 = call i32 @wake_up_interruptible(i32* %265)
  br label %267

267:                                              ; preds = %260, %256, %250
  %268 = load i32, i32* %18, align 4
  ret i32 %268
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @SKD_ASSERT(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i64 @skd_in_flight(%struct.skd_device*) #1

declare dso_local i32 @WARN_ON_ONCE(%struct.request*) #1

declare dso_local %struct.request* @blk_mq_tag_to_rq(i32, i64) #1

declare dso_local i32 @skd_complete_other(%struct.skd_device*, %struct.fit_completion_entry_v1*, %struct.fit_comp_error_info*) #1

declare dso_local i64 @WARN(i32, i8*, i64, i64) #1

declare dso_local %struct.skd_request_context* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skd_log_check_status(%struct.skd_device*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @skd_postop_sg_list(%struct.skd_device*, %struct.skd_request_context*) #1

declare dso_local i32 @skd_release_skreq(%struct.skd_device*, %struct.skd_request_context*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @blk_mq_complete_request(%struct.request*) #1

declare dso_local i32 @skd_resolve_req_exception(%struct.skd_device*, %struct.skd_request_context*, %struct.request*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
