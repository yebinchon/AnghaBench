; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_mp_check_pin_attr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_mp_check_pin_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_alloc_info = type { i64, i64 }
%struct.mp_chip_data = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.irq_alloc_info*)* @mp_check_pin_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_check_pin_attr(i32 %0, %struct.irq_alloc_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_alloc_info*, align 8
  %5 = alloca %struct.mp_chip_data*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.irq_alloc_info* %1, %struct.irq_alloc_info** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.mp_chip_data* @irq_get_chip_data(i32 %6)
  store %struct.mp_chip_data* %7, %struct.mp_chip_data** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 (...) @nr_legacy_irqs()
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %2
  %12 = load %struct.mp_chip_data*, %struct.mp_chip_data** %5, align 8
  %13 = getelementptr inbounds %struct.mp_chip_data, %struct.mp_chip_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %47

16:                                               ; preds = %11
  %17 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %4, align 8
  %18 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mp_chip_data*, %struct.mp_chip_data** %5, align 8
  %21 = getelementptr inbounds %struct.mp_chip_data, %struct.mp_chip_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %4, align 8
  %27 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @mp_register_handler(i32 %25, i64 %28)
  br label %30

30:                                               ; preds = %24, %16
  %31 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %4, align 8
  %32 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.mp_chip_data*, %struct.mp_chip_data** %5, align 8
  %35 = getelementptr inbounds %struct.mp_chip_data, %struct.mp_chip_data* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.mp_chip_data*, %struct.mp_chip_data** %5, align 8
  %37 = getelementptr inbounds %struct.mp_chip_data, %struct.mp_chip_data* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %33, i64* %38, align 8
  %39 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %4, align 8
  %40 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mp_chip_data*, %struct.mp_chip_data** %5, align 8
  %43 = getelementptr inbounds %struct.mp_chip_data, %struct.mp_chip_data* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.mp_chip_data*, %struct.mp_chip_data** %5, align 8
  %45 = getelementptr inbounds %struct.mp_chip_data, %struct.mp_chip_data* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i64 %41, i64* %46, align 8
  br label %47

47:                                               ; preds = %30, %11, %2
  %48 = load %struct.mp_chip_data*, %struct.mp_chip_data** %5, align 8
  %49 = getelementptr inbounds %struct.mp_chip_data, %struct.mp_chip_data* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %4, align 8
  %52 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.mp_chip_data*, %struct.mp_chip_data** %5, align 8
  %57 = getelementptr inbounds %struct.mp_chip_data, %struct.mp_chip_data* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %4, align 8
  %60 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br label %63

63:                                               ; preds = %55, %47
  %64 = phi i1 [ false, %47 ], [ %62, %55 ]
  %65 = zext i1 %64 to i32
  ret i32 %65
}

declare dso_local %struct.mp_chip_data* @irq_get_chip_data(i32) #1

declare dso_local i32 @nr_legacy_irqs(...) #1

declare dso_local i32 @mp_register_handler(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
