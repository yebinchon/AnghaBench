; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_mips_cdmm.c_mips_cdmm_get_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_mips_cdmm.c_mips_cdmm_get_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_cdmm_bus = type { i32 }

@cpu_has_cdmm = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@mips_cdmm_boot_bus = common dso_local global %struct.mips_cdmm_bus zeroinitializer, align 4
@mips_cdmm_buses = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mips_cdmm_bus* ()* @mips_cdmm_get_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mips_cdmm_bus* @mips_cdmm_get_bus() #0 {
  %1 = alloca %struct.mips_cdmm_bus*, align 8
  %2 = alloca %struct.mips_cdmm_bus*, align 8
  %3 = alloca %struct.mips_cdmm_bus**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @cpu_has_cdmm, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.mips_cdmm_bus* @ERR_PTR(i32 %10)
  store %struct.mips_cdmm_bus* %11, %struct.mips_cdmm_bus** %1, align 8
  br label %51

12:                                               ; preds = %0
  %13 = call i32 (...) @smp_processor_id()
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store %struct.mips_cdmm_bus* @mips_cdmm_boot_bus, %struct.mips_cdmm_bus** %1, align 8
  br label %51

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.mips_cdmm_bus** @per_cpu_ptr(i32* @mips_cdmm_buses, i32 %18)
  store %struct.mips_cdmm_bus** %19, %struct.mips_cdmm_bus*** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @local_irq_save(i64 %20)
  %22 = load %struct.mips_cdmm_bus**, %struct.mips_cdmm_bus*** %3, align 8
  %23 = load %struct.mips_cdmm_bus*, %struct.mips_cdmm_bus** %22, align 8
  store %struct.mips_cdmm_bus* %23, %struct.mips_cdmm_bus** %2, align 8
  %24 = load %struct.mips_cdmm_bus*, %struct.mips_cdmm_bus** %2, align 8
  %25 = icmp ne %struct.mips_cdmm_bus* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %17
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.mips_cdmm_bus* @kzalloc(i32 4, i32 %31)
  store %struct.mips_cdmm_bus* %32, %struct.mips_cdmm_bus** %2, align 8
  %33 = load %struct.mips_cdmm_bus*, %struct.mips_cdmm_bus** %2, align 8
  %34 = icmp ne %struct.mips_cdmm_bus* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.mips_cdmm_bus* @ERR_PTR(i32 %41)
  store %struct.mips_cdmm_bus* %42, %struct.mips_cdmm_bus** %2, align 8
  br label %46

43:                                               ; preds = %30
  %44 = load %struct.mips_cdmm_bus*, %struct.mips_cdmm_bus** %2, align 8
  %45 = load %struct.mips_cdmm_bus**, %struct.mips_cdmm_bus*** %3, align 8
  store %struct.mips_cdmm_bus* %44, %struct.mips_cdmm_bus** %45, align 8
  br label %46

46:                                               ; preds = %43, %39
  br label %47

47:                                               ; preds = %46, %17
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @local_irq_restore(i64 %48)
  %50 = load %struct.mips_cdmm_bus*, %struct.mips_cdmm_bus** %2, align 8
  store %struct.mips_cdmm_bus* %50, %struct.mips_cdmm_bus** %1, align 8
  br label %51

51:                                               ; preds = %47, %16, %8
  %52 = load %struct.mips_cdmm_bus*, %struct.mips_cdmm_bus** %1, align 8
  ret %struct.mips_cdmm_bus* %52
}

declare dso_local %struct.mips_cdmm_bus* @ERR_PTR(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.mips_cdmm_bus** @per_cpu_ptr(i32*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.mips_cdmm_bus* @kzalloc(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
