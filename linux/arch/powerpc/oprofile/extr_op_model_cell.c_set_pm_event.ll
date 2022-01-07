; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_cell.c_set_pm_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_cell.c_set_pm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32* }
%struct.pm_signal = type { i32, i32, i64, i64 }

@PPU_CYCLES_EVENT_NUM = common dso_local global i32 0, align 4
@CBE_COUNT_ALL_CYCLES = common dso_local global i32 0, align 4
@pm_regs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pm_signal = common dso_local global %struct.pm_signal* null, align 8
@PPU_CYCLES_GRP_NUM = common dso_local global i32 0, align 4
@NUM_DEBUG_BUS_WORDS = common dso_local global i32 0, align 4
@NUM_INPUT_BUS_WORDS = common dso_local global i32 0, align 4
@input_bus = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64)* @set_pm_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pm_event(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.pm_signal*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PPU_CYCLES_EVENT_NUM, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = load i32, i32* @CBE_COUNT_ALL_CYCLES, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_regs, i32 0, i32 2), align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %20, i32* %23, align 4
  %24 = load %struct.pm_signal*, %struct.pm_signal** @pm_signal, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.pm_signal, %struct.pm_signal* %24, i64 %25
  store %struct.pm_signal* %26, %struct.pm_signal** %7, align 8
  %27 = load i32, i32* @PPU_CYCLES_GRP_NUM, align 4
  %28 = load %struct.pm_signal*, %struct.pm_signal** %7, align 8
  %29 = getelementptr inbounds %struct.pm_signal, %struct.pm_signal* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.pm_signal*, %struct.pm_signal** %7, align 8
  %31 = getelementptr inbounds %struct.pm_signal, %struct.pm_signal* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.pm_signal*, %struct.pm_signal** %7, align 8
  %33 = getelementptr inbounds %struct.pm_signal, %struct.pm_signal* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.pm_signal*, %struct.pm_signal** %7, align 8
  %35 = getelementptr inbounds %struct.pm_signal, %struct.pm_signal* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  br label %198

36:                                               ; preds = %3
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_regs, i32 0, i32 2), align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @GET_BUS_WORD(i64 %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @GET_BUS_TYPE(i64 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @GET_COUNT_CYCLES(i64 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @GET_POLARITY(i64 %47)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @GET_INPUT_CONTROL(i64 %49)
  store i64 %50, i64* %13, align 8
  %51 = load i32, i32* %5, align 4
  %52 = srem i32 %51, 100
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %8, align 8
  %54 = load %struct.pm_signal*, %struct.pm_signal** @pm_signal, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds %struct.pm_signal, %struct.pm_signal* %54, i64 %55
  store %struct.pm_signal* %56, %struct.pm_signal** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sdiv i32 %57, 100
  %59 = load %struct.pm_signal*, %struct.pm_signal** %7, align 8
  %60 = getelementptr inbounds %struct.pm_signal, %struct.pm_signal* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.pm_signal*, %struct.pm_signal** %7, align 8
  %64 = getelementptr inbounds %struct.pm_signal, %struct.pm_signal* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i64, i64* %6, align 8
  %66 = call i64 @GET_SUB_UNIT(i64 %65)
  %67 = load %struct.pm_signal*, %struct.pm_signal** %7, align 8
  %68 = getelementptr inbounds %struct.pm_signal, %struct.pm_signal* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_regs, i32 0, i32 2), align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 0, i32* %71, align 4
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @PM07_CTR_COUNT_CYCLES(i64 %72)
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_regs, i32 0, i32 2), align 8
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %73
  store i32 %78, i32* %76, align 4
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @PM07_CTR_POLARITY(i64 %79)
  %81 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_regs, i32 0, i32 2), align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %80
  store i32 %85, i32* %83, align 4
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @PM07_CTR_INPUT_CONTROL(i64 %86)
  %88 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_regs, i32 0, i32 2), align 8
  %89 = load i64, i64* %4, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %87
  store i32 %92, i32* %90, align 4
  %93 = load i64, i64* %13, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %136

95:                                               ; preds = %40
  %96 = load i64, i64* %8, align 8
  %97 = icmp ugt i64 %96, 31
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i64, i64* %8, align 8
  %100 = sub i64 %99, 32
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = icmp eq i64 %101, 3
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i64 2, i64* %9, align 8
  br label %109

104:                                              ; preds = %98
  %105 = load i64, i64* %9, align 8
  %106 = icmp eq i64 %105, 12
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i64 8, i64* %9, align 8
  br label %108

108:                                              ; preds = %107, %104
  br label %109

109:                                              ; preds = %108, %103
  br label %110

110:                                              ; preds = %109, %95
  %111 = load i64, i64* %10, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.pm_signal*, %struct.pm_signal** %7, align 8
  %115 = getelementptr inbounds %struct.pm_signal, %struct.pm_signal* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp sge i32 %116, 60
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i64 2, i64* %10, align 8
  br label %119

119:                                              ; preds = %118, %113, %110
  %120 = load i64, i64* %10, align 8
  %121 = icmp eq i64 %120, 1
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.pm_signal*, %struct.pm_signal** %7, align 8
  %124 = getelementptr inbounds %struct.pm_signal, %struct.pm_signal* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp sge i32 %125, 50
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store i64 0, i64* %10, align 8
  br label %128

128:                                              ; preds = %127, %122, %119
  %129 = load i64, i64* %8, align 8
  %130 = call i32 @PM07_CTR_INPUT_MUX(i64 %129)
  %131 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_regs, i32 0, i32 2), align 8
  %132 = load i64, i64* %4, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %130
  store i32 %135, i32* %133, align 4
  br label %143

136:                                              ; preds = %40
  %137 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_regs, i32 0, i32 2), align 8
  %138 = load i64, i64* %4, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32 0, i32* %139, align 4
  %140 = load i64, i64* %8, align 8
  %141 = load %struct.pm_signal*, %struct.pm_signal** %7, align 8
  %142 = getelementptr inbounds %struct.pm_signal, %struct.pm_signal* %141, i32 0, i32 2
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %136, %128
  store i32 0, i32* %15, align 4
  br label %144

144:                                              ; preds = %194, %143
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* @NUM_DEBUG_BUS_WORDS, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %197

148:                                              ; preds = %144
  %149 = load i64, i64* %9, align 8
  %150 = load i32, i32* %15, align 4
  %151 = shl i32 1, %150
  %152 = sext i32 %151 to i64
  %153 = and i64 %149, %152
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %193

155:                                              ; preds = %148
  %156 = load i64, i64* %10, align 8
  %157 = load i32, i32* %15, align 4
  %158 = mul nsw i32 2, %157
  %159 = sub nsw i32 30, %158
  %160 = zext i32 %159 to i64
  %161 = shl i64 %156, %160
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_regs, i32 0, i32 0), align 8
  %163 = or i64 %162, %161
  store i64 %163, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_regs, i32 0, i32 0), align 8
  store i32 0, i32* %14, align 4
  br label %164

164:                                              ; preds = %189, %155
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* @NUM_INPUT_BUS_WORDS, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %192

168:                                              ; preds = %164
  %169 = load i32*, i32** @input_bus, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 255
  br i1 %174, label %175, label %188

175:                                              ; preds = %168
  %176 = load i32, i32* %15, align 4
  %177 = load i32*, i32** @input_bus, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %176, i32* %180, align 4
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %14, align 4
  %183 = mul nsw i32 2, %182
  %184 = sub nsw i32 30, %183
  %185 = shl i32 %181, %184
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_regs, i32 0, i32 1), align 8
  %187 = or i32 %186, %185
  store i32 %187, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_regs, i32 0, i32 1), align 8
  br label %192

188:                                              ; preds = %168
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %14, align 4
  br label %164

192:                                              ; preds = %175, %164
  br label %193

193:                                              ; preds = %192, %148
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %15, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %15, align 4
  br label %144

197:                                              ; preds = %144
  br label %198

198:                                              ; preds = %197, %19
  ret void
}

declare dso_local i64 @GET_BUS_WORD(i64) #1

declare dso_local i64 @GET_BUS_TYPE(i64) #1

declare dso_local i64 @GET_COUNT_CYCLES(i64) #1

declare dso_local i64 @GET_POLARITY(i64) #1

declare dso_local i64 @GET_INPUT_CONTROL(i64) #1

declare dso_local i64 @GET_SUB_UNIT(i64) #1

declare dso_local i32 @PM07_CTR_COUNT_CYCLES(i64) #1

declare dso_local i32 @PM07_CTR_POLARITY(i64) #1

declare dso_local i32 @PM07_CTR_INPUT_CONTROL(i64) #1

declare dso_local i32 @PM07_CTR_INPUT_MUX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
