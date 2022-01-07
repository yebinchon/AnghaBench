; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_vio.c_kvm_spapr_tce_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_vio.c_kvm_spapr_tce_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, %struct.page*, %struct.TYPE_4__* }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.kvmppc_spapr_tce_table* }
%struct.kvmppc_spapr_tce_table = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @kvm_spapr_tce_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_spapr_tce_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.kvmppc_spapr_tce_table*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %6 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %7 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.kvmppc_spapr_tce_table*, %struct.kvmppc_spapr_tce_table** %11, align 8
  store %struct.kvmppc_spapr_tce_table* %12, %struct.kvmppc_spapr_tce_table** %4, align 8
  %13 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %14 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.kvmppc_spapr_tce_table*, %struct.kvmppc_spapr_tce_table** %4, align 8
  %17 = getelementptr inbounds %struct.kvmppc_spapr_tce_table, %struct.kvmppc_spapr_tce_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @kvmppc_tce_pages(i32 %18)
  %20 = icmp sge i64 %15, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %22, i32* %2, align 4
  br label %39

23:                                               ; preds = %1
  %24 = load %struct.kvmppc_spapr_tce_table*, %struct.kvmppc_spapr_tce_table** %4, align 8
  %25 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %26 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.page* @kvm_spapr_get_tce_page(%struct.kvmppc_spapr_tce_table* %24, i64 %27)
  store %struct.page* %28, %struct.page** %5, align 8
  %29 = load %struct.page*, %struct.page** %5, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %32, i32* %2, align 4
  br label %39

33:                                               ; preds = %23
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = call i32 @get_page(%struct.page* %34)
  %36 = load %struct.page*, %struct.page** %5, align 8
  %37 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %38 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %37, i32 0, i32 1
  store %struct.page* %36, %struct.page** %38, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %31, %21
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @kvmppc_tce_pages(i32) #1

declare dso_local %struct.page* @kvm_spapr_get_tce_page(%struct.kvmppc_spapr_tce_table*, i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
