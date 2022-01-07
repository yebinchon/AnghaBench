; ModuleID = '/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/arch/arm/mach-cns3xxx/extr_platsmp.c_fiq_dma_unmap_area.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/arch/arm/mach-cns3xxx/extr_platsmp.c_fiq_dma_unmap_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fiq_req = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }

@fiq_data = common dso_local global i32 0, align 4
@CNS3XXX_UNMAP_AREA = common dso_local global i32 0, align 4
@FIQ_GENERATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiq_dma_unmap_area(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.fiq_req*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @raw_local_irq_save(i64 %9)
  %11 = call i32 @cpu_online(i32 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @raw_local_irq_restore(i64 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @v6_dma_unmap_area(i8* %16, i64 %17, i32 %18)
  br label %55

20:                                               ; preds = %3
  %21 = call %struct.fiq_req* @this_cpu_ptr(i32* @fiq_data)
  store %struct.fiq_req* %21, %struct.fiq_req** %8, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load %struct.fiq_req*, %struct.fiq_req** %8, align 8
  %24 = getelementptr inbounds %struct.fiq_req, %struct.fiq_req* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.fiq_req*, %struct.fiq_req** %8, align 8
  %28 = getelementptr inbounds %struct.fiq_req, %struct.fiq_req* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CNS3XXX_UNMAP_AREA, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.fiq_req*, %struct.fiq_req** %8, align 8
  %34 = getelementptr inbounds %struct.fiq_req, %struct.fiq_req* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = call i32 (...) @smp_mb()
  %36 = load i32, i32* @FIQ_GENERATE, align 4
  %37 = load %struct.fiq_req*, %struct.fiq_req** %8, align 8
  %38 = getelementptr inbounds %struct.fiq_req, %struct.fiq_req* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @writel_relaxed(i32 %36, i32 %39)
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @v6_dma_unmap_area(i8* %41, i64 %42, i32 %43)
  br label %45

45:                                               ; preds = %50, %20
  %46 = load %struct.fiq_req*, %struct.fiq_req** %8, align 8
  %47 = getelementptr inbounds %struct.fiq_req, %struct.fiq_req* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (...) @barrier()
  br label %45

52:                                               ; preds = %45
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @raw_local_irq_restore(i64 %53)
  br label %55

55:                                               ; preds = %52, %13
  ret void
}

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

declare dso_local i32 @v6_dma_unmap_area(i8*, i64, i32) #1

declare dso_local %struct.fiq_req* @this_cpu_ptr(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
