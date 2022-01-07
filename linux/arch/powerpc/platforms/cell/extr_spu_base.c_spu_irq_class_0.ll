; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_base.c_spu_irq_class_0.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_base.c_spu_irq_class_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu = type { i64, i32, i64, i32 (%struct.spu*, i32)* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spu_irq_class_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_irq_class_0(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.spu*
  store %struct.spu* %9, %struct.spu** %5, align 8
  %10 = load %struct.spu*, %struct.spu** %5, align 8
  %11 = getelementptr inbounds %struct.spu, %struct.spu* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.spu*, %struct.spu** %5, align 8
  %14 = call i64 @spu_int_mask_get(%struct.spu* %13, i32 0)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.spu*, %struct.spu** %5, align 8
  %16 = call i64 @spu_int_stat_get(%struct.spu* %15, i32 0)
  %17 = load i64, i64* %7, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.spu*, %struct.spu** %5, align 8
  %21 = getelementptr inbounds %struct.spu, %struct.spu* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = or i64 %22, %19
  store i64 %23, i64* %21, align 8
  %24 = load %struct.spu*, %struct.spu** %5, align 8
  %25 = call i64 @spu_mfc_dar_get(%struct.spu* %24)
  %26 = load %struct.spu*, %struct.spu** %5, align 8
  %27 = getelementptr inbounds %struct.spu, %struct.spu* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.spu*, %struct.spu** %5, align 8
  %29 = getelementptr inbounds %struct.spu, %struct.spu* %28, i32 0, i32 3
  %30 = load i32 (%struct.spu*, i32)*, i32 (%struct.spu*, i32)** %29, align 8
  %31 = load %struct.spu*, %struct.spu** %5, align 8
  %32 = call i32 %30(%struct.spu* %31, i32 0)
  %33 = load %struct.spu*, %struct.spu** %5, align 8
  %34 = getelementptr inbounds %struct.spu, %struct.spu* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.spu*, %struct.spu** %5, align 8
  %36 = getelementptr inbounds %struct.spu, %struct.spu* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.spu*, %struct.spu** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @spu_int_stat_clear(%struct.spu* %37, i32 0, i64 %38)
  %40 = load %struct.spu*, %struct.spu** %5, align 8
  %41 = getelementptr inbounds %struct.spu, %struct.spu* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %43
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @spu_int_mask_get(%struct.spu*, i32) #1

declare dso_local i64 @spu_int_stat_get(%struct.spu*, i32) #1

declare dso_local i64 @spu_mfc_dar_get(%struct.spu*) #1

declare dso_local i32 @spu_int_stat_clear(%struct.spu*, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
