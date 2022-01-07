; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_vcore_preempt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_vcore_preempt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcore = type { i64, i32, i32, i32, i32 }
%struct.preempted_vcore_list = type { i32, i32 }

@preempted_vcores = common dso_local global i32 0, align 4
@VCORE_PREEMPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_vcore*)* @kvmppc_vcore_preempt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_vcore_preempt(%struct.kvmppc_vcore* %0) #0 {
  %2 = alloca %struct.kvmppc_vcore*, align 8
  %3 = alloca %struct.preempted_vcore_list*, align 8
  store %struct.kvmppc_vcore* %0, %struct.kvmppc_vcore** %2, align 8
  %4 = call %struct.preempted_vcore_list* @this_cpu_ptr(i32* @preempted_vcores)
  store %struct.preempted_vcore_list* %4, %struct.preempted_vcore_list** %3, align 8
  %5 = load i32, i32* @VCORE_PREEMPT, align 4
  %6 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %7 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 4
  %8 = call i32 (...) @smp_processor_id()
  %9 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %10 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %12 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %15 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @threads_per_vcore(i32 %16)
  %18 = icmp slt i64 %13, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.preempted_vcore_list*, %struct.preempted_vcore_list** %3, align 8
  %21 = getelementptr inbounds %struct.preempted_vcore_list, %struct.preempted_vcore_list* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %24 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %23, i32 0, i32 1
  %25 = load %struct.preempted_vcore_list*, %struct.preempted_vcore_list** %3, align 8
  %26 = getelementptr inbounds %struct.preempted_vcore_list, %struct.preempted_vcore_list* %25, i32 0, i32 1
  %27 = call i32 @list_add_tail(i32* %24, i32* %26)
  %28 = load %struct.preempted_vcore_list*, %struct.preempted_vcore_list** %3, align 8
  %29 = getelementptr inbounds %struct.preempted_vcore_list, %struct.preempted_vcore_list* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  br label %31

31:                                               ; preds = %19, %1
  %32 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %33 = call i32 @kvmppc_core_start_stolen(%struct.kvmppc_vcore* %32)
  ret void
}

declare dso_local %struct.preempted_vcore_list* @this_cpu_ptr(i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @threads_per_vcore(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvmppc_core_start_stolen(%struct.kvmppc_vcore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
