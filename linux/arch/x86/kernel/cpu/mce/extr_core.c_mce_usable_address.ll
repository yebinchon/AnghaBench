; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_usable_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_usable_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.mce = type { i32, i32 }

@MCI_STATUS_ADDRV = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@X86_VENDOR_INTEL = common dso_local global i64 0, align 8
@MCI_STATUS_MISCV = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MCI_MISC_ADDR_PHYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mce_usable_address(%struct.mce* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mce*, align 8
  store %struct.mce* %0, %struct.mce** %3, align 8
  %4 = load %struct.mce*, %struct.mce** %3, align 8
  %5 = getelementptr inbounds %struct.mce, %struct.mce* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MCI_STATUS_ADDRV, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

11:                                               ; preds = %1
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %13 = load i64, i64* @X86_VENDOR_INTEL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %41

16:                                               ; preds = %11
  %17 = load %struct.mce*, %struct.mce** %3, align 8
  %18 = getelementptr inbounds %struct.mce, %struct.mce* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MCI_STATUS_MISCV, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %41

24:                                               ; preds = %16
  %25 = load %struct.mce*, %struct.mce** %3, align 8
  %26 = getelementptr inbounds %struct.mce, %struct.mce* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @MCI_MISC_ADDR_LSB(i32 %27)
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %41

32:                                               ; preds = %24
  %33 = load %struct.mce*, %struct.mce** %3, align 8
  %34 = getelementptr inbounds %struct.mce, %struct.mce* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @MCI_MISC_ADDR_MODE(i32 %35)
  %37 = load i64, i64* @MCI_MISC_ADDR_PHYS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %41

40:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %39, %31, %23, %15, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @MCI_MISC_ADDR_LSB(i32) #1

declare dso_local i64 @MCI_MISC_ADDR_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
