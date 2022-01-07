; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c_intel_pmu_setup_sw_lbr_filter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c_intel_pmu_setup_sw_lbr_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PERF_SAMPLE_BRANCH_USER = common dso_local global i32 0, align 4
@X86_BR_USER = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_KERNEL = common dso_local global i32 0, align 4
@X86_BR_KERNEL = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_ANY = common dso_local global i32 0, align 4
@X86_BR_ANY = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_ANY_CALL = common dso_local global i32 0, align 4
@X86_BR_ANY_CALL = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_ANY_RETURN = common dso_local global i32 0, align 4
@X86_BR_RET = common dso_local global i32 0, align 4
@X86_BR_IRET = common dso_local global i32 0, align 4
@X86_BR_SYSRET = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_IND_CALL = common dso_local global i32 0, align 4
@X86_BR_IND_CALL = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_ABORT_TX = common dso_local global i32 0, align 4
@X86_BR_ABORT = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_IN_TX = common dso_local global i32 0, align 4
@X86_BR_IN_TX = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_NO_TX = common dso_local global i32 0, align 4
@X86_BR_NO_TX = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_COND = common dso_local global i32 0, align 4
@X86_BR_JCC = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_CALL_STACK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@X86_BR_CALL = common dso_local global i32 0, align 4
@X86_BR_CALL_STACK = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_IND_JUMP = common dso_local global i32 0, align 4
@X86_BR_IND_JMP = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_CALL = common dso_local global i32 0, align 4
@X86_BR_ZERO_CALL = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_TYPE_SAVE = common dso_local global i32 0, align 4
@X86_BR_TYPE_SAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @intel_pmu_setup_sw_lbr_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pmu_setup_sw_lbr_filter(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PERF_SAMPLE_BRANCH_USER, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @X86_BR_USER, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PERF_SAMPLE_BRANCH_KERNEL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @X86_BR_KERNEL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PERF_SAMPLE_BRANCH_ANY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @X86_BR_ANY, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @PERF_SAMPLE_BRANCH_ANY_CALL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @X86_BR_ANY_CALL, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @PERF_SAMPLE_BRANCH_ANY_RETURN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* @X86_BR_RET, align 4
  %52 = load i32, i32* @X86_BR_IRET, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @X86_BR_SYSRET, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @PERF_SAMPLE_BRANCH_IND_CALL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @X86_BR_IND_CALL, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @PERF_SAMPLE_BRANCH_ABORT_TX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @X86_BR_ABORT, align 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @PERF_SAMPLE_BRANCH_IN_TX, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @X86_BR_IN_TX, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @PERF_SAMPLE_BRANCH_NO_TX, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @X86_BR_NO_TX, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %85
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @PERF_SAMPLE_BRANCH_COND, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @X86_BR_JCC, align 4
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @PERF_SAMPLE_BRANCH_CALL_STACK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %103
  %109 = call i32 (...) @x86_pmu_has_lbr_callstack()
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* @EOPNOTSUPP, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %170

114:                                              ; preds = %108
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @X86_BR_USER, align 4
  %117 = load i32, i32* @X86_BR_KERNEL, align 4
  %118 = or i32 %116, %117
  %119 = xor i32 %118, -1
  %120 = and i32 %115, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %170

125:                                              ; preds = %114
  %126 = load i32, i32* @X86_BR_CALL, align 4
  %127 = load i32, i32* @X86_BR_IND_CALL, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @X86_BR_RET, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @X86_BR_CALL_STACK, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %125, %103
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @PERF_SAMPLE_BRANCH_IND_JUMP, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @X86_BR_IND_JMP, align 4
  %142 = load i32, i32* %5, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %140, %135
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @PERF_SAMPLE_BRANCH_CALL, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i32, i32* @X86_BR_CALL, align 4
  %151 = load i32, i32* @X86_BR_ZERO_CALL, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* %5, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %149, %144
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @PERF_SAMPLE_BRANCH_TYPE_SAVE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i32, i32* @X86_BR_TYPE_SAVE, align 4
  %162 = load i32, i32* %5, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %160, %155
  %165 = load i32, i32* %5, align 4
  %166 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %167 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  store i32 %165, i32* %169, align 4
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %164, %122, %111
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @x86_pmu_has_lbr_callstack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
