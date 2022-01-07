; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_run.c_spufs_run_spu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_run.c_spufs_run_spu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { i32, i32, %struct.TYPE_2__, i32, %struct.spu*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.spu = type { i32 }

@ERESTARTSYS = common dso_local global i64 0, align 8
@SPU_SCHED_NOTIFY_ACTIVE = common dso_local global i32 0, align 4
@SPU_STATUS_STOPPED_BY_STOP = common dso_local global i32 0, align 4
@SPU_UTIL_SYSTEM = common dso_local global i32 0, align 4
@SPU_STOP_STATUS_SHIFT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SPU_STATUS_STOPPED_BY_HALT = common dso_local global i32 0, align 4
@SPU_STATUS_SINGLE_STEP = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spufs_run_spu(%struct.spu_context* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.spu_context*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.spu*, align 8
  %10 = alloca i32, align 4
  store %struct.spu_context* %0, %struct.spu_context** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %12 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %11, i32 0, i32 1
  %13 = call i64 @mutex_lock_interruptible(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i64, i64* @ERESTARTSYS, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %4, align 8
  br label %233

18:                                               ; preds = %3
  %19 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %20 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %22 = call i32 @spu_acquire(%struct.spu_context* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %227

26:                                               ; preds = %18
  %27 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %28 = call i32 @spu_enable_spu(%struct.spu_context* %27)
  %29 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %30 = call i32 @spu_update_sched_info(%struct.spu_context* %29)
  %31 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @spu_run_init(%struct.spu_context* %31, i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %38 = call i32 @spu_release(%struct.spu_context* %37)
  br label %222

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %132, %39
  %41 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %42 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %45 = call i32 @spu_stopped(%struct.spu_context* %44, i32* %10)
  %46 = call i32 @spufs_wait(i32 %43, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %52 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %51, i32 0, i32 5
  %53 = call i32 @mutex_lock(i32* %52)
  br label %134

54:                                               ; preds = %40
  %55 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %56 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %55, i32 0, i32 4
  %57 = load %struct.spu*, %struct.spu** %56, align 8
  store %struct.spu* %57, %struct.spu** %9, align 8
  %58 = load i32, i32* @SPU_SCHED_NOTIFY_ACTIVE, align 4
  %59 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %60 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %59, i32 0, i32 3
  %61 = call i32 @test_and_clear_bit(i32 %58, i32* %60)
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %54
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @SPU_STATUS_STOPPED_BY_STOP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load %struct.spu*, %struct.spu** %9, align 8
  %71 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %72 = call i32 @spu_switch_notify(%struct.spu* %70, %struct.spu_context* %71)
  br label %119

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %54
  %75 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %76 = load i32, i32* @SPU_UTIL_SYSTEM, align 4
  %77 = call i32 @spuctx_switch_state(%struct.spu_context* %75, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @SPU_STATUS_STOPPED_BY_STOP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @SPU_STOP_STATUS_SHIFT, align 4
  %85 = ashr i32 %83, %84
  %86 = icmp eq i32 %85, 8452
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %89 = call i32 @spu_process_callback(%struct.spu_context* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %134

93:                                               ; preds = %87
  %94 = load i32, i32* @SPU_STATUS_STOPPED_BY_STOP, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %93, %82, %74
  %99 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %100 = call i32 @spufs_handle_class1(%struct.spu_context* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %134

104:                                              ; preds = %98
  %105 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %106 = call i32 @spufs_handle_class0(%struct.spu_context* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %134

110:                                              ; preds = %104
  %111 = load i32, i32* @current, align 4
  %112 = call i64 @signal_pending(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i64, i64* @ERESTARTSYS, align 8
  %116 = sub nsw i64 0, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %114, %110
  br label %119

119:                                              ; preds = %118, %69
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @SPU_STATUS_STOPPED_BY_STOP, align 4
  %125 = load i32, i32* @SPU_STATUS_STOPPED_BY_HALT, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @SPU_STATUS_SINGLE_STEP, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %123, %128
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  br label %132

132:                                              ; preds = %122, %119
  %133 = phi i1 [ false, %119 ], [ %131, %122 ]
  br i1 %133, label %40, label %134

134:                                              ; preds = %132, %109, %103, %92, %50
  %135 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %136 = call i32 @spu_disable_spu(%struct.spu_context* %135)
  %137 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @spu_run_fini(%struct.spu_context* %137, i32* %138, i32* %10)
  store i32 %139, i32* %8, align 4
  %140 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %141 = call i32 @spu_yield(%struct.spu_context* %140)
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @SPU_STATUS_STOPPED_BY_STOP, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %134
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @SPU_STOP_STATUS_SHIFT, align 4
  %149 = ashr i32 %147, %148
  %150 = and i32 %149, 16128
  %151 = icmp eq i32 %150, 8448
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %154 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %152, %146, %134
  %159 = load i32, i32* %8, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %187, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* @ERESTARTSYS, align 8
  %165 = sub nsw i64 0, %164
  %166 = icmp eq i64 %163, %165
  br i1 %166, label %167, label %189

167:                                              ; preds = %161
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @SPU_STATUS_STOPPED_BY_HALT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %187, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @SPU_STATUS_SINGLE_STEP, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %187, label %177

177:                                              ; preds = %172
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @SPU_STATUS_STOPPED_BY_STOP, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @SPU_STOP_STATUS_SHIFT, align 4
  %185 = ashr i32 %183, %184
  %186 = icmp ne i32 %185, 8452
  br i1 %186, label %187, label %189

187:                                              ; preds = %182, %172, %167, %158
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %8, align 4
  br label %189

189:                                              ; preds = %187, %182, %177, %161
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @SPU_STATUS_SINGLE_STEP, align 4
  %192 = and i32 %190, %191
  %193 = call i64 @unlikely(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load i64, i64* @ERESTARTSYS, align 8
  %197 = sub nsw i64 0, %196
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %8, align 4
  br label %221

199:                                              ; preds = %189
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* @SPU_STATUS_STOPPED_BY_STOP, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @SPU_STOP_STATUS_SHIFT, align 4
  %207 = ashr i32 %205, %206
  %208 = icmp eq i32 %207, 16383
  br label %209

209:                                              ; preds = %204, %199
  %210 = phi i1 [ false, %199 ], [ %208, %204 ]
  %211 = zext i1 %210 to i32
  %212 = call i64 @unlikely(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = load i32, i32* @SIGTRAP, align 4
  %216 = call i32 @force_sig(i32 %215)
  %217 = load i64, i64* @ERESTARTSYS, align 8
  %218 = sub nsw i64 0, %217
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %8, align 4
  br label %220

220:                                              ; preds = %214, %209
  br label %221

221:                                              ; preds = %220, %195
  br label %222

222:                                              ; preds = %221, %36
  %223 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %224 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32*, i32** %7, align 8
  store i32 %225, i32* %226, align 4
  br label %227

227:                                              ; preds = %222, %25
  %228 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %229 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %228, i32 0, i32 1
  %230 = call i32 @mutex_unlock(i32* %229)
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  store i64 %232, i64* %4, align 8
  br label %233

233:                                              ; preds = %227, %15
  %234 = load i64, i64* %4, align 8
  ret i64 %234
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @spu_acquire(%struct.spu_context*) #1

declare dso_local i32 @spu_enable_spu(%struct.spu_context*) #1

declare dso_local i32 @spu_update_sched_info(%struct.spu_context*) #1

declare dso_local i32 @spu_run_init(%struct.spu_context*, i32*) #1

declare dso_local i32 @spu_release(%struct.spu_context*) #1

declare dso_local i32 @spufs_wait(i32, i32) #1

declare dso_local i32 @spu_stopped(%struct.spu_context*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spu_switch_notify(%struct.spu*, %struct.spu_context*) #1

declare dso_local i32 @spuctx_switch_state(%struct.spu_context*, i32) #1

declare dso_local i32 @spu_process_callback(%struct.spu_context*) #1

declare dso_local i32 @spufs_handle_class1(%struct.spu_context*) #1

declare dso_local i32 @spufs_handle_class0(%struct.spu_context*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @spu_disable_spu(%struct.spu_context*) #1

declare dso_local i32 @spu_run_fini(%struct.spu_context*, i32*, i32*) #1

declare dso_local i32 @spu_yield(%struct.spu_context*) #1

declare dso_local i32 @force_sig(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
