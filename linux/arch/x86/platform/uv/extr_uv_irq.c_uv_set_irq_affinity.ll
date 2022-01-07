; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_irq.c_uv_set_irq_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_irq.c_uv_set_irq_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, %struct.TYPE_2__*, %struct.irq_data* }
%struct.TYPE_2__ = type { {}* }
%struct.cpumask = type { i32 }
%struct.irq_cfg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.cpumask*, i32)* @uv_set_irq_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_set_irq_affinity(%struct.irq_data* %0, %struct.cpumask* %1, i32 %2) #0 {
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_data*, align 8
  %8 = alloca %struct.irq_cfg*, align 8
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 2
  %12 = load %struct.irq_data*, %struct.irq_data** %11, align 8
  store %struct.irq_data* %12, %struct.irq_data** %7, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %14 = call %struct.irq_cfg* @irqd_cfg(%struct.irq_data* %13)
  store %struct.irq_cfg* %14, %struct.irq_cfg** %8, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.irq_data*, %struct.cpumask*, i32)**
  %20 = load i32 (%struct.irq_data*, %struct.cpumask*, i32)*, i32 (%struct.irq_data*, %struct.cpumask*, i32)** %19, align 8
  %21 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %22 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 %20(%struct.irq_data* %21, %struct.cpumask* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load %struct.irq_cfg*, %struct.irq_cfg** %8, align 8
  %29 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %30 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @uv_program_mmr(%struct.irq_cfg* %28, i32 %31)
  %33 = load %struct.irq_cfg*, %struct.irq_cfg** %8, align 8
  %34 = call i32 @send_cleanup_vector(%struct.irq_cfg* %33)
  br label %35

35:                                               ; preds = %27, %3
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare dso_local %struct.irq_cfg* @irqd_cfg(%struct.irq_data*) #1

declare dso_local i32 @uv_program_mmr(%struct.irq_cfg*, i32) #1

declare dso_local i32 @send_cleanup_vector(%struct.irq_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
