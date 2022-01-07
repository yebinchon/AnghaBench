; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-allocator.c_fsl_mc_cleanup_irq_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-allocator.c_fsl_mc_cleanup_irq_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_bus = type { i32*, %struct.fsl_mc_resource_pool*, %struct.fsl_mc_device }
%struct.fsl_mc_resource_pool = type { i64, i64, i32 }
%struct.fsl_mc_device = type { i32 }

@FSL_MC_POOL_IRQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_mc_cleanup_irq_pool(%struct.fsl_mc_bus* %0) #0 {
  %2 = alloca %struct.fsl_mc_bus*, align 8
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca %struct.fsl_mc_resource_pool*, align 8
  store %struct.fsl_mc_bus* %0, %struct.fsl_mc_bus** %2, align 8
  %5 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_mc_bus, %struct.fsl_mc_bus* %5, i32 0, i32 2
  store %struct.fsl_mc_device* %6, %struct.fsl_mc_device** %3, align 8
  %7 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %2, align 8
  %8 = getelementptr inbounds %struct.fsl_mc_bus, %struct.fsl_mc_bus* %7, i32 0, i32 1
  %9 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %8, align 8
  %10 = load i64, i64* @FSL_MC_POOL_IRQ, align 8
  %11 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %9, i64 %10
  store %struct.fsl_mc_resource_pool* %11, %struct.fsl_mc_resource_pool** %4, align 8
  %12 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %2, align 8
  %13 = getelementptr inbounds %struct.fsl_mc_bus, %struct.fsl_mc_bus* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %45

17:                                               ; preds = %1
  %18 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %4, align 8
  %19 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %45

23:                                               ; preds = %17
  %24 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %4, align 8
  %25 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %4, align 8
  %28 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %45

32:                                               ; preds = %23
  %33 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %4, align 8
  %34 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %33, i32 0, i32 2
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %4, align 8
  %37 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.fsl_mc_resource_pool*, %struct.fsl_mc_resource_pool** %4, align 8
  %39 = getelementptr inbounds %struct.fsl_mc_resource_pool, %struct.fsl_mc_resource_pool* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %2, align 8
  %41 = getelementptr inbounds %struct.fsl_mc_bus, %struct.fsl_mc_bus* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %43 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %42, i32 0, i32 0
  %44 = call i32 @fsl_mc_msi_domain_free_irqs(i32* %43)
  br label %45

45:                                               ; preds = %32, %31, %22, %16
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @fsl_mc_msi_domain_free_irqs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
