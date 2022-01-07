; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_apic_update_vector.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_apic_update_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.apic_chip_data = type { i32, i32, i32, i32, i32 }
%struct.irq_desc = type { i32 }

@vector_lock = common dso_local global i32 0, align 4
@MANAGED_IRQ_SHUTDOWN_VECTOR = common dso_local global i32 0, align 4
@vector_matrix = common dso_local global i32 0, align 4
@vector_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, i32, i32)* @apic_update_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apic_update_vector(%struct.irq_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.apic_chip_data*, align 8
  %8 = alloca %struct.irq_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = call %struct.apic_chip_data* @apic_chip_data(%struct.irq_data* %10)
  store %struct.apic_chip_data* %11, %struct.apic_chip_data** %7, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = call %struct.irq_desc* @irq_data_to_desc(%struct.irq_data* %12)
  store %struct.irq_desc* %13, %struct.irq_desc** %8, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = call i32 @irqd_affinity_is_managed(%struct.irq_data* %14)
  store i32 %15, i32* %9, align 4
  %16 = call i32 @lockdep_assert_held(i32* @vector_lock)
  %17 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %23 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %26 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @trace_vector_update(i32 %19, i32 %20, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %30 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %29, i32 0, i32 2
  store i32 0, i32* %30, align 4
  %31 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %32 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %37 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MANAGED_IRQ_SHUTDOWN_VECTOR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %3
  br label %72

42:                                               ; preds = %35
  %43 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %44 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @cpu_online(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %50 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %49, i32 0, i32 3
  store i32 1, i32* %50, align 4
  %51 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %52 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %55 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %57 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %60 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  br label %71

61:                                               ; preds = %42
  %62 = load i32, i32* @vector_matrix, align 4
  %63 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %64 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %67 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @irq_matrix_free(i32 %62, i32 %65, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %61, %48
  br label %72

72:                                               ; preds = %71, %41
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %75 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %78 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @vector_irq, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call %struct.irq_desc** @per_cpu(i32 %79, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.irq_desc*, %struct.irq_desc** %81, i64 %83
  %85 = load %struct.irq_desc*, %struct.irq_desc** %84, align 8
  %86 = call i32 @IS_ERR_OR_NULL(%struct.irq_desc* %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUG_ON(i32 %89)
  %91 = load %struct.irq_desc*, %struct.irq_desc** %8, align 8
  %92 = load i32, i32* @vector_irq, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call %struct.irq_desc** @per_cpu(i32 %92, i32 %93)
  %95 = load i32, i32* %5, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.irq_desc*, %struct.irq_desc** %94, i64 %96
  store %struct.irq_desc* %91, %struct.irq_desc** %97, align 8
  ret void
}

declare dso_local %struct.apic_chip_data* @apic_chip_data(%struct.irq_data*) #1

declare dso_local %struct.irq_desc* @irq_data_to_desc(%struct.irq_data*) #1

declare dso_local i32 @irqd_affinity_is_managed(%struct.irq_data*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @trace_vector_update(i32, i32, i32, i32, i32) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i32 @irq_matrix_free(i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.irq_desc*) #1

declare dso_local %struct.irq_desc** @per_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
