; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_teo.c_teo_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_teo.c_teo_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cpuidle_device = type { i64, i32 }
%struct.teo_cpu = type { i64, i64, i32*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@teo_cpus = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@DECAY_SHIFT = common dso_local global i32 0, align 4
@PULSE = common dso_local global i64 0, align 8
@INTERVALS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuidle_driver*, %struct.cpuidle_device*)* @teo_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @teo_update(%struct.cpuidle_driver* %0, %struct.cpuidle_device* %1) #0 {
  %3 = alloca %struct.cpuidle_driver*, align 8
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.teo_cpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %3, align 8
  store %struct.cpuidle_device* %1, %struct.cpuidle_device** %4, align 8
  %15 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %16 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.teo_cpu* @per_cpu_ptr(i32* @teo_cpus, i32 %17)
  store %struct.teo_cpu* %18, %struct.teo_cpu** %5, align 8
  %19 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %20 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ktime_to_us(i64 %21)
  store i32 %22, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %23 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %24 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %27 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @UINT_MAX, align 4
  store i32 %31, i32* %10, align 4
  br label %58

32:                                               ; preds = %2
  %33 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %34 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %37 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %43 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ktime_to_us(i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %32
  %50 = load i32, i32* %11, align 4
  %51 = udiv i32 %50, 2
  %52 = load i32, i32* %10, align 4
  %53 = sub i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %57

54:                                               ; preds = %32
  %55 = load i32, i32* %10, align 4
  %56 = udiv i32 %55, 2
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %30
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %112, %58
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %62 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %115

65:                                               ; preds = %59
  %66 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %67 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %66, i32 0, i32 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @DECAY_SHIFT, align 4
  %76 = lshr i32 %74, %75
  %77 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %78 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %77, i32 0, i32 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub i32 %84, %76
  store i32 %85, i32* %83, align 4
  %86 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %87 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ule i32 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %65
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %9, align 4
  %98 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %99 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ule i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %108, %96
  br label %111

111:                                              ; preds = %110, %65
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %59

115:                                              ; preds = %59
  %116 = load i32, i32* %9, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %193

118:                                              ; preds = %115
  %119 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %120 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %119, i32 0, i32 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %13, align 4
  %127 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %128 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %127, i32 0, i32 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @DECAY_SHIFT, align 4
  %137 = lshr i32 %135, %136
  %138 = load i32, i32* %13, align 4
  %139 = sub i32 %138, %137
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @DECAY_SHIFT, align 4
  %142 = lshr i32 %140, %141
  %143 = load i32, i32* %14, align 4
  %144 = sub i32 %143, %142
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %170

148:                                              ; preds = %118
  %149 = load i64, i64* @PULSE, align 8
  %150 = load i32, i32* %14, align 4
  %151 = zext i32 %150 to i64
  %152 = add nsw i64 %151, %149
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %148
  %157 = load i64, i64* @PULSE, align 8
  %158 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %159 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %158, i32 0, i32 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = zext i32 %165 to i64
  %167 = add nsw i64 %166, %157
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %164, align 4
  br label %169

169:                                              ; preds = %156, %148
  br label %176

170:                                              ; preds = %118
  %171 = load i64, i64* @PULSE, align 8
  %172 = load i32, i32* %13, align 4
  %173 = zext i32 %172 to i64
  %174 = add nsw i64 %173, %171
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %13, align 4
  br label %176

176:                                              ; preds = %170, %169
  %177 = load i32, i32* %14, align 4
  %178 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %179 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %178, i32 0, i32 4
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 2
  store i32 %177, i32* %184, align 4
  %185 = load i32, i32* %13, align 4
  %186 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %187 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %186, i32 0, i32 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  store i32 %185, i32* %192, align 4
  br label %193

193:                                              ; preds = %176, %115
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %196 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %199 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %199, align 8
  %202 = getelementptr inbounds i32, i32* %197, i64 %200
  store i32 %194, i32* %202, align 4
  %203 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %204 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @INTERVALS, align 8
  %207 = icmp sgt i64 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %193
  %209 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %210 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %209, i32 0, i32 3
  store i64 0, i64* %210, align 8
  br label %211

211:                                              ; preds = %208, %193
  ret void
}

declare dso_local %struct.teo_cpu* @per_cpu_ptr(i32*, i32) #1

declare dso_local i32 @ktime_to_us(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
