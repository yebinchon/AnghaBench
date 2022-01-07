; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_salinfo.c_salinfo_log_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_salinfo.c_salinfo_log_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.salinfo_data = type { i32, i32, %struct.salinfo_data_saved*, i32 }
%struct.salinfo_data_saved = type { i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@salinfo_data = common dso_local global %struct.salinfo_data* null, align 8
@salinfo_log_name = common dso_local global %struct.salinfo_data_saved* null, align 8
@data_saved_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @salinfo_log_wakeup(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.salinfo_data*, align 8
  %10 = alloca %struct.salinfo_data_saved*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.salinfo_data*, %struct.salinfo_data** @salinfo_data, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %14, i64 %16
  store %struct.salinfo_data* %17, %struct.salinfo_data** %9, align 8
  store i64 0, i64* %11, align 8
  %18 = load %struct.salinfo_data*, %struct.salinfo_data** %9, align 8
  %19 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %18, i32 0, i32 2
  %20 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %19, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.salinfo_data_saved* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** @salinfo_log_name, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.salinfo_data_saved* %23)
  %25 = icmp sge i32 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_lock_irqsave(i32* @data_saved_lock, i64 %31)
  br label %33

33:                                               ; preds = %30, %4
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %97

36:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  %37 = load %struct.salinfo_data*, %struct.salinfo_data** %9, align 8
  %38 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %37, i32 0, i32 2
  %39 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %38, align 8
  store %struct.salinfo_data_saved* %39, %struct.salinfo_data_saved** %10, align 8
  br label %40

40:                                               ; preds = %51, %36
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %10, align 8
  %46 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %56

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  %54 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %10, align 8
  %55 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %54, i32 1
  store %struct.salinfo_data_saved* %55, %struct.salinfo_data_saved** %10, align 8
  br label %40

56:                                               ; preds = %49, %40
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load %struct.salinfo_data*, %struct.salinfo_data** %9, align 8
  %62 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = load %struct.salinfo_data*, %struct.salinfo_data** %9, align 8
  %67 = call i32 @shift1_data_saved(%struct.salinfo_data* %66, i32 0)
  %68 = load %struct.salinfo_data*, %struct.salinfo_data** %9, align 8
  %69 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %68, i32 0, i32 2
  %70 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %70, i64 %72
  %74 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %73, i64 -1
  store %struct.salinfo_data_saved* %74, %struct.salinfo_data_saved** %10, align 8
  br label %76

75:                                               ; preds = %60
  store %struct.salinfo_data_saved* null, %struct.salinfo_data_saved** %10, align 8
  br label %76

76:                                               ; preds = %75, %65
  br label %77

77:                                               ; preds = %76, %56
  %78 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %10, align 8
  %79 = icmp ne %struct.salinfo_data_saved* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %77
  %81 = call i32 (...) @smp_processor_id()
  %82 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %10, align 8
  %83 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = bitcast i32* %84 to %struct.TYPE_2__*
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %10, align 8
  %89 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %10, align 8
  %92 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.salinfo_data_saved*, %struct.salinfo_data_saved** %10, align 8
  %95 = getelementptr inbounds %struct.salinfo_data_saved, %struct.salinfo_data_saved* %94, i32 0, i32 0
  store i32* %93, i32** %95, align 8
  br label %96

96:                                               ; preds = %80, %77
  br label %97

97:                                               ; preds = %96, %33
  %98 = call i32 (...) @smp_processor_id()
  %99 = load %struct.salinfo_data*, %struct.salinfo_data** %9, align 8
  %100 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %99, i32 0, i32 1
  %101 = call i32 @cpumask_set_cpu(i32 %98, i32* %100)
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.salinfo_data*, %struct.salinfo_data** %9, align 8
  %106 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %105, i32 0, i32 0
  %107 = call i32 @wake_up_interruptible(i32* %106)
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* @data_saved_lock, i64 %108)
  br label %110

110:                                              ; preds = %104, %97
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.salinfo_data_saved*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @shift1_data_saved(%struct.salinfo_data*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
