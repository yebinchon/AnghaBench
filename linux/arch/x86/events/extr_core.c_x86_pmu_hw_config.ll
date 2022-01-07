; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 (%struct.perf_event*, i64)*, %struct.TYPE_6__ }
%struct.perf_event = type { %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PERF_SAMPLE_BRANCH_ANY = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_USER = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_KERNEL = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_CALL_STACK = common dso_local global i32 0, align 4
@PERF_ATTACH_TASK_DATA = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_INT = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_USR = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_OS = common dso_local global i32 0, align 4
@PERF_TYPE_RAW = common dso_local global i64 0, align 8
@X86_RAW_EVENT_MASK = common dso_local global i32 0, align 4
@PERF_REG_EXTENDED_MASK = common dso_local global i32 0, align 4
@PERF_PMU_CAP_EXTENDED_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86_pmu_hw_config(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = call i32 (...) @x86_pmu_max_precise()
  store i32 %12, i32* %4, align 4
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %215

22:                                               ; preds = %11
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = call i32 @is_sampling_event(%struct.perf_event* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %215

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %80

36:                                               ; preds = %30
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @x86_pmu, i32 0, i32 1, i32 0), align 8
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %80

39:                                               ; preds = %36
  %40 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i32* %42, i32** %5, align 8
  %43 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %44 = call i64 @has_branch_stack(%struct.perf_event* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %48 = call i32 @precise_br_compat(%struct.perf_event* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %215

53:                                               ; preds = %46
  br label %79

54:                                               ; preds = %39
  %55 = load i32, i32* @PERF_SAMPLE_BRANCH_ANY, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %58 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @PERF_SAMPLE_BRANCH_USER, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %54
  %68 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %69 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @PERF_SAMPLE_BRANCH_KERNEL, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %67
  br label %79

79:                                               ; preds = %78, %53
  br label %80

80:                                               ; preds = %79, %36, %30
  %81 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %82 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PERF_SAMPLE_BRANCH_CALL_STACK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load i32, i32* @PERF_ATTACH_TASK_DATA, align 4
  %90 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %91 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %80
  %95 = load i32, i32* @ARCH_PERFMON_EVENTSEL_INT, align 4
  %96 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %97 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %100 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %94
  %105 = load i32, i32* @ARCH_PERFMON_EVENTSEL_USR, align 4
  %106 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %107 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %104, %94
  %112 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %113 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %111
  %118 = load i32, i32* @ARCH_PERFMON_EVENTSEL_OS, align 4
  %119 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %120 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %118
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %117, %111
  %125 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %126 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @PERF_TYPE_RAW, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %124
  %132 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %133 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @X86_RAW_EVENT_MASK, align 4
  %137 = and i32 %135, %136
  %138 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %139 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %137
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %131, %124
  %144 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %145 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %143
  %150 = load i64 (%struct.perf_event*, i64)*, i64 (%struct.perf_event*, i64)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @x86_pmu, i32 0, i32 0), align 8
  %151 = icmp ne i64 (%struct.perf_event*, i64)* %150, null
  br i1 %151, label %152, label %169

152:                                              ; preds = %149
  %153 = load i64 (%struct.perf_event*, i64)*, i64 (%struct.perf_event*, i64)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @x86_pmu, i32 0, i32 0), align 8
  %154 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %155 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %156 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = call i64 %153(%struct.perf_event* %154, i64 %158)
  %160 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %161 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = icmp sgt i64 %159, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %152
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %215

168:                                              ; preds = %152
  br label %169

169:                                              ; preds = %168, %149, %143
  %170 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %171 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @PERF_REG_EXTENDED_MASK, align 4
  %175 = and i32 %173, %174
  %176 = call i64 @unlikely(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %169
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %2, align 4
  br label %215

181:                                              ; preds = %169
  %182 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %183 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @PERF_REG_EXTENDED_MASK, align 4
  %187 = and i32 %185, %186
  %188 = call i64 @unlikely(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %212

190:                                              ; preds = %181
  %191 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %192 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %191, i32 0, i32 1
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @PERF_PMU_CAP_EXTENDED_REGS, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %190
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %2, align 4
  br label %215

202:                                              ; preds = %190
  %203 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %204 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %202
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %215

211:                                              ; preds = %202
  br label %212

212:                                              ; preds = %211, %181
  %213 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %214 = call i32 @x86_setup_perfctr(%struct.perf_event* %213)
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %212, %208, %199, %178, %165, %50, %26, %19
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local i32 @x86_pmu_max_precise(...) #1

declare dso_local i32 @is_sampling_event(%struct.perf_event*) #1

declare dso_local i64 @has_branch_stack(%struct.perf_event*) #1

declare dso_local i32 @precise_br_compat(%struct.perf_event*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @x86_setup_perfctr(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
