; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_send_and_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_send_and_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32*, i32*, %struct.drbd_resource* }
%struct.drbd_resource = type { i32 }
%struct.drbd_request = type { %struct.TYPE_5__, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.bio_and_error = type { i64, i32* }
%struct.drbd_plug_cb = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@WRITE = common dso_local global i32 0, align 4
@RQ_POSTPONED = common dso_local global i32 0, align 4
@TO_BE_SENT = common dso_local global i32 0, align 4
@QUEUE_FOR_NET_READ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TO_BE_SUBMITTED = common dso_local global i32 0, align 4
@drbd_ratelimit_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"IO ERROR: neither local nor remote data, sector %llu+%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*, %struct.drbd_request*)* @drbd_send_and_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_send_and_submit(%struct.drbd_device* %0, %struct.drbd_request* %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %struct.drbd_request*, align 8
  %5 = alloca %struct.drbd_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio_and_error, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drbd_plug_cb*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  store %struct.drbd_request* %1, %struct.drbd_request** %4, align 8
  %11 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %12 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %11, i32 0, i32 2
  %13 = load %struct.drbd_resource*, %struct.drbd_resource** %12, align 8
  store %struct.drbd_resource* %13, %struct.drbd_resource** %5, align 8
  %14 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %15 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @bio_data_dir(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = bitcast %struct.bio_and_error* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.drbd_resource*, %struct.drbd_resource** %5, align 8
  %20 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @WRITE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %27 = call i32 @complete_conflicting_writes(%struct.drbd_request* %26)
  %28 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %29 = call i32 @maybe_pull_ahead(%struct.drbd_device* %28)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %32 = call i64 @drbd_suspended(%struct.drbd_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load i32, i32* @RQ_POSTPONED, align 4
  %36 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %37 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %41 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %46 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @bio_put(i32* %47)
  %49 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %50 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %49, i32 0, i32 3
  store i32* null, i32** %50, align 8
  %51 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %52 = call i32 @put_ldev(%struct.drbd_device* %51)
  br label %53

53:                                               ; preds = %44, %34
  br label %226

54:                                               ; preds = %30
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @WRITE, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %60 = call i32 @do_remote_read(%struct.drbd_request* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %64 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %208

68:                                               ; preds = %62, %58
  br label %69

69:                                               ; preds = %68, %54
  %70 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %71 = call %struct.TYPE_6__* @first_peer_device(%struct.drbd_device* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = call i32 @atomic_read(i32* %74)
  %76 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %77 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %79 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i64 @likely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %69
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @WRITE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %92 = call %struct.TYPE_6__* @first_peer_device(%struct.drbd_device* %91)
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %90, %86
  %99 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %100 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %99, i32 0, i32 5
  %101 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %102 = call %struct.TYPE_6__* @first_peer_device(%struct.drbd_device* %101)
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = call i32 @list_add_tail(i32* %100, i32* %105)
  br label %107

107:                                              ; preds = %98, %69
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @WRITE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %135

111:                                              ; preds = %107
  %112 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %113 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %118 = call i32 @may_do_writes(%struct.drbd_device* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %116
  %121 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %122 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @bio_put(i32* %123)
  %125 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %126 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %125, i32 0, i32 3
  store i32* null, i32** %126, align 8
  %127 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %128 = call i32 @put_ldev(%struct.drbd_device* %127)
  br label %208

129:                                              ; preds = %116, %111
  %130 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %131 = call i32 @drbd_process_write_request(%struct.drbd_request* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  store i32 1, i32* %8, align 4
  br label %134

134:                                              ; preds = %133, %129
  br label %149

135:                                              ; preds = %107
  %136 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %137 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %142 = load i32, i32* @TO_BE_SENT, align 4
  %143 = call i32 @_req_mod(%struct.drbd_request* %141, i32 %142)
  %144 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %145 = load i32, i32* @QUEUE_FOR_NET_READ, align 4
  %146 = call i32 @_req_mod(%struct.drbd_request* %144, i32 %145)
  br label %148

147:                                              ; preds = %135
  store i32 1, i32* %8, align 4
  br label %148

148:                                              ; preds = %147, %140
  br label %149

149:                                              ; preds = %148, %134
  %150 = load i32, i32* %8, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = load %struct.drbd_resource*, %struct.drbd_resource** %5, align 8
  %154 = call %struct.drbd_plug_cb* @drbd_check_plugged(%struct.drbd_resource* %153)
  store %struct.drbd_plug_cb* %154, %struct.drbd_plug_cb** %10, align 8
  %155 = load %struct.drbd_plug_cb*, %struct.drbd_plug_cb** %10, align 8
  %156 = icmp ne %struct.drbd_plug_cb* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load %struct.drbd_plug_cb*, %struct.drbd_plug_cb** %10, align 8
  %159 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %160 = call i32 @drbd_update_plug(%struct.drbd_plug_cb* %158, %struct.drbd_request* %159)
  br label %161

161:                                              ; preds = %157, %152
  br label %162

162:                                              ; preds = %161, %149
  %163 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %164 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %163, i32 0, i32 4
  %165 = call i64 @list_empty(i32* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %162
  %168 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %169 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %168, i32 0, i32 4
  %170 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %171 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @WRITE, align 4
  %175 = icmp eq i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %172, i64 %177
  %179 = call i32 @list_add_tail(i32* %169, i32* %178)
  br label %180

180:                                              ; preds = %167, %162
  %181 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %182 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %204

185:                                              ; preds = %180
  %186 = load i32, i32* @jiffies, align 4
  %187 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %188 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %190 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %189, i32 0, i32 1
  %191 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %192 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* @WRITE, align 4
  %196 = icmp eq i32 %194, %195
  %197 = zext i1 %196 to i32
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %193, i64 %198
  %200 = call i32 @list_add_tail(i32* %190, i32* %199)
  %201 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %202 = load i32, i32* @TO_BE_SUBMITTED, align 4
  %203 = call i32 @_req_mod(%struct.drbd_request* %201, i32 %202)
  store i32 1, i32* %9, align 4
  br label %225

204:                                              ; preds = %180
  %205 = load i32, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %224

207:                                              ; preds = %204
  br label %208

208:                                              ; preds = %207, %120, %67
  %209 = call i64 @__ratelimit(i32* @drbd_ratelimit_state)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %208
  %212 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %213 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %214 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %218 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = ashr i32 %220, 9
  %222 = call i32 @drbd_err(%struct.drbd_device* %212, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %216, i32 %221)
  br label %223

223:                                              ; preds = %211, %208
  br label %224

224:                                              ; preds = %223, %204
  br label %225

225:                                              ; preds = %224, %185
  br label %226

226:                                              ; preds = %225, %53
  %227 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %228 = call i32 @drbd_req_put_completion_ref(%struct.drbd_request* %227, %struct.bio_and_error* %7, i32 1)
  %229 = load %struct.drbd_resource*, %struct.drbd_resource** %5, align 8
  %230 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %229, i32 0, i32 0
  %231 = call i32 @spin_unlock_irq(i32* %230)
  %232 = load i32, i32* %9, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %226
  %235 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %236 = call i32 @drbd_submit_req_private_bio(%struct.drbd_request* %235)
  br label %237

237:                                              ; preds = %234, %226
  %238 = getelementptr inbounds %struct.bio_and_error, %struct.bio_and_error* %7, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %243 = call i32 @complete_master_bio(%struct.drbd_device* %242, %struct.bio_and_error* %7)
  br label %244

244:                                              ; preds = %241, %237
  ret void
}

declare dso_local i32 @bio_data_dir(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @complete_conflicting_writes(%struct.drbd_request*) #1

declare dso_local i32 @maybe_pull_ahead(%struct.drbd_device*) #1

declare dso_local i64 @drbd_suspended(%struct.drbd_device*) #1

declare dso_local i32 @bio_put(i32*) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i32 @do_remote_read(%struct.drbd_request*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_6__* @first_peer_device(%struct.drbd_device*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @may_do_writes(%struct.drbd_device*) #1

declare dso_local i32 @drbd_process_write_request(%struct.drbd_request*) #1

declare dso_local i32 @_req_mod(%struct.drbd_request*, i32) #1

declare dso_local %struct.drbd_plug_cb* @drbd_check_plugged(%struct.drbd_resource*) #1

declare dso_local i32 @drbd_update_plug(%struct.drbd_plug_cb*, %struct.drbd_request*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @__ratelimit(i32*) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i64, i32) #1

declare dso_local i32 @drbd_req_put_completion_ref(%struct.drbd_request*, %struct.bio_and_error*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @drbd_submit_req_private_bio(%struct.drbd_request*) #1

declare dso_local i32 @complete_master_bio(%struct.drbd_device*, %struct.bio_and_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
