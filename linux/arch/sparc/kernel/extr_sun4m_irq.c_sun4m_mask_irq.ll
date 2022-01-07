; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sun4m_irq.c_sun4m_mask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sun4m_irq.c_sun4m_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.irq_data = type { i32 }
%struct.sun4m_handler_data = type { i64, i64 }

@sun4m_irq_percpu = common dso_local global %struct.TYPE_3__** null, align 8
@sun4m_irq_global = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @sun4m_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4m_mask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.sun4m_handler_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = call i32 (...) @smp_processor_id()
  store i32 %6, i32* %4, align 4
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.sun4m_handler_data* @irq_data_get_irq_handler_data(%struct.irq_data* %7)
  store %struct.sun4m_handler_data* %8, %struct.sun4m_handler_data** %3, align 8
  %9 = load %struct.sun4m_handler_data*, %struct.sun4m_handler_data** %3, align 8
  %10 = getelementptr inbounds %struct.sun4m_handler_data, %struct.sun4m_handler_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load %struct.sun4m_handler_data*, %struct.sun4m_handler_data** %3, align 8
  %17 = getelementptr inbounds %struct.sun4m_handler_data, %struct.sun4m_handler_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load %struct.sun4m_handler_data*, %struct.sun4m_handler_data** %3, align 8
  %22 = getelementptr inbounds %struct.sun4m_handler_data, %struct.sun4m_handler_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sun4m_irq_percpu, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %24, i64 %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @sbus_writel(i64 %23, i32* %29)
  br label %38

31:                                               ; preds = %13
  %32 = load %struct.sun4m_handler_data*, %struct.sun4m_handler_data** %3, align 8
  %33 = getelementptr inbounds %struct.sun4m_handler_data, %struct.sun4m_handler_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sun4m_irq_global, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @sbus_writel(i64 %34, i32* %36)
  br label %38

38:                                               ; preds = %31, %20
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @local_irq_restore(i64 %39)
  br label %41

41:                                               ; preds = %38, %1
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.sun4m_handler_data* @irq_data_get_irq_handler_data(%struct.irq_data*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @sbus_writel(i64, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
