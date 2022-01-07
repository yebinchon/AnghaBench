; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_irq.c_uv_program_mmr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_irq.c_uv_program_mmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.irq_cfg = type { i32, i32 }
%struct.uv_irq_2_mmr_pnode = type { i32, i32 }
%struct.uv_IO_APIC_route_entry = type { i32, i64, i64, i64, i32, i32, i32 }

@apic = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_cfg*, %struct.uv_irq_2_mmr_pnode*)* @uv_program_mmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv_program_mmr(%struct.irq_cfg* %0, %struct.uv_irq_2_mmr_pnode* %1) #0 {
  %3 = alloca %struct.irq_cfg*, align 8
  %4 = alloca %struct.uv_irq_2_mmr_pnode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.uv_IO_APIC_route_entry*, align 8
  store %struct.irq_cfg* %0, %struct.irq_cfg** %3, align 8
  store %struct.uv_irq_2_mmr_pnode* %1, %struct.uv_irq_2_mmr_pnode** %4, align 8
  %7 = call i32 @BUILD_BUG_ON(i32 1)
  store i64 0, i64* %5, align 8
  %8 = bitcast i64* %5 to %struct.uv_IO_APIC_route_entry*
  store %struct.uv_IO_APIC_route_entry* %8, %struct.uv_IO_APIC_route_entry** %6, align 8
  %9 = load %struct.irq_cfg*, %struct.irq_cfg** %3, align 8
  %10 = getelementptr inbounds %struct.irq_cfg, %struct.irq_cfg* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %6, align 8
  %13 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %6, align 8
  %18 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %6, align 8
  %23 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %6, align 8
  %25 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %6, align 8
  %27 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %6, align 8
  %29 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.irq_cfg*, %struct.irq_cfg** %3, align 8
  %31 = getelementptr inbounds %struct.irq_cfg, %struct.irq_cfg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %6, align 8
  %34 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.uv_irq_2_mmr_pnode*, %struct.uv_irq_2_mmr_pnode** %4, align 8
  %36 = getelementptr inbounds %struct.uv_irq_2_mmr_pnode, %struct.uv_irq_2_mmr_pnode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.uv_irq_2_mmr_pnode*, %struct.uv_irq_2_mmr_pnode** %4, align 8
  %39 = getelementptr inbounds %struct.uv_irq_2_mmr_pnode, %struct.uv_irq_2_mmr_pnode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @uv_write_global_mmr64(i32 %37, i32 %40, i64 %41)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @uv_write_global_mmr64(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
