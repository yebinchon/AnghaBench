; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_irq_comm.c_kvm_set_msi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_irq_comm.c_kvm_set_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.kvm_kernel_irq_routing_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.kvm_lapic_irq = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@MSI_ADDR_DEST_ID_MASK = common dso_local global i32 0, align 4
@MSI_ADDR_DEST_ID_SHIFT = common dso_local global i32 0, align 4
@MSI_DATA_VECTOR_MASK = common dso_local global i32 0, align 4
@MSI_DATA_VECTOR_SHIFT = common dso_local global i32 0, align 4
@MSI_ADDR_DEST_MODE_SHIFT = common dso_local global i32 0, align 4
@MSI_DATA_TRIGGER_SHIFT = common dso_local global i32 0, align 4
@MSI_ADDR_REDIRECTION_LOWPRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_set_msi_irq(%struct.kvm* %0, %struct.kvm_kernel_irq_routing_entry* %1, %struct.kvm_lapic_irq* %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_kernel_irq_routing_entry*, align 8
  %6 = alloca %struct.kvm_lapic_irq*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_kernel_irq_routing_entry* %1, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  store %struct.kvm_lapic_irq* %2, %struct.kvm_lapic_irq** %6, align 8
  %7 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %8 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.kvm*, %struct.kvm** %4, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %21, 32
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %16
  %25 = phi i32 [ %22, %16 ], [ 0, %23 ]
  %26 = or i32 %10, %25
  %27 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @trace_kvm_msi_set_irq(i32 %26, i32 %30)
  %32 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MSI_ADDR_DEST_ID_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @MSI_ADDR_DEST_ID_SHIFT, align 4
  %39 = ashr i32 %37, %38
  %40 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %6, align 8
  %41 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.kvm*, %struct.kvm** %4, align 8
  %43 = getelementptr inbounds %struct.kvm, %struct.kvm* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %24
  %48 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %49 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @MSI_ADDR_EXT_DEST_ID(i64 %51)
  %53 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %6, align 8
  %54 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %47, %24
  %58 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %59 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MSI_DATA_VECTOR_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @MSI_DATA_VECTOR_SHIFT, align 4
  %65 = ashr i32 %63, %64
  %66 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %6, align 8
  %67 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @MSI_ADDR_DEST_MODE_SHIFT, align 4
  %69 = shl i32 1, %68
  %70 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %71 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %69, %73
  %75 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %6, align 8
  %76 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @MSI_DATA_TRIGGER_SHIFT, align 4
  %78 = shl i32 1, %77
  %79 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %80 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %78, %82
  %84 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %6, align 8
  %85 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %87 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 1792
  %91 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %6, align 8
  %92 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %94 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @MSI_ADDR_REDIRECTION_LOWPRI, align 4
  %98 = and i32 %96, %97
  %99 = icmp sgt i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %6, align 8
  %102 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %6, align 8
  %104 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %103, i32 0, i32 6
  store i32 1, i32* %104, align 8
  %105 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %6, align 8
  %106 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %105, i32 0, i32 7
  store i64 0, i64* %106, align 8
  ret void
}

declare dso_local i32 @trace_kvm_msi_set_irq(i32, i32) #1

declare dso_local i32 @MSI_ADDR_EXT_DEST_ID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
