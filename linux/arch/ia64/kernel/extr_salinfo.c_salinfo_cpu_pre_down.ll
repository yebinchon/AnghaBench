; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_salinfo.c_salinfo_cpu_pre_down.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_salinfo.c_salinfo_cpu_pre_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.salinfo_data_saved = type { i32, i32, i64, %struct.salinfo_data_saved* }
%struct.salinfo_data = type { i32, i32, i64, %struct.salinfo_data* }

@salinfo_data = common dso_local global %struct.salinfo_data_saved* null, align 8
@data_saved_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @salinfo_cpu_pre_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @salinfo_cpu_pre_down(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.salinfo_data*, align 8
  %6 = alloca %struct.salinfo_data_saved*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** @salinfo_data, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.salinfo_data_saved* %8)
  store i32 %9, i32* %4, align 4
  %10 = call i32 @spin_lock_irq(i32* @data_saved_lock)
  store i32 0, i32* %3, align 4
  %11 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** @salinfo_data, align 8
  %12 = bitcast %struct.salinfo_data_saved* %11 to %struct.salinfo_data*
  store %struct.salinfo_data* %12, %struct.salinfo_data** %5, align 8
  br label %13

13:                                               ; preds = %61, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %13
  %18 = load %struct.salinfo_data*, %struct.salinfo_data** %5, align 8
  %19 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %18, i32 0, i32 3
  %20 = load %struct.salinfo_data*, %struct.salinfo_data** %19, align 8
  %21 = bitcast %struct.salinfo_data* %20 to %struct.salinfo_data_saved*
  %22 = call i32 @ARRAY_SIZE(%struct.salinfo_data_saved* %21)
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  %24 = load %struct.salinfo_data*, %struct.salinfo_data** %5, align 8
  %25 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %24, i32 0, i32 3
  %26 = load %struct.salinfo_data*, %struct.salinfo_data** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %26, i64 %28
  %30 = bitcast %struct.salinfo_data* %29 to %struct.salinfo_data_saved*
  store %struct.salinfo_data_saved* %30, %struct.salinfo_data_saved** %6, align 8
  br label %31

31:                                               ; preds = %51, %17
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %6, align 8
  %36 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %6, align 8
  %41 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.salinfo_data*, %struct.salinfo_data** %5, align 8
  %47 = bitcast %struct.salinfo_data* %46 to %struct.salinfo_data_saved*
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @shift1_data_saved(%struct.salinfo_data_saved* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %39, %34
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  %54 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %6, align 8
  %55 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %54, i32 -1
  store %struct.salinfo_data_saved* %55, %struct.salinfo_data_saved** %6, align 8
  br label %31

56:                                               ; preds = %31
  %57 = load i32, i32* %2, align 4
  %58 = load %struct.salinfo_data*, %struct.salinfo_data** %5, align 8
  %59 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %58, i32 0, i32 1
  %60 = call i32 @cpumask_clear_cpu(i32 %57, i32* %59)
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %3, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %3, align 4
  %64 = load %struct.salinfo_data*, %struct.salinfo_data** %5, align 8
  %65 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %64, i32 1
  store %struct.salinfo_data* %65, %struct.salinfo_data** %5, align 8
  br label %13

66:                                               ; preds = %13
  %67 = call i32 @spin_unlock_irq(i32* @data_saved_lock)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(%struct.salinfo_data_saved*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @shift1_data_saved(%struct.salinfo_data_saved*, i32) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
