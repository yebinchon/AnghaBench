; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_salinfo.c_salinfo_log_clear.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_salinfo.c_salinfo_log_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.salinfo_data = type { i64, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@data_saved_lock = common dso_local global i32 0, align 4
@STATE_NO_DATA = common dso_local global i64 0, align 8
@sal_log_severity_corrected = common dso_local global i64 0, align 8
@salinfo_log_clear_cpu = common dso_local global i32 0, align 4
@STATE_LOG_RECORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.salinfo_data*, i32)* @salinfo_log_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @salinfo_log_clear(%struct.salinfo_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.salinfo_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i64, align 8
  store %struct.salinfo_data* %0, %struct.salinfo_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @data_saved_lock, i64 %8)
  %10 = load i64, i64* @STATE_NO_DATA, align 8
  %11 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %12 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %15 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %14, i32 0, i32 2
  %16 = call i32 @cpumask_test_cpu(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* @data_saved_lock, i64 %19)
  store i32 0, i32* %3, align 4
  br label %78

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %24 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %23, i32 0, i32 2
  %25 = call i32 @cpumask_clear_cpu(i32 %22, i32* %24)
  %26 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %27 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %32 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %33 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, 1
  %36 = call i32 @shift1_data_saved(%struct.salinfo_data* %31, i64 %35)
  %37 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %38 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %30, %21
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* @data_saved_lock, i64 %40)
  %42 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %43 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %45, %struct.TYPE_2__** %6, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @sal_log_severity_corrected, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @salinfo_log_clear_cpu, align 4
  %54 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %55 = call i32 @work_on_cpu_safe(i32 %52, i32 %53, %struct.salinfo_data* %54)
  br label %56

56:                                               ; preds = %51, %39
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %59 = call i32 @salinfo_log_new_read(i32 %57, %struct.salinfo_data* %58)
  %60 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %61 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @STATE_LOG_RECORD, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %56
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_lock_irqsave(i32* @data_saved_lock, i64 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %70 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %69, i32 0, i32 2
  %71 = call i32 @cpumask_set_cpu(i32 %68, i32* %70)
  %72 = load %struct.salinfo_data*, %struct.salinfo_data** %4, align 8
  %73 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %72, i32 0, i32 1
  %74 = call i32 @wake_up_interruptible(i32* %73)
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* @data_saved_lock, i64 %75)
  br label %77

77:                                               ; preds = %65, %56
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %18
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

declare dso_local i32 @shift1_data_saved(%struct.salinfo_data*, i64) #1

declare dso_local i32 @work_on_cpu_safe(i32, i32, %struct.salinfo_data*) #1

declare dso_local i32 @salinfo_log_new_read(i32, %struct.salinfo_data*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
