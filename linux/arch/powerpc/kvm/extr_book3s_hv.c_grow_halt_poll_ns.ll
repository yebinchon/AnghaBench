; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_grow_halt_poll_ns.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_grow_halt_poll_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcore = type { i32 }

@halt_poll_ns_grow = common dso_local global i32 0, align 4
@halt_poll_ns_grow_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_vcore*)* @grow_halt_poll_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grow_halt_poll_ns(%struct.kvmppc_vcore* %0) #0 {
  %2 = alloca %struct.kvmppc_vcore*, align 8
  store %struct.kvmppc_vcore* %0, %struct.kvmppc_vcore** %2, align 8
  %3 = load i32, i32* @halt_poll_ns_grow, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %21

6:                                                ; preds = %1
  %7 = load i32, i32* @halt_poll_ns_grow, align 4
  %8 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %9 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %13 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @halt_poll_ns_grow_start, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load i32, i32* @halt_poll_ns_grow_start, align 4
  %19 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %2, align 8
  %20 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %5, %17, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
