; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_coupled.c_cpuidle_enter_state_coupled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_coupled.c_cpuidle_enter_state_coupled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32, %struct.cpuidle_coupled* }
%struct.cpuidle_coupled = type { i32, i32, i64 }
%struct.cpuidle_driver = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@cpuidle_coupled_poked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuidle_enter_state_coupled(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuidle_device*, align 8
  %6 = alloca %struct.cpuidle_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpuidle_coupled*, align 8
  %10 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %5, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %11 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %12 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %11, i32 0, i32 1
  %13 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %12, align 8
  store %struct.cpuidle_coupled* %13, %struct.cpuidle_coupled** %9, align 8
  %14 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %15 = icmp ne %struct.cpuidle_coupled* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %194

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %35, %19
  %21 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %22 = getelementptr inbounds %struct.cpuidle_coupled, %struct.cpuidle_coupled* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %27 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @cpuidle_coupled_clear_pokes(i32 %28)
  %30 = call i64 (...) @need_resched()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = call i32 (...) @local_irq_enable()
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %194

35:                                               ; preds = %25
  %36 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %37 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %38 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %39 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpuidle_enter_state(%struct.cpuidle_device* %36, %struct.cpuidle_driver* %37, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = call i32 (...) @local_irq_disable()
  br label %20

43:                                               ; preds = %20
  %44 = call i32 (...) @smp_rmb()
  br label %45

45:                                               ; preds = %160, %43
  %46 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %47 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @cpumask_clear_cpu(i32 %48, i32* @cpuidle_coupled_poked)
  %50 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %51 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @cpuidle_coupled_set_waiting(i32 %52, %struct.cpuidle_coupled* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %58 = getelementptr inbounds %struct.cpuidle_coupled, %struct.cpuidle_coupled* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %45
  %62 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %63 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @cpumask_set_cpu(i32 %64, i32* @cpuidle_coupled_poked)
  %66 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %67 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %70 = call i32 @cpuidle_coupled_poke_others(i32 %68, %struct.cpuidle_coupled* %69)
  br label %71

71:                                               ; preds = %61, %45
  br label %72

72:                                               ; preds = %151, %71
  br label %73

73:                                               ; preds = %113, %92, %72
  %74 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %75 = call i32 @cpuidle_coupled_cpus_waiting(%struct.cpuidle_coupled* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %79 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @cpumask_test_cpu(i32 %80, i32* @cpuidle_coupled_poked)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br label %84

84:                                               ; preds = %77, %73
  %85 = phi i1 [ true, %73 ], [ %83, %77 ]
  br i1 %85, label %86, label %121

86:                                               ; preds = %84
  %87 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %88 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @cpuidle_coupled_clear_pokes(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %73

93:                                               ; preds = %86
  %94 = call i64 (...) @need_resched()
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %98 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %101 = call i32 @cpuidle_coupled_set_not_waiting(i32 %99, %struct.cpuidle_coupled* %100)
  br label %183

102:                                              ; preds = %93
  %103 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %104 = getelementptr inbounds %struct.cpuidle_coupled, %struct.cpuidle_coupled* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %109 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %112 = call i32 @cpuidle_coupled_set_not_waiting(i32 %110, %struct.cpuidle_coupled* %111)
  br label %183

113:                                              ; preds = %102
  %114 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %115 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %116 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %117 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @cpuidle_enter_state(%struct.cpuidle_device* %114, %struct.cpuidle_driver* %115, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = call i32 (...) @local_irq_disable()
  br label %73

121:                                              ; preds = %84
  %122 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %123 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @cpuidle_coupled_clear_pokes(i32 %124)
  %126 = call i64 (...) @need_resched()
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %130 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %133 = call i32 @cpuidle_coupled_set_not_waiting(i32 %131, %struct.cpuidle_coupled* %132)
  br label %183

134:                                              ; preds = %121
  %135 = call i32 (...) @smp_wmb()
  %136 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %137 = call i32 @cpuidle_coupled_set_ready(%struct.cpuidle_coupled* %136)
  br label %138

138:                                              ; preds = %153, %134
  %139 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %140 = call i32 @cpuidle_coupled_cpus_ready(%struct.cpuidle_coupled* %139)
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  br i1 %142, label %143, label %155

143:                                              ; preds = %138
  %144 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %145 = call i32 @cpuidle_coupled_cpus_waiting(%struct.cpuidle_coupled* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %143
  %148 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %149 = call i32 @cpuidle_coupled_set_not_ready(%struct.cpuidle_coupled* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %147
  br label %72

152:                                              ; preds = %147
  br label %153

153:                                              ; preds = %152, %143
  %154 = call i32 (...) @cpu_relax()
  br label %138

155:                                              ; preds = %138
  %156 = call i32 (...) @smp_rmb()
  %157 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %158 = call i64 @cpuidle_coupled_any_pokes_pending(%struct.cpuidle_coupled* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %155
  %161 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %162 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %165 = call i32 @cpuidle_coupled_set_done(i32 %163, %struct.cpuidle_coupled* %164)
  %166 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %167 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %168 = getelementptr inbounds %struct.cpuidle_coupled, %struct.cpuidle_coupled* %167, i32 0, i32 1
  %169 = call i32 @cpuidle_coupled_parallel_barrier(%struct.cpuidle_device* %166, i32* %168)
  br label %45

170:                                              ; preds = %155
  %171 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %172 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %173 = call i32 @cpuidle_coupled_get_state(%struct.cpuidle_device* %171, %struct.cpuidle_coupled* %172)
  store i32 %173, i32* %7, align 4
  %174 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %175 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @cpuidle_enter_state(%struct.cpuidle_device* %174, %struct.cpuidle_driver* %175, i32 %176)
  store i32 %177, i32* %8, align 4
  %178 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %179 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %182 = call i32 @cpuidle_coupled_set_done(i32 %180, %struct.cpuidle_coupled* %181)
  br label %183

183:                                              ; preds = %170, %128, %107, %96
  %184 = call i32 (...) @local_irq_enable()
  br label %185

185:                                              ; preds = %190, %183
  %186 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %9, align 8
  %187 = call i32 @cpuidle_coupled_no_cpus_ready(%struct.cpuidle_coupled* %186)
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = call i32 (...) @cpu_relax()
  br label %185

192:                                              ; preds = %185
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %192, %32, %16
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i64 @cpuidle_coupled_clear_pokes(i32) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @cpuidle_enter_state(%struct.cpuidle_device*, %struct.cpuidle_driver*, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

declare dso_local i32 @cpuidle_coupled_set_waiting(i32, %struct.cpuidle_coupled*, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @cpuidle_coupled_poke_others(i32, %struct.cpuidle_coupled*) #1

declare dso_local i32 @cpuidle_coupled_cpus_waiting(%struct.cpuidle_coupled*) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @cpuidle_coupled_set_not_waiting(i32, %struct.cpuidle_coupled*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @cpuidle_coupled_set_ready(%struct.cpuidle_coupled*) #1

declare dso_local i32 @cpuidle_coupled_cpus_ready(%struct.cpuidle_coupled*) #1

declare dso_local i32 @cpuidle_coupled_set_not_ready(%struct.cpuidle_coupled*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @cpuidle_coupled_any_pokes_pending(%struct.cpuidle_coupled*) #1

declare dso_local i32 @cpuidle_coupled_set_done(i32, %struct.cpuidle_coupled*) #1

declare dso_local i32 @cpuidle_coupled_parallel_barrier(%struct.cpuidle_device*, i32*) #1

declare dso_local i32 @cpuidle_coupled_get_state(%struct.cpuidle_device*, %struct.cpuidle_coupled*) #1

declare dso_local i32 @cpuidle_coupled_no_cpus_ready(%struct.cpuidle_coupled*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
