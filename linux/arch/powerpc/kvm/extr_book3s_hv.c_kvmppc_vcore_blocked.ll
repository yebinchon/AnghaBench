; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_vcore_blocked.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_vcore_blocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcore = type { i64, %struct.TYPE_4__*, i8*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@VCORE_POLLING = common dso_local global i8* null, align 8
@VCORE_INACTIVE = common dso_local global i8* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@VCORE_SLEEPING = common dso_local global i8* null, align 8
@halt_poll_ns = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_vcore*)* @kvmppc_vcore_blocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_vcore_blocked(%struct.kvmppc_vcore* %0) #0 {
  %2 = alloca %struct.kvmppc_vcore*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.kvmppc_vcore* %0, %struct.kvmppc_vcore** %2, align 8
  store i32 1, i32* %6, align 4
  %9 = load i32, i32* @wait, align 4
  %10 = call i32 @DECLARE_SWAITQUEUE(i32 %9)
  %11 = call i32 (...) @ktime_get()
  store i32 %11, i32* %4, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %13 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %19 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ktime_add_ns(i32 %17, i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %23 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i8*, i8** @VCORE_POLLING, align 8
  %30 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %31 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %33 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %32, i32 0, i32 3
  %34 = call i32 @spin_unlock(i32* %33)
  br label %35

35:                                               ; preds = %50, %16
  %36 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %37 = call i64 @kvmppc_vcore_check_block(%struct.kvmppc_vcore* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %52

40:                                               ; preds = %35
  %41 = call i32 (...) @ktime_get()
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40
  %43 = call i64 (...) @single_task_running()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @ktime_before(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %45, %42
  %51 = phi i1 [ false, %42 ], [ %49, %45 ]
  br i1 %51, label %35, label %52

52:                                               ; preds = %50, %39
  %53 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %54 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %53, i32 0, i32 3
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load i8*, i8** @VCORE_INACTIVE, align 8
  %57 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %58 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %52
  %62 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %63 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %125

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %1
  %71 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %72 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %71, i32 0, i32 4
  %73 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %74 = call i32 @prepare_to_swait_exclusive(i32* %72, i32* @wait, i32 %73)
  %75 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %76 = call i64 @kvmppc_vcore_check_block(%struct.kvmppc_vcore* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %70
  %79 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %80 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %79, i32 0, i32 4
  %81 = call i32 @finish_swait(i32* %80, i32* @wait)
  store i32 0, i32* %6, align 4
  %82 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %83 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %78
  %87 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %88 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %86, %78
  br label %125

95:                                               ; preds = %70
  %96 = call i32 (...) @ktime_get()
  store i32 %96, i32* %5, align 4
  %97 = load i8*, i8** @VCORE_SLEEPING, align 8
  %98 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %99 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %101 = call i32 @trace_kvmppc_vcore_blocked(%struct.kvmppc_vcore* %100, i32 0)
  %102 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %103 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %102, i32 0, i32 3
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = call i32 (...) @schedule()
  %106 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %107 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %106, i32 0, i32 4
  %108 = call i32 @finish_swait(i32* %107, i32* @wait)
  %109 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %110 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %109, i32 0, i32 3
  %111 = call i32 @spin_lock(i32* %110)
  %112 = load i8*, i8** @VCORE_INACTIVE, align 8
  %113 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %114 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %116 = call i32 @trace_kvmppc_vcore_blocked(%struct.kvmppc_vcore* %115, i32 1)
  %117 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %118 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = call i32 (...) @ktime_get()
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %95, %94, %61
  %126 = load i32, i32* %3, align 4
  %127 = call i64 @ktime_to_ns(i32 %126)
  %128 = load i32, i32* %4, align 4
  %129 = call i64 @ktime_to_ns(i32 %128)
  %130 = sub nsw i64 %127, %129
  store i64 %130, i64* %7, align 8
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %168

133:                                              ; preds = %125
  %134 = load i32, i32* %3, align 4
  %135 = call i64 @ktime_to_ns(i32 %134)
  %136 = load i32, i32* %5, align 4
  %137 = call i64 @ktime_to_ns(i32 %136)
  %138 = sub nsw i64 %135, %137
  %139 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %140 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %138
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 4
  %148 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %149 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %133
  %153 = load i32, i32* %5, align 4
  %154 = call i64 @ktime_to_ns(i32 %153)
  %155 = load i32, i32* %4, align 4
  %156 = call i64 @ktime_to_ns(i32 %155)
  %157 = sub nsw i64 %154, %156
  %158 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %159 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %158, i32 0, i32 1
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %157
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %162, align 4
  br label %167

167:                                              ; preds = %152, %133
  br label %189

168:                                              ; preds = %125
  %169 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %170 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %188

173:                                              ; preds = %168
  %174 = load i32, i32* %3, align 4
  %175 = call i64 @ktime_to_ns(i32 %174)
  %176 = load i32, i32* %4, align 4
  %177 = call i64 @ktime_to_ns(i32 %176)
  %178 = sub nsw i64 %175, %177
  %179 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %180 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %179, i32 0, i32 1
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %178
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %183, align 4
  br label %188

188:                                              ; preds = %173, %168
  br label %189

189:                                              ; preds = %188, %167
  %190 = load i64, i64* @halt_poll_ns, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %237

192:                                              ; preds = %189
  %193 = load i64, i64* %7, align 8
  %194 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %195 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp sle i64 %193, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  br label %226

199:                                              ; preds = %192
  %200 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %201 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %199
  %205 = load i64, i64* %7, align 8
  %206 = load i64, i64* @halt_poll_ns, align 8
  %207 = icmp sgt i64 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %210 = call i32 @shrink_halt_poll_ns(%struct.kvmppc_vcore* %209)
  br label %225

211:                                              ; preds = %204, %199
  %212 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %213 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @halt_poll_ns, align 8
  %216 = icmp slt i64 %214, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %211
  %218 = load i64, i64* %7, align 8
  %219 = load i64, i64* @halt_poll_ns, align 8
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %223 = call i32 @grow_halt_poll_ns(%struct.kvmppc_vcore* %222)
  br label %224

224:                                              ; preds = %221, %217, %211
  br label %225

225:                                              ; preds = %224, %208
  br label %226

226:                                              ; preds = %225, %198
  %227 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %228 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @halt_poll_ns, align 8
  %231 = icmp sgt i64 %229, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %226
  %233 = load i64, i64* @halt_poll_ns, align 8
  %234 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %235 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  br label %236

236:                                              ; preds = %232, %226
  br label %240

237:                                              ; preds = %189
  %238 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %239 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %238, i32 0, i32 0
  store i64 0, i64* %239, align 8
  br label %240

240:                                              ; preds = %237, %236
  %241 = load i32, i32* %6, align 4
  %242 = load i64, i64* %7, align 8
  %243 = call i32 @trace_kvmppc_vcore_wakeup(i32 %241, i64 %242)
  ret void
}

declare dso_local i32 @DECLARE_SWAITQUEUE(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_add_ns(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @kvmppc_vcore_check_block(%struct.kvmppc_vcore*) #1

declare dso_local i64 @single_task_running(...) #1

declare dso_local i64 @ktime_before(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @prepare_to_swait_exclusive(i32*, i32*, i32) #1

declare dso_local i32 @finish_swait(i32*, i32*) #1

declare dso_local i32 @trace_kvmppc_vcore_blocked(%struct.kvmppc_vcore*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @shrink_halt_poll_ns(%struct.kvmppc_vcore*) #1

declare dso_local i32 @grow_halt_poll_ns(%struct.kvmppc_vcore*) #1

declare dso_local i32 @trace_kvmppc_vcore_wakeup(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
