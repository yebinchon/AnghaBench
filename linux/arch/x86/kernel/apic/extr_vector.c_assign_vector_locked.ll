; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_assign_vector_locked.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_assign_vector_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.cpumask = type { i32 }
%struct.apic_chip_data = type { i32, i32, i32, i32, i64 }

@vector_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@vector_matrix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.cpumask*)* @assign_vector_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_vector_locked(%struct.irq_data* %0, %struct.cpumask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca %struct.apic_chip_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = call %struct.apic_chip_data* @apic_chip_data(%struct.irq_data* %10)
  store %struct.apic_chip_data* %11, %struct.apic_chip_data** %6, align 8
  %12 = load %struct.apic_chip_data*, %struct.apic_chip_data** %6, align 8
  %13 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.apic_chip_data*, %struct.apic_chip_data** %6, align 8
  %16 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.apic_chip_data*, %struct.apic_chip_data** %6, align 8
  %19 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = call i32 @lockdep_assert_held(i32* @vector_lock)
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @cpu_online(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %31 = call i64 @cpumask_test_cpu(i32 %29, %struct.cpumask* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %72

34:                                               ; preds = %28, %24, %2
  %35 = load %struct.apic_chip_data*, %struct.apic_chip_data** %6, align 8
  %36 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.apic_chip_data*, %struct.apic_chip_data** %6, align 8
  %41 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %40, i32 0, i32 3
  %42 = call i32 @hlist_unhashed(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %72

47:                                               ; preds = %39
  %48 = load i32, i32* @vector_matrix, align 4
  %49 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @irq_matrix_alloc(i32 %48, %struct.cpumask* %49, i32 %50, i32* %8)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %53 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @trace_vector_alloc(i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %72

63:                                               ; preds = %47
  %64 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @apic_update_vector(%struct.irq_data* %64, i32 %65, i32 %66)
  %68 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @apic_update_irq_cfg(%struct.irq_data* %68, i32 %69, i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %63, %61, %44, %33
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.apic_chip_data* @apic_chip_data(%struct.irq_data*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i64 @cpumask_test_cpu(i32, %struct.cpumask*) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @irq_matrix_alloc(i32, %struct.cpumask*, i32, i32*) #1

declare dso_local i32 @trace_vector_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @apic_update_vector(%struct.irq_data*, i32, i32) #1

declare dso_local i32 @apic_update_irq_cfg(%struct.irq_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
