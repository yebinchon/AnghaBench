; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_service_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_service_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, i32, i32, %struct.mtip_port*, i32, %struct.TYPE_2__*, i32 }
%struct.mtip_port = type { i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@MTIP_PF_SVC_THD_STOP_BIT = common dso_local global i64 0, align 8
@MTIP_PF_SVC_THD_ACTIVE_BIT = common dso_local global i64 0, align 8
@MTIP_PF_SVC_THD_WORK = common dso_local global i32 0, align 4
@MTIP_DDF_REMOVE_PENDING_BIT = common dso_local global i64 0, align 8
@MTIP_PF_EH_ACTIVE_BIT = common dso_local global i64 0, align 8
@MTIP_PF_TO_ACTIVE_BIT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Completion workers still active!\00", align 1
@mtip_queue_cmd = common dso_local global i32 0, align 4
@MTIP_PF_ISSUE_CMDS_BIT = common dso_local global i64 0, align 8
@mtip_abort_cmd = common dso_local global i32 0, align 4
@MTIP_PF_REBUILD_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mtip_service_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_service_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtip_port*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.driver_data*
  store %struct.driver_data* %11, %struct.driver_data** %3, align 8
  %12 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %13 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %17 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %16, i32 0, i32 3
  %18 = load %struct.mtip_port*, %struct.mtip_port** %17, align 8
  store %struct.mtip_port* %18, %struct.mtip_port** %9, align 8
  br label %19

19:                                               ; preds = %1, %243
  %20 = call i64 (...) @kthread_should_stop()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @MTIP_PF_SVC_THD_STOP_BIT, align 8
  %24 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %25 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %24, i32 0, i32 0
  %26 = call i32 @test_bit(i64 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %19
  br label %244

29:                                               ; preds = %22
  %30 = load i64, i64* @MTIP_PF_SVC_THD_ACTIVE_BIT, align 8
  %31 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %32 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %31, i32 0, i32 0
  %33 = call i32 @clear_bit(i64 %30, i32* %32)
  %34 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %35 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %38 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %43 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MTIP_PF_SVC_THD_WORK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %41, %29
  %49 = phi i1 [ false, %29 ], [ %47, %41 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @wait_event_interruptible(i32 %36, i32 %50)
  %52 = call i64 (...) @kthread_should_stop()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i64, i64* @MTIP_PF_SVC_THD_STOP_BIT, align 8
  %56 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %57 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %56, i32 0, i32 0
  %58 = call i32 @test_bit(i64 %55, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %48
  br label %244

61:                                               ; preds = %54
  %62 = load i64, i64* @MTIP_DDF_REMOVE_PENDING_BIT, align 8
  %63 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %64 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %63, i32 0, i32 1
  %65 = call i32 @test_bit(i64 %62, i32* %64)
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %244

69:                                               ; preds = %61
  %70 = load i64, i64* @MTIP_PF_SVC_THD_ACTIVE_BIT, align 8
  %71 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %72 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %71, i32 0, i32 0
  %73 = call i32 @set_bit(i64 %70, i32* %72)
  br label %74

74:                                               ; preds = %93, %69
  %75 = load i64, i64* @MTIP_PF_EH_ACTIVE_BIT, align 8
  %76 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %77 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %76, i32 0, i32 0
  %78 = call i32 @test_bit(i64 %75, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %82 = call i32 @mtip_handle_tfe(%struct.driver_data* %81)
  %83 = load i64, i64* @MTIP_PF_EH_ACTIVE_BIT, align 8
  %84 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %85 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %84, i32 0, i32 0
  %86 = call i32 @clear_bit(i64 %83, i32* %85)
  br label %87

87:                                               ; preds = %80, %74
  %88 = load i64, i64* @MTIP_PF_EH_ACTIVE_BIT, align 8
  %89 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %90 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %89, i32 0, i32 0
  %91 = call i32 @test_bit(i64 %88, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %74

94:                                               ; preds = %87
  %95 = load i64, i64* @MTIP_PF_TO_ACTIVE_BIT, align 8
  %96 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %97 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %96, i32 0, i32 0
  %98 = call i32 @test_bit(i64 %95, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %165

100:                                              ; preds = %94
  %101 = load i64, i64* @jiffies, align 8
  %102 = call i64 @msecs_to_jiffies(i32 5000)
  %103 = add i64 %101, %102
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %116, %100
  %105 = call i32 @mdelay(i32 100)
  br label %106

106:                                              ; preds = %104
  %107 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %108 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %107, i32 0, i32 6
  %109 = call i64 @atomic_read(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i64, i64* @jiffies, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i64 @time_before(i64 %112, i64 %113)
  %115 = icmp ne i64 %114, 0
  br label %116

116:                                              ; preds = %111, %106
  %117 = phi i1 [ false, %106 ], [ %115, %111 ]
  br i1 %117, label %104, label %118

118:                                              ; preds = %116
  %119 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %120 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %119, i32 0, i32 6
  %121 = call i64 @atomic_read(i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %125 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %124, i32 0, i32 5
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = call i32 @dev_warn(i32* %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %129

129:                                              ; preds = %123, %118
  %130 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %131 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @blk_mq_quiesce_queue(i32 %132)
  %134 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %135 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %134, i32 0, i32 4
  %136 = load i32, i32* @mtip_queue_cmd, align 4
  %137 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %138 = call i32 @blk_mq_tagset_busy_iter(i32* %135, i32 %136, %struct.driver_data* %137)
  %139 = load i64, i64* @MTIP_PF_ISSUE_CMDS_BIT, align 8
  %140 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %141 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %140, i32 0, i32 3
  %142 = load %struct.mtip_port*, %struct.mtip_port** %141, align 8
  %143 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %142, i32 0, i32 0
  %144 = call i32 @set_bit(i64 %139, i32* %143)
  %145 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %146 = call i64 @mtip_device_reset(%struct.driver_data* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %129
  %149 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %150 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %149, i32 0, i32 4
  %151 = load i32, i32* @mtip_abort_cmd, align 4
  %152 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %153 = call i32 @blk_mq_tagset_busy_iter(i32* %150, i32 %151, %struct.driver_data* %152)
  br label %154

154:                                              ; preds = %148, %129
  %155 = load i64, i64* @MTIP_PF_TO_ACTIVE_BIT, align 8
  %156 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %157 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %156, i32 0, i32 3
  %158 = load %struct.mtip_port*, %struct.mtip_port** %157, align 8
  %159 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %158, i32 0, i32 0
  %160 = call i32 @clear_bit(i64 %155, i32* %159)
  %161 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %162 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @blk_mq_unquiesce_queue(i32 %163)
  br label %165

165:                                              ; preds = %154, %94
  %166 = load i64, i64* @MTIP_PF_ISSUE_CMDS_BIT, align 8
  %167 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %168 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %167, i32 0, i32 0
  %169 = call i32 @test_bit(i64 %166, i32* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %227

171:                                              ; preds = %165
  store i64 1, i64* %4, align 8
  %172 = load i32, i32* %8, align 4
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %174

174:                                              ; preds = %171, %212, %213
  %175 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %176 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load i64, i64* %4, align 8
  %180 = call i64 @find_next_bit(i32* %177, i32 %178, i64 %179)
  store i64 %180, i64* %4, align 8
  %181 = load i64, i64* %6, align 8
  %182 = icmp eq i64 %181, 1
  br i1 %182, label %183, label %194

183:                                              ; preds = %174
  %184 = load i64, i64* %5, align 8
  %185 = load i64, i64* %4, align 8
  %186 = icmp uge i64 %184, %185
  br i1 %186, label %192, label %187

187:                                              ; preds = %183
  %188 = load i64, i64* %4, align 8
  %189 = load i32, i32* %8, align 4
  %190 = zext i32 %189 to i64
  %191 = icmp uge i64 %188, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %187, %183
  br label %222

193:                                              ; preds = %187
  br label %194

194:                                              ; preds = %193, %174
  %195 = load i64, i64* %5, align 8
  %196 = load i32, i32* %8, align 4
  %197 = zext i32 %196 to i64
  %198 = icmp eq i64 %195, %197
  %199 = zext i1 %198 to i32
  %200 = call i64 @unlikely(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %194
  %203 = load i64, i64* %4, align 8
  store i64 %203, i64* %5, align 8
  br label %204

204:                                              ; preds = %202, %194
  %205 = load i64, i64* %4, align 8
  %206 = load i32, i32* %8, align 4
  %207 = zext i32 %206 to i64
  %208 = icmp eq i64 %205, %207
  %209 = zext i1 %208 to i32
  %210 = call i64 @unlikely(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %204
  store i64 1, i64* %4, align 8
  store i64 1, i64* %6, align 8
  br label %174

213:                                              ; preds = %204
  %214 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %215 = load i64, i64* %4, align 8
  %216 = call i32 @mtip_issue_ncq_command(%struct.mtip_port* %214, i64 %215)
  %217 = load i64, i64* %4, align 8
  %218 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %219 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @clear_bit(i64 %217, i32* %220)
  br label %174

222:                                              ; preds = %192
  %223 = load i64, i64* @MTIP_PF_ISSUE_CMDS_BIT, align 8
  %224 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %225 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %224, i32 0, i32 0
  %226 = call i32 @clear_bit(i64 %223, i32* %225)
  br label %227

227:                                              ; preds = %222, %165
  %228 = load i64, i64* @MTIP_PF_REBUILD_BIT, align 8
  %229 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %230 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %229, i32 0, i32 0
  %231 = call i32 @test_bit(i64 %228, i32* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %227
  %234 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %235 = call i64 @mtip_ftl_rebuild_poll(%struct.driver_data* %234)
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %233
  %238 = load i64, i64* @MTIP_PF_REBUILD_BIT, align 8
  %239 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  %240 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %239, i32 0, i32 0
  %241 = call i32 @clear_bit(i64 %238, i32* %240)
  br label %242

242:                                              ; preds = %237, %233
  br label %243

243:                                              ; preds = %242, %227
  br label %19

244:                                              ; preds = %68, %60, %28
  ret i32 0
}

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @test_bit(i64, i32*) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @mtip_handle_tfe(%struct.driver_data*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @blk_mq_quiesce_queue(i32) #1

declare dso_local i32 @blk_mq_tagset_busy_iter(i32*, i32, %struct.driver_data*) #1

declare dso_local i64 @mtip_device_reset(%struct.driver_data*) #1

declare dso_local i32 @blk_mq_unquiesce_queue(i32) #1

declare dso_local i64 @find_next_bit(i32*, i32, i64) #1

declare dso_local i32 @mtip_issue_ncq_command(%struct.mtip_port*, i64) #1

declare dso_local i64 @mtip_ftl_rebuild_poll(%struct.driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
