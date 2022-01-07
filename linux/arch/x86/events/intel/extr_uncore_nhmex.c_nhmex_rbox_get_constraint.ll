; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_rbox_get_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_rbox_get_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_constraint = type { i32 }
%struct.intel_uncore_box = type { %struct.intel_uncore_extra_reg* }
%struct.intel_uncore_extra_reg = type { i32, i64, i64, i32, i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32, i32 }

@uncore_constraint_empty = common dso_local global %struct.event_constraint zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_rbox_get_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @nhmex_rbox_get_constraint(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.event_constraint*, align 8
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca %struct.hw_perf_event_extra*, align 8
  %9 = alloca %struct.intel_uncore_extra_reg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  store %struct.hw_perf_event* %17, %struct.hw_perf_event** %6, align 8
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 2
  store %struct.hw_perf_event_extra* %19, %struct.hw_perf_event_extra** %7, align 8
  %20 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %21 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %20, i32 0, i32 1
  store %struct.hw_perf_event_extra* %21, %struct.hw_perf_event_extra** %8, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %23 = call i32 @uncore_box_is_fake(%struct.intel_uncore_box* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store %struct.event_constraint* null, %struct.event_constraint** %3, align 8
  br label %245

31:                                               ; preds = %25, %2
  %32 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %33 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %34, 6
  store i32 %35, i32* %11, align 4
  %36 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %37 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %223, %31
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %48 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 6
  %51 = mul nsw i32 %50, 5
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %12, align 4
  %54 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %55 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %54, i32 0, i32 0
  %56 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %56, i64 %58
  store %struct.intel_uncore_extra_reg* %59, %struct.intel_uncore_extra_reg** %9, align 8
  %60 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %61 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %60, i32 0, i32 3
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @raw_spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %89

66:                                               ; preds = %46
  %67 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %68 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %67, i32 0, i32 4
  %69 = call i32 @atomic_read(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %73 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %76 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %71, %66
  %80 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %81 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %80, i32 0, i32 4
  %82 = call i32 @atomic_inc(i32* %81)
  %83 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %84 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %87 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  store i32 1, i32* %14, align 4
  br label %88

88:                                               ; preds = %79, %71
  br label %194

89:                                               ; preds = %46
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %138

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %11, align 4
  %97 = sub nsw i32 %96, 2
  %98 = mul nsw i32 %97, 8
  %99 = shl i32 255, %98
  store i32 %99, i32* %15, align 4
  %100 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %101 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %100, i32 0, i32 4
  %102 = call i32 @atomic_read(i32* %101)
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %103, 2
  %105 = call i32 @__BITS_VALUE(i32 %102, i32 %104, i32 8)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %95
  %108 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %109 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = xor i32 %110, %111
  %113 = load i32, i32* %15, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %137, label %116

116:                                              ; preds = %107, %95
  %117 = load i32, i32* %11, align 4
  %118 = sub nsw i32 %117, 2
  %119 = mul nsw i32 %118, 8
  %120 = shl i32 1, %119
  %121 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %122 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %121, i32 0, i32 4
  %123 = call i32 @atomic_add(i32 %120, i32* %122)
  %124 = load i32, i32* %15, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %127 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %15, align 4
  %132 = and i32 %130, %131
  %133 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %134 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  store i32 1, i32* %14, align 4
  br label %137

137:                                              ; preds = %116, %107
  br label %193

138:                                              ; preds = %92
  %139 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %140 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %139, i32 0, i32 4
  %141 = call i32 @atomic_read(i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %170

143:                                              ; preds = %138
  %144 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %145 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %148 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 32
  %151 = icmp eq i32 %146, %150
  br i1 %151, label %152, label %192

152:                                              ; preds = %143
  %153 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %154 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %157 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp eq i64 %155, %159
  br i1 %160, label %161, label %192

161:                                              ; preds = %152
  %162 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %163 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %166 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp eq i64 %164, %168
  br i1 %169, label %170, label %192

170:                                              ; preds = %161, %138
  %171 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %172 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %171, i32 0, i32 4
  %173 = call i32 @atomic_inc(i32* %172)
  %174 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %175 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = ashr i32 %176, 32
  %178 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %179 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %181 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %185 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  %186 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %187 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %191 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %190, i32 0, i32 2
  store i64 %189, i64* %191, align 8
  store i32 1, i32* %14, align 4
  br label %192

192:                                              ; preds = %170, %161, %152, %143
  br label %193

193:                                              ; preds = %192, %137
  br label %194

194:                                              ; preds = %193, %88
  %195 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %196 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %195, i32 0, i32 3
  %197 = load i64, i64* %10, align 8
  %198 = call i32 @raw_spin_unlock_irqrestore(i32* %196, i64 %197)
  %199 = load i32, i32* %14, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %225, label %201

201:                                              ; preds = %194
  %202 = load i32, i32* %11, align 4
  %203 = xor i32 %202, 1
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %11, align 4
  %205 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %206 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = srem i32 %207, 6
  %209 = icmp ne i32 %204, %208
  br i1 %209, label %210, label %224

210:                                              ; preds = %201
  %211 = load i32, i32* %11, align 4
  %212 = icmp eq i32 %211, 2
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32, i32* %13, align 4
  %215 = ashr i32 %214, 8
  store i32 %215, i32* %13, align 4
  br label %223

216:                                              ; preds = %210
  %217 = load i32, i32* %11, align 4
  %218 = icmp eq i32 %217, 3
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32, i32* %13, align 4
  %221 = shl i32 %220, 8
  store i32 %221, i32* %13, align 4
  br label %222

222:                                              ; preds = %219, %216
  br label %223

223:                                              ; preds = %222, %213
  br label %39

224:                                              ; preds = %201
  br label %244

225:                                              ; preds = %194
  %226 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %227 = call i32 @uncore_box_is_fake(%struct.intel_uncore_box* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %243, label %229

229:                                              ; preds = %225
  %230 = load i32, i32* %11, align 4
  %231 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %232 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = srem i32 %233, 6
  %235 = icmp ne i32 %230, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %229
  %237 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %238 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %239 = call i32 @nhmex_rbox_alter_er(%struct.intel_uncore_box* %237, %struct.perf_event* %238)
  br label %240

240:                                              ; preds = %236, %229
  %241 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %242 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %241, i32 0, i32 0
  store i32 1, i32* %242, align 4
  br label %243

243:                                              ; preds = %240, %225
  store %struct.event_constraint* null, %struct.event_constraint** %3, align 8
  br label %245

244:                                              ; preds = %224
  store %struct.event_constraint* @uncore_constraint_empty, %struct.event_constraint** %3, align 8
  br label %245

245:                                              ; preds = %244, %243, %30
  %246 = load %struct.event_constraint*, %struct.event_constraint** %3, align 8
  ret %struct.event_constraint* %246
}

declare dso_local i32 @uncore_box_is_fake(%struct.intel_uncore_box*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__BITS_VALUE(i32, i32, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nhmex_rbox_alter_er(%struct.intel_uncore_box*, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
