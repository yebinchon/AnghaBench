; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_sanitize_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_sanitize_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i64, %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64* }
%union.drbd_state = type { i64 }
%struct.TYPE_12__ = type { i32 }

@NO_WARNING = common dso_local global i32 0, align 4
@FP_DONT_CARE = common dso_local global i32 0, align 4
@R_UNKNOWN = common dso_local global i32 0, align 4
@D_UNKNOWN = common dso_local global i64 0, align 8
@D_INCONSISTENT = common dso_local global i64 0, align 8
@D_DISKLESS = common dso_local global i64 0, align 8
@R_SECONDARY = common dso_local global i64 0, align 8
@D_FAILED = common dso_local global i64 0, align 8
@ABORTED_ONLINE_VERIFY = common dso_local global i32 0, align 4
@ABORTED_RESYNC = common dso_local global i32 0, align 4
@D_NEGOTIATING = common dso_local global i64 0, align 8
@UI_CURRENT = common dso_local global i64 0, align 8
@CONNECTION_LOST_NEGOTIATING = common dso_local global i32 0, align 4
@D_CONSISTENT = common dso_local global i64 0, align 8
@D_OUTDATED = common dso_local global i64 0, align 8
@D_UP_TO_DATE = common dso_local global i64 0, align 8
@IMPLICITLY_UPGRADED_DISK = common dso_local global i32 0, align 4
@IMPLICITLY_UPGRADED_PDSK = common dso_local global i32 0, align 4
@FP_STONITH = common dso_local global i32 0, align 4
@R_PRIMARY = common dso_local global i64 0, align 8
@OND_SUSPEND_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.drbd_device*, i64, i64, i32*)* @sanitize_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sanitize_state(%struct.drbd_device* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %union.drbd_state, align 8
  %6 = alloca %union.drbd_state, align 8
  %7 = alloca %union.drbd_state, align 8
  %8 = alloca %struct.drbd_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  store i64 %1, i64* %15, align 8
  %16 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %7, i32 0, i32 0
  store i64 %2, i64* %16, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @NO_WARNING, align 4
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @FP_DONT_CARE, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %25 = call i64 @get_ldev(%struct.drbd_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = call i32 (...) @rcu_read_lock()
  %29 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %30 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %29, i32 0, i32 3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_12__* @rcu_dereference(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %39 = call i32 @put_ldev(%struct.drbd_device* %38)
  br label %40

40:                                               ; preds = %27, %22
  %41 = bitcast %union.drbd_state* %7 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 149
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = bitcast %union.drbd_state* %7 to i64*
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @R_UNKNOWN, align 4
  %47 = bitcast %union.drbd_state* %7 to i32*
  store i32 %46, i32* %47, align 8
  %48 = bitcast %union.drbd_state* %7 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @D_UNKNOWN, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = bitcast %union.drbd_state* %7 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @D_INCONSISTENT, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %44
  %58 = load i64, i64* @D_UNKNOWN, align 8
  %59 = bitcast %union.drbd_state* %7 to i64*
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %60, %40
  %62 = bitcast %union.drbd_state* %7 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 142
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = bitcast %union.drbd_state* %7 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @D_DISKLESS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = bitcast %union.drbd_state* %7 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @R_SECONDARY, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = bitcast %union.drbd_state* %7 to i64*
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %75, %70, %65, %61
  %78 = bitcast %union.drbd_state* %7 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 149
  br i1 %80, label %81, label %111

81:                                               ; preds = %77
  %82 = bitcast %union.drbd_state* %7 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @D_FAILED, align 8
  %85 = icmp sle i64 %83, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = bitcast %union.drbd_state* %7 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @D_FAILED, align 8
  %90 = icmp sle i64 %88, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %86, %81
  %92 = load i32*, i32** %9, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %109

94:                                               ; preds = %91
  %95 = bitcast %union.drbd_state* %7 to i64*
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 134
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = bitcast %union.drbd_state* %7 to i64*
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 133
  br i1 %101, label %102, label %104

102:                                              ; preds = %98, %94
  %103 = load i32, i32* @ABORTED_ONLINE_VERIFY, align 4
  br label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @ABORTED_RESYNC, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %91
  %110 = bitcast %union.drbd_state* %7 to i64*
  store i64 149, i64* %110, align 8
  br label %111

111:                                              ; preds = %109, %86, %77
  %112 = bitcast %union.drbd_state* %7 to i64*
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %113, 149
  br i1 %114, label %115, label %164

115:                                              ; preds = %111
  %116 = bitcast %union.drbd_state* %7 to i64*
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @D_NEGOTIATING, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %164

120:                                              ; preds = %115
  %121 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %122 = load i64, i64* @D_NEGOTIATING, align 8
  %123 = call i64 @get_ldev_if_state(%struct.drbd_device* %121, i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %164

125:                                              ; preds = %120
  %126 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %127 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %130 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %129, i32 0, i32 3
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* @UI_CURRENT, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %128, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %125
  %140 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %141 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = bitcast %union.drbd_state* %7 to i64*
  store i64 %143, i64* %144, align 8
  %145 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %146 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = bitcast %union.drbd_state* %7 to i64*
  store i64 %148, i64* %149, align 8
  br label %161

150:                                              ; preds = %125
  %151 = load i32*, i32** %9, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* @CONNECTION_LOST_NEGOTIATING, align 4
  %155 = load i32*, i32** %9, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i64, i64* @D_DISKLESS, align 8
  %158 = bitcast %union.drbd_state* %7 to i64*
  store i64 %157, i64* %158, align 8
  %159 = load i64, i64* @D_UNKNOWN, align 8
  %160 = bitcast %union.drbd_state* %7 to i64*
  store i64 %159, i64* %160, align 8
  br label %161

161:                                              ; preds = %156, %139
  %162 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %163 = call i32 @put_ldev(%struct.drbd_device* %162)
  br label %164

164:                                              ; preds = %161, %120, %115, %111
  %165 = bitcast %union.drbd_state* %7 to i64*
  %166 = load i64, i64* %165, align 8
  %167 = icmp sge i64 %166, 149
  br i1 %167, label %168, label %199

168:                                              ; preds = %164
  %169 = bitcast %union.drbd_state* %7 to i64*
  %170 = load i64, i64* %169, align 8
  %171 = icmp slt i64 %170, 152
  br i1 %171, label %172, label %199

172:                                              ; preds = %168
  %173 = bitcast %union.drbd_state* %7 to i64*
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @D_CONSISTENT, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %182, label %177

177:                                              ; preds = %172
  %178 = bitcast %union.drbd_state* %7 to i64*
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @D_OUTDATED, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %177, %172
  %183 = load i64, i64* @D_UP_TO_DATE, align 8
  %184 = bitcast %union.drbd_state* %7 to i64*
  store i64 %183, i64* %184, align 8
  br label %185

185:                                              ; preds = %182, %177
  %186 = bitcast %union.drbd_state* %7 to i64*
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @D_CONSISTENT, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %195, label %190

190:                                              ; preds = %185
  %191 = bitcast %union.drbd_state* %7 to i64*
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @D_OUTDATED, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %190, %185
  %196 = load i64, i64* @D_UP_TO_DATE, align 8
  %197 = bitcast %union.drbd_state* %7 to i64*
  store i64 %196, i64* %197, align 8
  br label %198

198:                                              ; preds = %195, %190
  br label %199

199:                                              ; preds = %198, %168, %164
  %200 = load i64, i64* @D_DISKLESS, align 8
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %11, align 4
  %202 = load i64, i64* @D_UP_TO_DATE, align 8
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %12, align 4
  %204 = load i64, i64* @D_INCONSISTENT, align 8
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %13, align 4
  %206 = load i64, i64* @D_UNKNOWN, align 8
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %14, align 4
  %208 = bitcast %union.drbd_state* %7 to i64*
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  switch i32 %210, label %266 [
    i32 131, label %211
    i32 144, label %211
    i32 140, label %211
    i32 128, label %211
    i32 151, label %211
    i32 134, label %220
    i32 133, label %220
    i32 149, label %229
    i32 132, label %238
    i32 145, label %238
    i32 141, label %238
    i32 152, label %238
    i32 138, label %247
    i32 139, label %256
    i32 142, label %265
    i32 148, label %265
    i32 135, label %265
    i32 136, label %265
    i32 150, label %265
    i32 146, label %265
    i32 143, label %265
    i32 137, label %265
    i32 130, label %265
    i32 129, label %265
    i32 147, label %265
  ]

211:                                              ; preds = %199, %199, %199, %199, %199
  %212 = load i64, i64* @D_INCONSISTENT, align 8
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %11, align 4
  %214 = load i64, i64* @D_OUTDATED, align 8
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %12, align 4
  %216 = load i64, i64* @D_UP_TO_DATE, align 8
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %13, align 4
  %218 = load i64, i64* @D_UP_TO_DATE, align 8
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %14, align 4
  br label %266

220:                                              ; preds = %199, %199
  %221 = load i64, i64* @D_UP_TO_DATE, align 8
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %11, align 4
  %223 = load i64, i64* @D_UP_TO_DATE, align 8
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %12, align 4
  %225 = load i64, i64* @D_UP_TO_DATE, align 8
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %13, align 4
  %227 = load i64, i64* @D_UP_TO_DATE, align 8
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %14, align 4
  br label %266

229:                                              ; preds = %199
  %230 = load i64, i64* @D_DISKLESS, align 8
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %11, align 4
  %232 = load i64, i64* @D_UP_TO_DATE, align 8
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %12, align 4
  %234 = load i64, i64* @D_DISKLESS, align 8
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %13, align 4
  %236 = load i64, i64* @D_UP_TO_DATE, align 8
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %14, align 4
  br label %266

238:                                              ; preds = %199, %199, %199, %199
  %239 = load i64, i64* @D_UP_TO_DATE, align 8
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %11, align 4
  %241 = load i64, i64* @D_UP_TO_DATE, align 8
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %12, align 4
  %243 = load i64, i64* @D_INCONSISTENT, align 8
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %13, align 4
  %245 = load i64, i64* @D_CONSISTENT, align 8
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %14, align 4
  br label %266

247:                                              ; preds = %199
  %248 = load i64, i64* @D_INCONSISTENT, align 8
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %11, align 4
  %250 = load i64, i64* @D_INCONSISTENT, align 8
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %12, align 4
  %252 = load i64, i64* @D_UP_TO_DATE, align 8
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %13, align 4
  %254 = load i64, i64* @D_UP_TO_DATE, align 8
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %14, align 4
  br label %266

256:                                              ; preds = %199
  %257 = load i64, i64* @D_UP_TO_DATE, align 8
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %11, align 4
  %259 = load i64, i64* @D_UP_TO_DATE, align 8
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %12, align 4
  %261 = load i64, i64* @D_INCONSISTENT, align 8
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %13, align 4
  %263 = load i64, i64* @D_INCONSISTENT, align 8
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %14, align 4
  br label %266

265:                                              ; preds = %199, %199, %199, %199, %199, %199, %199, %199, %199, %199, %199
  br label %266

266:                                              ; preds = %199, %265, %256, %247, %238, %229, %220, %211
  %267 = bitcast %union.drbd_state* %7 to i64*
  %268 = load i64, i64* %267, align 8
  %269 = load i32, i32* %12, align 4
  %270 = zext i32 %269 to i64
  %271 = icmp sgt i64 %268, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %266
  %273 = load i32, i32* %12, align 4
  %274 = zext i32 %273 to i64
  %275 = bitcast %union.drbd_state* %7 to i64*
  store i64 %274, i64* %275, align 8
  br label %276

276:                                              ; preds = %272, %266
  %277 = bitcast %union.drbd_state* %7 to i64*
  %278 = load i64, i64* %277, align 8
  %279 = load i32, i32* %11, align 4
  %280 = zext i32 %279 to i64
  %281 = icmp slt i64 %278, %280
  br i1 %281, label %282, label %292

282:                                              ; preds = %276
  %283 = load i32*, i32** %9, align 8
  %284 = icmp ne i32* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = load i32, i32* @IMPLICITLY_UPGRADED_DISK, align 4
  %287 = load i32*, i32** %9, align 8
  store i32 %286, i32* %287, align 4
  br label %288

288:                                              ; preds = %285, %282
  %289 = load i32, i32* %11, align 4
  %290 = zext i32 %289 to i64
  %291 = bitcast %union.drbd_state* %7 to i64*
  store i64 %290, i64* %291, align 8
  br label %292

292:                                              ; preds = %288, %276
  %293 = bitcast %union.drbd_state* %7 to i64*
  %294 = load i64, i64* %293, align 8
  %295 = load i32, i32* %14, align 4
  %296 = zext i32 %295 to i64
  %297 = icmp sgt i64 %294, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %292
  %299 = load i32, i32* %14, align 4
  %300 = zext i32 %299 to i64
  %301 = bitcast %union.drbd_state* %7 to i64*
  store i64 %300, i64* %301, align 8
  br label %302

302:                                              ; preds = %298, %292
  %303 = bitcast %union.drbd_state* %7 to i64*
  %304 = load i64, i64* %303, align 8
  %305 = load i32, i32* %13, align 4
  %306 = zext i32 %305 to i64
  %307 = icmp slt i64 %304, %306
  br i1 %307, label %308, label %318

308:                                              ; preds = %302
  %309 = load i32*, i32** %9, align 8
  %310 = icmp ne i32* %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = load i32, i32* @IMPLICITLY_UPGRADED_PDSK, align 4
  %313 = load i32*, i32** %9, align 8
  store i32 %312, i32* %313, align 4
  br label %314

314:                                              ; preds = %311, %308
  %315 = load i32, i32* %13, align 4
  %316 = zext i32 %315 to i64
  %317 = bitcast %union.drbd_state* %7 to i64*
  store i64 %316, i64* %317, align 8
  br label %318

318:                                              ; preds = %314, %302
  %319 = load i32, i32* %10, align 4
  %320 = load i32, i32* @FP_STONITH, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %352

322:                                              ; preds = %318
  %323 = bitcast %union.drbd_state* %7 to i64*
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @R_PRIMARY, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %352

327:                                              ; preds = %322
  %328 = bitcast %union.drbd_state* %7 to i64*
  %329 = load i64, i64* %328, align 8
  %330 = icmp slt i64 %329, 149
  br i1 %330, label %331, label %352

331:                                              ; preds = %327
  %332 = bitcast %union.drbd_state* %7 to i64*
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @D_OUTDATED, align 8
  %335 = icmp sgt i64 %333, %334
  br i1 %335, label %336, label %352

336:                                              ; preds = %331
  %337 = bitcast %union.drbd_state* %6 to i64*
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @R_PRIMARY, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %350

341:                                              ; preds = %336
  %342 = bitcast %union.drbd_state* %6 to i64*
  %343 = load i64, i64* %342, align 8
  %344 = icmp slt i64 %343, 149
  br i1 %344, label %345, label %350

345:                                              ; preds = %341
  %346 = bitcast %union.drbd_state* %6 to i64*
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @D_OUTDATED, align 8
  %349 = icmp sgt i64 %347, %348
  br i1 %349, label %352, label %350

350:                                              ; preds = %345, %341, %336
  %351 = bitcast %union.drbd_state* %7 to i32*
  store i32 1, i32* %351, align 8
  br label %352

352:                                              ; preds = %350, %345, %331, %327, %322, %318
  %353 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %354 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %353, i32 0, i32 1
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @OND_SUSPEND_IO, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %393

361:                                              ; preds = %352
  %362 = bitcast %union.drbd_state* %7 to i64*
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @R_PRIMARY, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %393

366:                                              ; preds = %361
  %367 = bitcast %union.drbd_state* %7 to i64*
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @D_UP_TO_DATE, align 8
  %370 = icmp slt i64 %368, %369
  br i1 %370, label %371, label %393

371:                                              ; preds = %366
  %372 = bitcast %union.drbd_state* %7 to i64*
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @D_UP_TO_DATE, align 8
  %375 = icmp slt i64 %373, %374
  br i1 %375, label %376, label %393

376:                                              ; preds = %371
  %377 = bitcast %union.drbd_state* %6 to i64*
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @R_PRIMARY, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %381, label %391

381:                                              ; preds = %376
  %382 = bitcast %union.drbd_state* %6 to i64*
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @D_UP_TO_DATE, align 8
  %385 = icmp slt i64 %383, %384
  br i1 %385, label %386, label %391

386:                                              ; preds = %381
  %387 = bitcast %union.drbd_state* %6 to i64*
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* @D_UP_TO_DATE, align 8
  %390 = icmp slt i64 %388, %389
  br i1 %390, label %393, label %391

391:                                              ; preds = %386, %381, %376
  %392 = bitcast %union.drbd_state* %7 to i32*
  store i32 1, i32* %392, align 8
  br label %393

393:                                              ; preds = %391, %386, %371, %366, %361, %352
  %394 = bitcast %union.drbd_state* %7 to i64*
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %405, label %397

397:                                              ; preds = %393
  %398 = bitcast %union.drbd_state* %7 to i64*
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %405, label %401

401:                                              ; preds = %397
  %402 = bitcast %union.drbd_state* %7 to i64*
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %418

405:                                              ; preds = %401, %397, %393
  %406 = bitcast %union.drbd_state* %7 to i64*
  %407 = load i64, i64* %406, align 8
  %408 = icmp eq i64 %407, 139
  br i1 %408, label %409, label %411

409:                                              ; preds = %405
  %410 = bitcast %union.drbd_state* %7 to i64*
  store i64 145, i64* %410, align 8
  br label %411

411:                                              ; preds = %409, %405
  %412 = bitcast %union.drbd_state* %7 to i64*
  %413 = load i64, i64* %412, align 8
  %414 = icmp eq i64 %413, 138
  br i1 %414, label %415, label %417

415:                                              ; preds = %411
  %416 = bitcast %union.drbd_state* %7 to i64*
  store i64 144, i64* %416, align 8
  br label %417

417:                                              ; preds = %415, %411
  br label %431

418:                                              ; preds = %401
  %419 = bitcast %union.drbd_state* %7 to i64*
  %420 = load i64, i64* %419, align 8
  %421 = icmp eq i64 %420, 145
  br i1 %421, label %422, label %424

422:                                              ; preds = %418
  %423 = bitcast %union.drbd_state* %7 to i64*
  store i64 139, i64* %423, align 8
  br label %424

424:                                              ; preds = %422, %418
  %425 = bitcast %union.drbd_state* %7 to i64*
  %426 = load i64, i64* %425, align 8
  %427 = icmp eq i64 %426, 144
  br i1 %427, label %428, label %430

428:                                              ; preds = %424
  %429 = bitcast %union.drbd_state* %7 to i64*
  store i64 138, i64* %429, align 8
  br label %430

430:                                              ; preds = %428, %424
  br label %431

431:                                              ; preds = %430, %417
  %432 = bitcast %union.drbd_state* %5 to i8*
  %433 = bitcast %union.drbd_state* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %432, i8* align 8 %433, i64 8, i1 false)
  %434 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  ret i64 %435
}

declare dso_local i64 @get_ldev(%struct.drbd_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_12__* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i64 @get_ldev_if_state(%struct.drbd_device*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
