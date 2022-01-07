; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_salinfo.c_salinfo_cpu_online.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_salinfo.c_salinfo_cpu_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.salinfo_data = type { i32, i32 }

@salinfo_data = common dso_local global %struct.salinfo_data* null, align 8
@data_saved_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @salinfo_cpu_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @salinfo_cpu_online(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.salinfo_data*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load %struct.salinfo_data*, %struct.salinfo_data** @salinfo_data, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.salinfo_data* %6)
  store i32 %7, i32* %4, align 4
  %8 = call i32 @spin_lock_irq(i32* @data_saved_lock)
  store i32 0, i32* %3, align 4
  %9 = load %struct.salinfo_data*, %struct.salinfo_data** @salinfo_data, align 8
  store %struct.salinfo_data* %9, %struct.salinfo_data** %5, align 8
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.salinfo_data*, %struct.salinfo_data** %5, align 8
  %17 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %16, i32 0, i32 1
  %18 = call i32 @cpumask_set_cpu(i32 %15, i32* %17)
  %19 = load %struct.salinfo_data*, %struct.salinfo_data** %5, align 8
  %20 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %19, i32 0, i32 0
  %21 = call i32 @wake_up_interruptible(i32* %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %3, align 4
  %25 = load %struct.salinfo_data*, %struct.salinfo_data** %5, align 8
  %26 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %25, i32 1
  store %struct.salinfo_data* %26, %struct.salinfo_data** %5, align 8
  br label %10

27:                                               ; preds = %10
  %28 = call i32 @spin_unlock_irq(i32* @data_saved_lock)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(%struct.salinfo_data*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
