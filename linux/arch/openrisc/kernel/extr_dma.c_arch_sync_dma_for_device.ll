; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_dma.c_arch_sync_dma_for_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_dma.c_arch_sync_dma_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_or1k = type { i64 }
%struct.device = type { i32 }

@cpuinfo_or1k = common dso_local global %struct.cpuinfo_or1k* null, align 8
@SPR_DCBFR = common dso_local global i32 0, align 4
@SPR_DCBIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_sync_dma_for_device(%struct.device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.cpuinfo_or1k*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.cpuinfo_or1k*, %struct.cpuinfo_or1k** @cpuinfo_or1k, align 8
  %12 = call i64 (...) @smp_processor_id()
  %13 = getelementptr inbounds %struct.cpuinfo_or1k, %struct.cpuinfo_or1k* %11, i64 %12
  store %struct.cpuinfo_or1k* %13, %struct.cpuinfo_or1k** %10, align 8
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %53 [
    i32 128, label %15
    i32 129, label %34
  ]

15:                                               ; preds = %4
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %9, align 8
  br label %17

17:                                               ; preds = %27, %15
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %19, %20
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load i32, i32* @SPR_DCBFR, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @mtspr(i32 %24, i64 %25)
  br label %27

27:                                               ; preds = %23
  %28 = load %struct.cpuinfo_or1k*, %struct.cpuinfo_or1k** %10, align 8
  %29 = getelementptr inbounds %struct.cpuinfo_or1k, %struct.cpuinfo_or1k* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %9, align 8
  br label %17

33:                                               ; preds = %17
  br label %54

34:                                               ; preds = %4
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %46, %34
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %38, %39
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load i32, i32* @SPR_DCBIR, align 4
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @mtspr(i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %42
  %47 = load %struct.cpuinfo_or1k*, %struct.cpuinfo_or1k** %10, align 8
  %48 = getelementptr inbounds %struct.cpuinfo_or1k, %struct.cpuinfo_or1k* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %9, align 8
  br label %36

52:                                               ; preds = %36
  br label %54

53:                                               ; preds = %4
  br label %54

54:                                               ; preds = %53, %52, %33
  ret void
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @mtspr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
