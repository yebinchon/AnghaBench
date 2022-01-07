; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_ladder.c_ladder_select_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_ladder.c_ladder_select_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.cpuidle_device = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ladder_device = type { %struct.ladder_device_state* }
%struct.ladder_device_state = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i64, i32, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@ladder_devices = common dso_local global i32 0, align 4
@CPUIDLE_FLAG_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*, i32*)* @ladder_select_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ladder_select_state(%struct.cpuidle_driver* %0, %struct.cpuidle_device* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca %struct.cpuidle_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ladder_device*, align 8
  %9 = alloca %struct.ladder_device_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %5, align 8
  store %struct.cpuidle_device* %1, %struct.cpuidle_device** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = call %struct.ladder_device* @this_cpu_ptr(i32* @ladder_devices)
  store %struct.ladder_device* %15, %struct.ladder_device** %8, align 8
  %16 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %17 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %20 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CPUIDLE_FLAG_POLLING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  store i32 %29, i32* %12, align 4
  %30 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %31 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @cpuidle_governor_latency_req(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %3
  %40 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %41 = load %struct.ladder_device*, %struct.ladder_device** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @ladder_do_selection(%struct.cpuidle_device* %40, %struct.ladder_device* %41, i32 %42, i32 0)
  store i32 0, i32* %4, align 4
  br label %244

44:                                               ; preds = %3
  %45 = load %struct.ladder_device*, %struct.ladder_device** %8, align 8
  %46 = getelementptr inbounds %struct.ladder_device, %struct.ladder_device* %45, i32 0, i32 0
  %47 = load %struct.ladder_device_state*, %struct.ladder_device_state** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %47, i64 %49
  store %struct.ladder_device_state* %50, %struct.ladder_device_state** %9, align 8
  %51 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %52 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %55 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %53, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %65 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %138

69:                                               ; preds = %44
  %70 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %71 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %138, label %80

80:                                               ; preds = %69
  %81 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %82 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %81, i32 0, i32 2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %138, label %91

91:                                               ; preds = %80
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.ladder_device_state*, %struct.ladder_device_state** %9, align 8
  %94 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %92, %96
  br i1 %97, label %98, label %138

98:                                               ; preds = %91
  %99 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %100 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %138

110:                                              ; preds = %98
  %111 = load %struct.ladder_device_state*, %struct.ladder_device_state** %9, align 8
  %112 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = load %struct.ladder_device_state*, %struct.ladder_device_state** %9, align 8
  %117 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load %struct.ladder_device_state*, %struct.ladder_device_state** %9, align 8
  %120 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.ladder_device_state*, %struct.ladder_device_state** %9, align 8
  %124 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp sge i64 %122, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %110
  %129 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %130 = load %struct.ladder_device*, %struct.ladder_device** %8, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  %134 = call i32 @ladder_do_selection(%struct.cpuidle_device* %129, %struct.ladder_device* %130, i32 %131, i32 %133)
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %244

137:                                              ; preds = %110
  br label %138

138:                                              ; preds = %137, %98, %91, %80, %69, %44
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %203

142:                                              ; preds = %138
  %143 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %144 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %173, label %152

152:                                              ; preds = %142
  %153 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %154 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %153, i32 0, i32 2
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %152
  %163 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %164 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %163, i32 0, i32 1
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %203

173:                                              ; preds = %162, %152, %142
  %174 = load i32, i32* %11, align 4
  %175 = sub nsw i32 %174, 1
  store i32 %175, i32* %14, align 4
  br label %176

176:                                              ; preds = %193, %173
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %196

180:                                              ; preds = %176
  %181 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %182 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %181, i32 0, i32 1
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %13, align 4
  %190 = icmp sle i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  br label %196

192:                                              ; preds = %180
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %14, align 4
  br label %176

196:                                              ; preds = %191, %176
  %197 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %198 = load %struct.ladder_device*, %struct.ladder_device** %8, align 8
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @ladder_do_selection(%struct.cpuidle_device* %197, %struct.ladder_device* %198, i32 %199, i32 %200)
  %202 = load i32, i32* %14, align 4
  store i32 %202, i32* %4, align 4
  br label %244

203:                                              ; preds = %162, %138
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp sgt i32 %204, %205
  br i1 %206, label %207, label %242

207:                                              ; preds = %203
  %208 = load i32, i32* %10, align 4
  %209 = load %struct.ladder_device_state*, %struct.ladder_device_state** %9, align 8
  %210 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %208, %212
  br i1 %213, label %214, label %242

214:                                              ; preds = %207
  %215 = load %struct.ladder_device_state*, %struct.ladder_device_state** %9, align 8
  %216 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %217, align 8
  %220 = load %struct.ladder_device_state*, %struct.ladder_device_state** %9, align 8
  %221 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  store i64 0, i64* %222, align 8
  %223 = load %struct.ladder_device_state*, %struct.ladder_device_state** %9, align 8
  %224 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.ladder_device_state*, %struct.ladder_device_state** %9, align 8
  %228 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = icmp sge i64 %226, %230
  br i1 %231, label %232, label %241

232:                                              ; preds = %214
  %233 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %234 = load %struct.ladder_device*, %struct.ladder_device** %8, align 8
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %11, align 4
  %237 = sub nsw i32 %236, 1
  %238 = call i32 @ladder_do_selection(%struct.cpuidle_device* %233, %struct.ladder_device* %234, i32 %235, i32 %237)
  %239 = load i32, i32* %11, align 4
  %240 = sub nsw i32 %239, 1
  store i32 %240, i32* %4, align 4
  br label %244

241:                                              ; preds = %214
  br label %242

242:                                              ; preds = %241, %207, %203
  %243 = load i32, i32* %11, align 4
  store i32 %243, i32* %4, align 4
  br label %244

244:                                              ; preds = %242, %232, %196, %128, %39
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local %struct.ladder_device* @this_cpu_ptr(i32*) #1

declare dso_local i32 @cpuidle_governor_latency_req(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ladder_do_selection(%struct.cpuidle_device*, %struct.ladder_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
