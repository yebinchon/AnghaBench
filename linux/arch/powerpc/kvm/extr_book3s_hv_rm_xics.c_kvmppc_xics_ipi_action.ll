; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_kvmppc_xics_ipi_action.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_kvmppc_xics_ipi_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.kvmppc_host_rm_core* }
%struct.kvmppc_host_rm_core = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i64 }

@threads_shift = common dso_local global i32 0, align 4
@kvmppc_host_rm_ops_hv = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_xics_ipi_action() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvmppc_host_rm_core*, align 8
  %4 = call i32 (...) @smp_processor_id()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @threads_shift, align 4
  %7 = lshr i32 %5, %6
  store i32 %7, i32* %1, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvmppc_host_rm_ops_hv, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.kvmppc_host_rm_core*, %struct.kvmppc_host_rm_core** %9, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.kvmppc_host_rm_core, %struct.kvmppc_host_rm_core* %10, i64 %12
  store %struct.kvmppc_host_rm_core* %13, %struct.kvmppc_host_rm_core** %3, align 8
  %14 = load %struct.kvmppc_host_rm_core*, %struct.kvmppc_host_rm_core** %3, align 8
  %15 = getelementptr inbounds %struct.kvmppc_host_rm_core, %struct.kvmppc_host_rm_core* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %0
  %19 = load %struct.kvmppc_host_rm_core*, %struct.kvmppc_host_rm_core** %3, align 8
  %20 = getelementptr inbounds %struct.kvmppc_host_rm_core, %struct.kvmppc_host_rm_core* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.kvmppc_host_rm_core*, %struct.kvmppc_host_rm_core** %3, align 8
  %24 = getelementptr inbounds %struct.kvmppc_host_rm_core, %struct.kvmppc_host_rm_core* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @rm_host_ipi_action(i64 %22, i32* %25)
  %27 = load %struct.kvmppc_host_rm_core*, %struct.kvmppc_host_rm_core** %3, align 8
  %28 = getelementptr inbounds %struct.kvmppc_host_rm_core, %struct.kvmppc_host_rm_core* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = call i32 (...) @smp_wmb()
  %30 = load %struct.kvmppc_host_rm_core*, %struct.kvmppc_host_rm_core** %3, align 8
  %31 = getelementptr inbounds %struct.kvmppc_host_rm_core, %struct.kvmppc_host_rm_core* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %18, %0
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @rm_host_ipi_action(i64, i32*) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
