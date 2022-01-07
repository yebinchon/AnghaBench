; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_process.c_tls_thread_switch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_process.c_tls_thread_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@tpidrro_el0 = common dso_local global i32 0, align 4
@tpidr_el0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @tls_thread_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_thread_switch(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %3 = call i32 (...) @tls_preserve_current_state()
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = call i32 @task_thread_info(%struct.task_struct* %4)
  %6 = call i64 @is_compat_thread(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @tpidrro_el0, align 4
  %15 = call i32 @write_sysreg(i32 %13, i32 %14)
  br label %23

16:                                               ; preds = %1
  %17 = call i32 (...) @arm64_kernel_unmapped_at_el0()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @tpidrro_el0, align 4
  %21 = call i32 @write_sysreg(i32 0, i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  br label %23

23:                                               ; preds = %22, %8
  %24 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %25 = call i32* @task_user_tls(%struct.task_struct* %24)
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @tpidr_el0, align 4
  %28 = call i32 @write_sysreg(i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @tls_preserve_current_state(...) #1

declare dso_local i64 @is_compat_thread(i32) #1

declare dso_local i32 @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @write_sysreg(i32, i32) #1

declare dso_local i32 @arm64_kernel_unmapped_at_el0(...) #1

declare dso_local i32* @task_user_tls(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
