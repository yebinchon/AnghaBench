; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_clear_irq_vector.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_clear_irq_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.apic_chip_data = type { i32, i32, i32, i64, i32, i32 }

@vector_lock = common dso_local global i32 0, align 4
@VECTOR_SHUTDOWN = common dso_local global i32 0, align 4
@vector_irq = common dso_local global i32 0, align 4
@vector_matrix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @clear_irq_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_irq_vector(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.apic_chip_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.apic_chip_data* @apic_chip_data(%struct.irq_data* %6)
  store %struct.apic_chip_data* %7, %struct.apic_chip_data** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call i32 @irqd_affinity_is_managed(%struct.irq_data* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %11 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = call i32 @lockdep_assert_held(i32* @vector_lock)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %80

17:                                               ; preds = %1
  %18 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %23 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %26 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %29 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @trace_vector_clear(i32 %20, i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load i32, i32* @VECTOR_SHUTDOWN, align 4
  %33 = load i32, i32* @vector_irq, align 4
  %34 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %35 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @per_cpu(i32 %33, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %32, i32* %40, align 4
  %41 = load i32, i32* @vector_matrix, align 4
  %42 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %43 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @irq_matrix_free(i32 %41, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %49 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %51 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %17
  br label %80

56:                                               ; preds = %17
  %57 = load i32, i32* @VECTOR_SHUTDOWN, align 4
  %58 = load i32, i32* @vector_irq, align 4
  %59 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %60 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32* @per_cpu(i32 %58, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %57, i32* %65, align 4
  %66 = load i32, i32* @vector_matrix, align 4
  %67 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %68 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @irq_matrix_free(i32 %66, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %74 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %76 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %78 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %77, i32 0, i32 2
  %79 = call i32 @hlist_del_init(i32* %78)
  br label %80

80:                                               ; preds = %56, %55, %16
  ret void
}

declare dso_local %struct.apic_chip_data* @apic_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_affinity_is_managed(%struct.irq_data*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @trace_vector_clear(i32, i32, i32, i32, i32) #1

declare dso_local i32* @per_cpu(i32, i32) #1

declare dso_local i32 @irq_matrix_free(i32, i32, i32, i32) #1

declare dso_local i32 @hlist_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
