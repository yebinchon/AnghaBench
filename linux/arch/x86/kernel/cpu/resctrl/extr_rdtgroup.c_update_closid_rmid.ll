; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_update_closid_rmid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_update_closid_rmid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.rdtgroup = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpumask*, %struct.rdtgroup*)* @update_closid_rmid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_closid_rmid(%struct.cpumask* %0, %struct.rdtgroup* %1) #0 {
  %3 = alloca %struct.cpumask*, align 8
  %4 = alloca %struct.rdtgroup*, align 8
  %5 = alloca i32, align 4
  store %struct.cpumask* %0, %struct.cpumask** %3, align 8
  store %struct.rdtgroup* %1, %struct.rdtgroup** %4, align 8
  %6 = call i32 (...) @get_cpu()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %9 = call i64 @cpumask_test_cpu(i32 %7, %struct.cpumask* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.rdtgroup*, %struct.rdtgroup** %4, align 8
  %13 = call i32 @update_cpu_closid_rmid(%struct.rdtgroup* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %16 = load %struct.rdtgroup*, %struct.rdtgroup** %4, align 8
  %17 = call i32 @smp_call_function_many(%struct.cpumask* %15, i32 (%struct.rdtgroup*)* @update_cpu_closid_rmid, %struct.rdtgroup* %16, i32 1)
  %18 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @cpumask_test_cpu(i32, %struct.cpumask*) #1

declare dso_local i32 @update_cpu_closid_rmid(%struct.rdtgroup*) #1

declare dso_local i32 @smp_call_function_many(%struct.cpumask*, i32 (%struct.rdtgroup*)*, %struct.rdtgroup*, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
