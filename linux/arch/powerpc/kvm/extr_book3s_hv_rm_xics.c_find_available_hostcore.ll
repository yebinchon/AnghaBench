; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_find_available_hostcore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_find_available_hostcore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.kvmppc_host_rm_core* }
%struct.kvmppc_host_rm_core = type { i32 }

@threads_shift = common dso_local global i32 0, align 4
@kvmppc_host_rm_ops_hv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @find_available_hostcore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_available_hostcore(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_host_rm_core*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32 (...) @smp_processor_id()
  %7 = load i32, i32* @threads_shift, align 4
  %8 = ashr i32 %6, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvmppc_host_rm_ops_hv, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.kvmppc_host_rm_core*, %struct.kvmppc_host_rm_core** %10, align 8
  store %struct.kvmppc_host_rm_core* %11, %struct.kvmppc_host_rm_core** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.kvmppc_host_rm_core*, %struct.kvmppc_host_rm_core** %5, align 8
  %14 = call i32 (...) @cpu_nr_cores()
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @grab_next_hostcore(i32 %12, %struct.kvmppc_host_rm_core* %13, i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.kvmppc_host_rm_core*, %struct.kvmppc_host_rm_core** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @grab_next_hostcore(i32 %20, %struct.kvmppc_host_rm_core* %21, i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %19, %1
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @grab_next_hostcore(i32, %struct.kvmppc_host_rm_core*, i32, i32) #1

declare dso_local i32 @cpu_nr_cores(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
