; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_alloc_isa_irq_from_domain.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_alloc_isa_irq_from_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_alloc_info = type { i32, i32 }
%struct.mp_chip_data = type { i32 }
%struct.irq_data = type { %struct.mp_chip_data*, i64 }

@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@X86_IRQ_ALLOC_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i32, %struct.irq_alloc_info*)* @alloc_isa_irq_from_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_isa_irq_from_domain(%struct.irq_domain* %0, i32 %1, i32 %2, i32 %3, %struct.irq_alloc_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_domain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.irq_alloc_info*, align 8
  %12 = alloca %struct.mp_chip_data*, align 8
  %13 = alloca %struct.irq_data*, align 8
  %14 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.irq_alloc_info* %4, %struct.irq_alloc_info** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.irq_data* @irq_get_irq_data(i32 %15)
  store %struct.irq_data* %16, %struct.irq_data** %13, align 8
  %17 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %18 = call i32 @ioapic_alloc_attr_node(%struct.irq_alloc_info* %17)
  store i32 %18, i32* %14, align 4
  %19 = load %struct.irq_data*, %struct.irq_data** %13, align 8
  %20 = icmp ne %struct.irq_data* %19, null
  br i1 %20, label %21, label %49

21:                                               ; preds = %5
  %22 = load %struct.irq_data*, %struct.irq_data** %13, align 8
  %23 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %29 = call i32 @mp_check_pin_attr(i32 %27, %struct.irq_alloc_info* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %74

34:                                               ; preds = %26
  %35 = load %struct.irq_data*, %struct.irq_data** %13, align 8
  %36 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %35, i32 0, i32 0
  %37 = load %struct.mp_chip_data*, %struct.mp_chip_data** %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %41 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @__add_pin_to_irq_node(%struct.mp_chip_data* %37, i32 %38, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %74

48:                                               ; preds = %34
  br label %72

49:                                               ; preds = %21, %5
  %50 = load i32, i32* @X86_IRQ_ALLOC_LEGACY, align 4
  %51 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %52 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %59 = call i32 @__irq_domain_alloc_irqs(%struct.irq_domain* %55, i32 %56, i32 1, i32 %57, %struct.irq_alloc_info* %58, i32 1, i32* null)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %49
  %63 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %63, i32 %64)
  store %struct.irq_data* %65, %struct.irq_data** %13, align 8
  %66 = load %struct.irq_data*, %struct.irq_data** %13, align 8
  %67 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %66, i32 0, i32 0
  %68 = load %struct.mp_chip_data*, %struct.mp_chip_data** %67, align 8
  store %struct.mp_chip_data* %68, %struct.mp_chip_data** %12, align 8
  %69 = load %struct.mp_chip_data*, %struct.mp_chip_data** %12, align 8
  %70 = getelementptr inbounds %struct.mp_chip_data, %struct.mp_chip_data* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %62, %49
  br label %72

72:                                               ; preds = %71, %48
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %45, %31
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @ioapic_alloc_attr_node(%struct.irq_alloc_info*) #1

declare dso_local i32 @mp_check_pin_attr(i32, %struct.irq_alloc_info*) #1

declare dso_local i64 @__add_pin_to_irq_node(%struct.mp_chip_data*, i32, i32, i32) #1

declare dso_local i32 @__irq_domain_alloc_irqs(%struct.irq_domain*, i32, i32, i32, %struct.irq_alloc_info*, i32, i32*) #1

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
