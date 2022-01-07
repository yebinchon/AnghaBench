; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_get_cfg_composite_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_get_cfg_composite_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_ops = type { i32 }
%struct.composite_clk_gcfg = type { %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.clk_ops*, i32 }
%struct.TYPE_10__ = type { %struct.clk_ops*, i32 }
%struct.TYPE_8__ = type { %struct.clk_ops*, i32 }
%struct.composite_clk_cfg = type { %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.composite_cfg = type { %struct.clk_ops*, %struct.clk_hw*, %struct.clk_ops*, %struct.clk_hw*, %struct.clk_ops*, %struct.clk_hw* }
%struct.clk_hw = type { i32 }
%struct.clk_mux = type { %struct.clk_hw }
%struct.clk_divider = type { %struct.clk_hw }
%struct.clk_gate = type { %struct.clk_hw }

@base = common dso_local global i64 0, align 8
@clk_mux_ops = common dso_local global %struct.clk_ops zeroinitializer, align 4
@clk_divider_ops = common dso_local global %struct.clk_ops zeroinitializer, align 4
@clk_gate_ops = common dso_local global %struct.clk_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.composite_clk_gcfg*, %struct.composite_clk_cfg*, %struct.composite_cfg*, i32*)* @get_cfg_composite_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_cfg_composite_div(%struct.composite_clk_gcfg* %0, %struct.composite_clk_cfg* %1, %struct.composite_cfg* %2, i32* %3) #0 {
  %5 = alloca %struct.composite_clk_gcfg*, align 8
  %6 = alloca %struct.composite_clk_cfg*, align 8
  %7 = alloca %struct.composite_cfg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.clk_mux*, align 8
  %10 = alloca %struct.clk_divider*, align 8
  %11 = alloca %struct.clk_gate*, align 8
  %12 = alloca %struct.clk_ops*, align 8
  %13 = alloca %struct.clk_ops*, align 8
  %14 = alloca %struct.clk_ops*, align 8
  %15 = alloca %struct.clk_hw*, align 8
  %16 = alloca %struct.clk_hw*, align 8
  %17 = alloca %struct.clk_hw*, align 8
  store %struct.composite_clk_gcfg* %0, %struct.composite_clk_gcfg** %5, align 8
  store %struct.composite_clk_cfg* %1, %struct.composite_clk_cfg** %6, align 8
  store %struct.composite_cfg* %2, %struct.composite_cfg** %7, align 8
  store i32* %3, i32** %8, align 8
  store %struct.clk_mux* null, %struct.clk_mux** %9, align 8
  store %struct.clk_divider* null, %struct.clk_divider** %10, align 8
  store %struct.clk_gate* null, %struct.clk_gate** %11, align 8
  store %struct.clk_ops* null, %struct.clk_ops** %14, align 8
  store %struct.clk_ops* null, %struct.clk_ops** %13, align 8
  store %struct.clk_ops* null, %struct.clk_ops** %12, align 8
  store %struct.clk_hw* null, %struct.clk_hw** %17, align 8
  store %struct.clk_hw* null, %struct.clk_hw** %16, align 8
  store %struct.clk_hw* null, %struct.clk_hw** %15, align 8
  %18 = load %struct.composite_clk_gcfg*, %struct.composite_clk_gcfg** %5, align 8
  %19 = getelementptr inbounds %struct.composite_clk_gcfg, %struct.composite_clk_gcfg* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %74

22:                                               ; preds = %4
  %23 = load %struct.composite_clk_cfg*, %struct.composite_clk_cfg** %6, align 8
  %24 = getelementptr inbounds %struct.composite_clk_cfg, %struct.composite_clk_cfg* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %74

27:                                               ; preds = %22
  %28 = load i64, i64* @base, align 8
  %29 = load %struct.composite_clk_cfg*, %struct.composite_clk_cfg** %6, align 8
  %30 = getelementptr inbounds %struct.composite_clk_cfg, %struct.composite_clk_cfg* %29, i32 0, i32 2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %28, %33
  %35 = load %struct.composite_clk_cfg*, %struct.composite_clk_cfg** %6, align 8
  %36 = getelementptr inbounds %struct.composite_clk_cfg, %struct.composite_clk_cfg* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.composite_clk_cfg*, %struct.composite_clk_cfg** %6, align 8
  %41 = getelementptr inbounds %struct.composite_clk_cfg, %struct.composite_clk_cfg* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.composite_clk_gcfg*, %struct.composite_clk_gcfg** %5, align 8
  %46 = getelementptr inbounds %struct.composite_clk_gcfg, %struct.composite_clk_gcfg* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call %struct.clk_mux* @_get_cmux(i64 %34, i32 %39, i32 %44, i32 %49, i32* %50)
  store %struct.clk_mux* %51, %struct.clk_mux** %9, align 8
  %52 = load %struct.clk_mux*, %struct.clk_mux** %9, align 8
  %53 = call i32 @IS_ERR(%struct.clk_mux* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %27
  %56 = load %struct.clk_mux*, %struct.clk_mux** %9, align 8
  %57 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %56, i32 0, i32 0
  store %struct.clk_hw* %57, %struct.clk_hw** %15, align 8
  %58 = load %struct.composite_clk_gcfg*, %struct.composite_clk_gcfg** %5, align 8
  %59 = getelementptr inbounds %struct.composite_clk_gcfg, %struct.composite_clk_gcfg* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.clk_ops*, %struct.clk_ops** %61, align 8
  %63 = icmp ne %struct.clk_ops* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.composite_clk_gcfg*, %struct.composite_clk_gcfg** %5, align 8
  %66 = getelementptr inbounds %struct.composite_clk_gcfg, %struct.composite_clk_gcfg* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.clk_ops*, %struct.clk_ops** %68, align 8
  br label %71

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %64
  %72 = phi %struct.clk_ops* [ %69, %64 ], [ @clk_mux_ops, %70 ]
  store %struct.clk_ops* %72, %struct.clk_ops** %12, align 8
  br label %73

73:                                               ; preds = %71, %27
  br label %74

74:                                               ; preds = %73, %22, %4
  %75 = load %struct.composite_clk_gcfg*, %struct.composite_clk_gcfg** %5, align 8
  %76 = getelementptr inbounds %struct.composite_clk_gcfg, %struct.composite_clk_gcfg* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = icmp ne %struct.TYPE_10__* %77, null
  br i1 %78, label %79, label %133

79:                                               ; preds = %74
  %80 = load %struct.composite_clk_cfg*, %struct.composite_clk_cfg** %6, align 8
  %81 = getelementptr inbounds %struct.composite_clk_cfg, %struct.composite_clk_cfg* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = icmp ne %struct.TYPE_9__* %82, null
  br i1 %83, label %84, label %133

84:                                               ; preds = %79
  %85 = load i64, i64* @base, align 8
  %86 = load %struct.composite_clk_cfg*, %struct.composite_clk_cfg** %6, align 8
  %87 = getelementptr inbounds %struct.composite_clk_cfg, %struct.composite_clk_cfg* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %85, %90
  %92 = load %struct.composite_clk_cfg*, %struct.composite_clk_cfg** %6, align 8
  %93 = getelementptr inbounds %struct.composite_clk_cfg, %struct.composite_clk_cfg* %92, i32 0, i32 1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.composite_clk_cfg*, %struct.composite_clk_cfg** %6, align 8
  %98 = getelementptr inbounds %struct.composite_clk_cfg, %struct.composite_clk_cfg* %97, i32 0, i32 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.composite_clk_gcfg*, %struct.composite_clk_gcfg** %5, align 8
  %103 = getelementptr inbounds %struct.composite_clk_gcfg, %struct.composite_clk_gcfg* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = call %struct.clk_mux* @_get_cdiv(i64 %91, i32 %96, i32 %101, i32 %106, i32* %107)
  %109 = bitcast %struct.clk_mux* %108 to %struct.clk_divider*
  store %struct.clk_divider* %109, %struct.clk_divider** %10, align 8
  %110 = load %struct.clk_divider*, %struct.clk_divider** %10, align 8
  %111 = bitcast %struct.clk_divider* %110 to %struct.clk_mux*
  %112 = call i32 @IS_ERR(%struct.clk_mux* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %132, label %114

114:                                              ; preds = %84
  %115 = load %struct.clk_divider*, %struct.clk_divider** %10, align 8
  %116 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %115, i32 0, i32 0
  store %struct.clk_hw* %116, %struct.clk_hw** %16, align 8
  %117 = load %struct.composite_clk_gcfg*, %struct.composite_clk_gcfg** %5, align 8
  %118 = getelementptr inbounds %struct.composite_clk_gcfg, %struct.composite_clk_gcfg* %117, i32 0, i32 1
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load %struct.clk_ops*, %struct.clk_ops** %120, align 8
  %122 = icmp ne %struct.clk_ops* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %114
  %124 = load %struct.composite_clk_gcfg*, %struct.composite_clk_gcfg** %5, align 8
  %125 = getelementptr inbounds %struct.composite_clk_gcfg, %struct.composite_clk_gcfg* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load %struct.clk_ops*, %struct.clk_ops** %127, align 8
  br label %130

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %123
  %131 = phi %struct.clk_ops* [ %128, %123 ], [ @clk_divider_ops, %129 ]
  store %struct.clk_ops* %131, %struct.clk_ops** %13, align 8
  br label %132

132:                                              ; preds = %130, %84
  br label %133

133:                                              ; preds = %132, %79, %74
  %134 = load %struct.composite_clk_gcfg*, %struct.composite_clk_gcfg** %5, align 8
  %135 = getelementptr inbounds %struct.composite_clk_gcfg, %struct.composite_clk_gcfg* %134, i32 0, i32 0
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = icmp ne %struct.TYPE_12__* %136, null
  br i1 %137, label %138, label %187

138:                                              ; preds = %133
  %139 = load %struct.composite_clk_cfg*, %struct.composite_clk_cfg** %6, align 8
  %140 = getelementptr inbounds %struct.composite_clk_cfg, %struct.composite_clk_cfg* %139, i32 0, i32 0
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = icmp ne %struct.TYPE_11__* %141, null
  br i1 %142, label %143, label %187

143:                                              ; preds = %138
  %144 = load i64, i64* @base, align 8
  %145 = load %struct.composite_clk_cfg*, %struct.composite_clk_cfg** %6, align 8
  %146 = getelementptr inbounds %struct.composite_clk_cfg, %struct.composite_clk_cfg* %145, i32 0, i32 0
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %144, %149
  %151 = load %struct.composite_clk_cfg*, %struct.composite_clk_cfg** %6, align 8
  %152 = getelementptr inbounds %struct.composite_clk_cfg, %struct.composite_clk_cfg* %151, i32 0, i32 0
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.composite_clk_gcfg*, %struct.composite_clk_gcfg** %5, align 8
  %157 = getelementptr inbounds %struct.composite_clk_gcfg, %struct.composite_clk_gcfg* %156, i32 0, i32 0
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32*, i32** %8, align 8
  %162 = call %struct.clk_mux* @_get_cgate(i64 %150, i32 %155, i32 %160, i32* %161)
  %163 = bitcast %struct.clk_mux* %162 to %struct.clk_gate*
  store %struct.clk_gate* %163, %struct.clk_gate** %11, align 8
  %164 = load %struct.clk_gate*, %struct.clk_gate** %11, align 8
  %165 = bitcast %struct.clk_gate* %164 to %struct.clk_mux*
  %166 = call i32 @IS_ERR(%struct.clk_mux* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %186, label %168

168:                                              ; preds = %143
  %169 = load %struct.clk_gate*, %struct.clk_gate** %11, align 8
  %170 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %169, i32 0, i32 0
  store %struct.clk_hw* %170, %struct.clk_hw** %17, align 8
  %171 = load %struct.composite_clk_gcfg*, %struct.composite_clk_gcfg** %5, align 8
  %172 = getelementptr inbounds %struct.composite_clk_gcfg, %struct.composite_clk_gcfg* %171, i32 0, i32 0
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load %struct.clk_ops*, %struct.clk_ops** %174, align 8
  %176 = icmp ne %struct.clk_ops* %175, null
  br i1 %176, label %177, label %183

177:                                              ; preds = %168
  %178 = load %struct.composite_clk_gcfg*, %struct.composite_clk_gcfg** %5, align 8
  %179 = getelementptr inbounds %struct.composite_clk_gcfg, %struct.composite_clk_gcfg* %178, i32 0, i32 0
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load %struct.clk_ops*, %struct.clk_ops** %181, align 8
  br label %184

183:                                              ; preds = %168
  br label %184

184:                                              ; preds = %183, %177
  %185 = phi %struct.clk_ops* [ %182, %177 ], [ @clk_gate_ops, %183 ]
  store %struct.clk_ops* %185, %struct.clk_ops** %14, align 8
  br label %186

186:                                              ; preds = %184, %143
  br label %187

187:                                              ; preds = %186, %138, %133
  %188 = load %struct.clk_hw*, %struct.clk_hw** %15, align 8
  %189 = load %struct.composite_cfg*, %struct.composite_cfg** %7, align 8
  %190 = getelementptr inbounds %struct.composite_cfg, %struct.composite_cfg* %189, i32 0, i32 5
  store %struct.clk_hw* %188, %struct.clk_hw** %190, align 8
  %191 = load %struct.clk_ops*, %struct.clk_ops** %12, align 8
  %192 = load %struct.composite_cfg*, %struct.composite_cfg** %7, align 8
  %193 = getelementptr inbounds %struct.composite_cfg, %struct.composite_cfg* %192, i32 0, i32 4
  store %struct.clk_ops* %191, %struct.clk_ops** %193, align 8
  %194 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %195 = load %struct.composite_cfg*, %struct.composite_cfg** %7, align 8
  %196 = getelementptr inbounds %struct.composite_cfg, %struct.composite_cfg* %195, i32 0, i32 3
  store %struct.clk_hw* %194, %struct.clk_hw** %196, align 8
  %197 = load %struct.clk_ops*, %struct.clk_ops** %13, align 8
  %198 = load %struct.composite_cfg*, %struct.composite_cfg** %7, align 8
  %199 = getelementptr inbounds %struct.composite_cfg, %struct.composite_cfg* %198, i32 0, i32 2
  store %struct.clk_ops* %197, %struct.clk_ops** %199, align 8
  %200 = load %struct.clk_hw*, %struct.clk_hw** %17, align 8
  %201 = load %struct.composite_cfg*, %struct.composite_cfg** %7, align 8
  %202 = getelementptr inbounds %struct.composite_cfg, %struct.composite_cfg* %201, i32 0, i32 1
  store %struct.clk_hw* %200, %struct.clk_hw** %202, align 8
  %203 = load %struct.clk_ops*, %struct.clk_ops** %14, align 8
  %204 = load %struct.composite_cfg*, %struct.composite_cfg** %7, align 8
  %205 = getelementptr inbounds %struct.composite_cfg, %struct.composite_cfg* %204, i32 0, i32 0
  store %struct.clk_ops* %203, %struct.clk_ops** %205, align 8
  ret void
}

declare dso_local %struct.clk_mux* @_get_cmux(i64, i32, i32, i32, i32*) #1

declare dso_local i32 @IS_ERR(%struct.clk_mux*) #1

declare dso_local %struct.clk_mux* @_get_cdiv(i64, i32, i32, i32, i32*) #1

declare dso_local %struct.clk_mux* @_get_cgate(i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
