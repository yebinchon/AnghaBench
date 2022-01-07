; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/extr_irq.c_icu_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/extr_irq.c_icu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip = type { i32 }
%struct.irq_domain = type { i32 }
%struct.irq_data = type { i32 }

@ltq_irq_type = common dso_local global %struct.irq_chip zeroinitializer, align 4
@MIPS_CPU_IRQ_CASCADE = common dso_local global i64 0, align 8
@exin_avail = common dso_local global i32 0, align 4
@ltq_eiu_irq = common dso_local global i64* null, align 8
@ltq_eiu_type = common dso_local global %struct.irq_chip zeroinitializer, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i64)* @icu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icu_map(%struct.irq_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.irq_chip*, align 8
  %9 = alloca %struct.irq_data*, align 8
  %10 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.irq_chip* @ltq_irq_type, %struct.irq_chip** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @MIPS_CPU_IRQ_CASCADE, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

15:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %30, %15
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @exin_avail, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = load i64*, i64** @ltq_eiu_irq, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store %struct.irq_chip* @ltq_eiu_type, %struct.irq_chip** %8, align 8
  br label %29

29:                                               ; preds = %28, %20
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %16

33:                                               ; preds = %16
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.irq_data* @irq_get_irq_data(i32 %34)
  store %struct.irq_data* %35, %struct.irq_data** %9, align 8
  %36 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %37 = call i32 @cpumask_of(i32 0)
  %38 = call i32 @irq_data_update_effective_affinity(%struct.irq_data* %36, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %41 = load i32, i32* @handle_level_irq, align 4
  %42 = call i32 @irq_set_chip_and_handler(i32 %39, %struct.irq_chip* %40, i32 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %33, %14
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @irq_data_update_effective_affinity(%struct.irq_data*, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, %struct.irq_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
