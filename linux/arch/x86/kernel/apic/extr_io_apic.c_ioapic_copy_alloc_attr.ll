; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_ioapic_copy_alloc_attr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_ioapic_copy_alloc_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_alloc_info = type { i32, i32, i32, i32, i32, i32, i32 }

@X86_IRQ_ALLOC_TYPE_IOAPIC = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@IOAPIC_LEVEL = common dso_local global i32 0, align 4
@IOAPIC_POL_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_alloc_info*, %struct.irq_alloc_info*, i32, i32, i32)* @ioapic_copy_alloc_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioapic_copy_alloc_attr(%struct.irq_alloc_info* %0, %struct.irq_alloc_info* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.irq_alloc_info*, align 8
  %7 = alloca %struct.irq_alloc_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.irq_alloc_info* %0, %struct.irq_alloc_info** %6, align 8
  store %struct.irq_alloc_info* %1, %struct.irq_alloc_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %6, align 8
  %14 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %7, align 8
  %15 = call i32 @copy_irq_alloc_info(%struct.irq_alloc_info* %13, %struct.irq_alloc_info* %14)
  %16 = load i32, i32* @X86_IRQ_ALLOC_TYPE_IOAPIC, align 4
  %17 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %6, align 8
  %18 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @mpc_ioapic_id(i32 %19)
  %21 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %6, align 8
  %22 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %6, align 8
  %25 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %6, align 8
  %27 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %7, align 8
  %29 = icmp ne %struct.irq_alloc_info* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %5
  %31 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %7, align 8
  %32 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %7, align 8
  %37 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %6, align 8
  %40 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %7, align 8
  %42 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %6, align 8
  %45 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %7, align 8
  %47 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %6, align 8
  %50 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  br label %73

51:                                               ; preds = %30, %5
  %52 = load i32, i32* @NUMA_NO_NODE, align 4
  %53 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %6, align 8
  %54 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @acpi_get_override_irq(i32 %55, i32* %11, i32* %12)
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %6, align 8
  %61 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %6, align 8
  %64 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  br label %72

65:                                               ; preds = %51
  %66 = load i32, i32* @IOAPIC_LEVEL, align 4
  %67 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %6, align 8
  %68 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @IOAPIC_POL_LOW, align 4
  %70 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %6, align 8
  %71 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %58
  br label %73

73:                                               ; preds = %72, %35
  ret void
}

declare dso_local i32 @copy_irq_alloc_info(%struct.irq_alloc_info*, %struct.irq_alloc_info*) #1

declare dso_local i32 @mpc_ioapic_id(i32) #1

declare dso_local i64 @acpi_get_override_irq(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
