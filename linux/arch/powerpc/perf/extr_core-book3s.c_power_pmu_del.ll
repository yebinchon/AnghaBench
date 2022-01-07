; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_power_pmu_del.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_power_pmu_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i64, i32*)* }
%struct.perf_event = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.cpu_hw_events = type { i64, i32*, i64, i32*, %struct.perf_event**, i32*, i32*, %struct.perf_event** }

@cpu_hw_events = common dso_local global i32 0, align 4
@ppmu = common dso_local global %struct.TYPE_4__* null, align 8
@MMCR0_PMXE = common dso_local global i32 0, align 4
@MMCR0_FCECE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @power_pmu_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_pmu_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @perf_pmu_disable(i32 %12)
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = call i32 @power_pmu_read(%struct.perf_event* %14)
  %16 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %16, %struct.cpu_hw_events** %5, align 8
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %112, %2
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %20 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %115

23:                                               ; preds = %17
  %24 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %25 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %26 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %25, i32 0, i32 7
  %27 = load %struct.perf_event**, %struct.perf_event*** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %27, i64 %28
  %30 = load %struct.perf_event*, %struct.perf_event** %29, align 8
  %31 = icmp eq %struct.perf_event* %24, %30
  br i1 %31, label %32, label %111

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %40, %32
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %6, align 8
  %36 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %37 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %33
  %41 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %42 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %41, i32 0, i32 7
  %43 = load %struct.perf_event**, %struct.perf_event*** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %43, i64 %44
  %46 = load %struct.perf_event*, %struct.perf_event** %45, align 8
  %47 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %48 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %47, i32 0, i32 7
  %49 = load %struct.perf_event**, %struct.perf_event*** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = sub nsw i64 %50, 1
  %52 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %49, i64 %51
  store %struct.perf_event* %46, %struct.perf_event** %52, align 8
  %53 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %54 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %60 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %59, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = sub nsw i64 %62, 1
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  %65 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %66 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %72 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = sub nsw i64 %74, 1
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %33

77:                                               ; preds = %33
  %78 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %79 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %79, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ppmu, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32 (i64, i32*)*, i32 (i64, i32*)** %83, align 8
  %85 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %86 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %88, 1
  %90 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %91 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 %84(i64 %89, i32* %92)
  %94 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %95 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %77
  %100 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %101 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @write_pmc(i64 %103, i32 0)
  %105 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %106 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %99, %77
  %109 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %110 = call i32 @perf_event_update_userpage(%struct.perf_event* %109)
  br label %115

111:                                              ; preds = %23
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %6, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %6, align 8
  br label %17

115:                                              ; preds = %108, %17
  store i64 0, i64* %6, align 8
  br label %116

116:                                              ; preds = %133, %115
  %117 = load i64, i64* %6, align 8
  %118 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %119 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %117, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %116
  %123 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %124 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %125 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %124, i32 0, i32 4
  %126 = load %struct.perf_event**, %struct.perf_event*** %125, align 8
  %127 = load i64, i64* %6, align 8
  %128 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %126, i64 %127
  %129 = load %struct.perf_event*, %struct.perf_event** %128, align 8
  %130 = icmp eq %struct.perf_event* %123, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %136

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %6, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %6, align 8
  br label %116

136:                                              ; preds = %131, %116
  %137 = load i64, i64* %6, align 8
  %138 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %139 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp slt i64 %137, %140
  br i1 %141, label %142, label %180

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %150, %142
  %144 = load i64, i64* %6, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %6, align 8
  %146 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %147 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp slt i64 %145, %148
  br i1 %149, label %150, label %175

150:                                              ; preds = %143
  %151 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %152 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %151, i32 0, i32 4
  %153 = load %struct.perf_event**, %struct.perf_event*** %152, align 8
  %154 = load i64, i64* %6, align 8
  %155 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %153, i64 %154
  %156 = load %struct.perf_event*, %struct.perf_event** %155, align 8
  %157 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %158 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %157, i32 0, i32 4
  %159 = load %struct.perf_event**, %struct.perf_event*** %158, align 8
  %160 = load i64, i64* %6, align 8
  %161 = sub nsw i64 %160, 1
  %162 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %159, i64 %161
  store %struct.perf_event* %156, %struct.perf_event** %162, align 8
  %163 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %164 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %6, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %170 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %6, align 8
  %173 = sub nsw i64 %172, 1
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %168, i32* %174, align 4
  br label %143

175:                                              ; preds = %143
  %176 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %177 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, -1
  store i64 %179, i64* %177, align 8
  br label %180

180:                                              ; preds = %175, %136
  %181 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %182 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %180
  %186 = load i32, i32* @MMCR0_PMXE, align 4
  %187 = load i32, i32* @MMCR0_FCECE, align 4
  %188 = or i32 %186, %187
  %189 = xor i32 %188, -1
  %190 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %191 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, %189
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %185, %180
  %197 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %198 = call i64 @has_branch_stack(%struct.perf_event* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %202 = call i32 @power_pmu_bhrb_disable(%struct.perf_event* %201)
  br label %203

203:                                              ; preds = %200, %196
  %204 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %205 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @perf_pmu_enable(i32 %206)
  %208 = load i64, i64* %7, align 8
  %209 = call i32 @local_irq_restore(i64 %208)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local i32 @power_pmu_read(%struct.perf_event*) #1

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @write_pmc(i64, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

declare dso_local i64 @has_branch_stack(%struct.perf_event*) #1

declare dso_local i32 @power_pmu_bhrb_disable(%struct.perf_event*) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
