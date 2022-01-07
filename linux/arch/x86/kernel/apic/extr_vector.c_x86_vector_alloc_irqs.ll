; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_x86_vector_alloc_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_x86_vector_alloc_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_alloc_info = type { i32 }
%struct.apic_chip_data = type { i32 }
%struct.irq_data = type { i32, %struct.apic_chip_data*, i32* }

@disable_apic = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@X86_IRQ_ALLOC_CONTIGUOUS_VECTORS = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lapic_controller = common dso_local global i32 0, align 4
@X86_IRQ_ALLOC_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @x86_vector_alloc_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x86_vector_alloc_irqs(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.irq_alloc_info*, align 8
  %11 = alloca %struct.apic_chip_data*, align 8
  %12 = alloca %struct.irq_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.irq_alloc_info*
  store %struct.irq_alloc_info* %17, %struct.irq_alloc_info** %10, align 8
  %18 = load i64, i64* @disable_apic, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %126

23:                                               ; preds = %4
  %24 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %10, align 8
  %25 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @X86_IRQ_ALLOC_CONTIGUOUS_VECTORS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @ENOSYS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %126

36:                                               ; preds = %30, %23
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %116, %36
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %119

41:                                               ; preds = %37
  %42 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %13, align 4
  %45 = add i32 %43, %44
  %46 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %42, i32 %45)
  store %struct.irq_data* %46, %struct.irq_data** %12, align 8
  %47 = load %struct.irq_data*, %struct.irq_data** %12, align 8
  %48 = icmp ne %struct.irq_data* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.irq_data*, %struct.irq_data** %12, align 8
  %53 = call i32 @irq_data_get_node(%struct.irq_data* %52)
  store i32 %53, i32* %15, align 4
  %54 = load %struct.irq_data*, %struct.irq_data** %12, align 8
  %55 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %54, i32 0, i32 1
  %56 = load %struct.apic_chip_data*, %struct.apic_chip_data** %55, align 8
  %57 = call i32 @WARN_ON_ONCE(%struct.apic_chip_data* %56)
  %58 = load i32, i32* %15, align 4
  %59 = call %struct.apic_chip_data* @alloc_apic_chip_data(i32 %58)
  store %struct.apic_chip_data* %59, %struct.apic_chip_data** %11, align 8
  %60 = load %struct.apic_chip_data*, %struct.apic_chip_data** %11, align 8
  %61 = icmp ne %struct.apic_chip_data* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %41
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %14, align 4
  br label %120

65:                                               ; preds = %41
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %13, align 4
  %68 = add i32 %66, %67
  %69 = load %struct.apic_chip_data*, %struct.apic_chip_data** %11, align 8
  %70 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.irq_data*, %struct.irq_data** %12, align 8
  %72 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %71, i32 0, i32 2
  store i32* @lapic_controller, i32** %72, align 8
  %73 = load %struct.apic_chip_data*, %struct.apic_chip_data** %11, align 8
  %74 = load %struct.irq_data*, %struct.irq_data** %12, align 8
  %75 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %74, i32 0, i32 1
  store %struct.apic_chip_data* %73, %struct.apic_chip_data** %75, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %13, align 4
  %78 = add i32 %76, %77
  %79 = load %struct.irq_data*, %struct.irq_data** %12, align 8
  %80 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.irq_data*, %struct.irq_data** %12, align 8
  %82 = call i32 @irqd_set_single_target(%struct.irq_data* %81)
  %83 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %10, align 8
  %84 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @X86_IRQ_ALLOC_LEGACY, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %65
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %13, align 4
  %92 = add i32 %90, %91
  %93 = load %struct.irq_data*, %struct.irq_data** %12, align 8
  %94 = load %struct.apic_chip_data*, %struct.apic_chip_data** %11, align 8
  %95 = call i32 @vector_configure_legacy(i32 %92, %struct.irq_data* %93, %struct.apic_chip_data* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %89
  br label %116

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %65
  %100 = load %struct.irq_data*, %struct.irq_data** %12, align 8
  %101 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %10, align 8
  %102 = call i32 @assign_irq_vector_policy(%struct.irq_data* %100, %struct.irq_alloc_info* %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %13, align 4
  %105 = add i32 %103, %104
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @trace_vector_setup(i32 %105, i32 0, i32 %106)
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %99
  %111 = load %struct.irq_data*, %struct.irq_data** %12, align 8
  %112 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %111, i32 0, i32 1
  store %struct.apic_chip_data* null, %struct.apic_chip_data** %112, align 8
  %113 = load %struct.apic_chip_data*, %struct.apic_chip_data** %11, align 8
  %114 = call i32 @free_apic_chip_data(%struct.apic_chip_data* %113)
  br label %120

115:                                              ; preds = %99
  br label %116

116:                                              ; preds = %115, %97
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %37

119:                                              ; preds = %37
  store i32 0, i32* %5, align 4
  br label %126

120:                                              ; preds = %110, %62
  %121 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @x86_vector_free_irqs(%struct.irq_domain* %121, i32 %122, i32 %123)
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %120, %119, %33, %20
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @irq_data_get_node(%struct.irq_data*) #1

declare dso_local i32 @WARN_ON_ONCE(%struct.apic_chip_data*) #1

declare dso_local %struct.apic_chip_data* @alloc_apic_chip_data(i32) #1

declare dso_local i32 @irqd_set_single_target(%struct.irq_data*) #1

declare dso_local i32 @vector_configure_legacy(i32, %struct.irq_data*, %struct.apic_chip_data*) #1

declare dso_local i32 @assign_irq_vector_policy(%struct.irq_data*, %struct.irq_alloc_info*) #1

declare dso_local i32 @trace_vector_setup(i32, i32, i32) #1

declare dso_local i32 @free_apic_chip_data(%struct.apic_chip_data*) #1

declare dso_local i32 @x86_vector_free_irqs(%struct.irq_domain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
