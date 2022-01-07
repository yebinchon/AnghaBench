; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_update_cpu_closid_rmid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_update_cpu_closid_rmid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.rdtgroup = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@pqr_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @update_cpu_closid_rmid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cpu_closid_rmid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rdtgroup*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.rdtgroup*
  store %struct.rdtgroup* %5, %struct.rdtgroup** %3, align 8
  %6 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %7 = icmp ne %struct.rdtgroup* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pqr_state, i32 0, i32 1), align 4
  %10 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %11 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @this_cpu_write(i32 %9, i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pqr_state, i32 0, i32 0), align 4
  %15 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %16 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @this_cpu_write(i32 %14, i32 %18)
  br label %20

20:                                               ; preds = %8, %1
  %21 = call i32 (...) @resctrl_sched_in()
  ret void
}

declare dso_local i32 @this_cpu_write(i32, i32) #1

declare dso_local i32 @resctrl_sched_in(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
