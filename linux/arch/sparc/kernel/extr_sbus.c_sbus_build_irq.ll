; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sbus.c_sbus_build_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sbus.c_sbus_build_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.iommu* }
%struct.iommu = type { i32 }

@sysio_irq_offsets = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"get_irq_translations: Bad SYSIO INO[%x]\0A\00", align 1
@SYSIO_ICLR_SLOT0 = common dso_local global i32 0, align 4
@SYSIO_ICLR_SLOT1 = common dso_local global i32 0, align 4
@SYSIO_ICLR_SLOT2 = common dso_local global i32 0, align 4
@SYSIO_ICLR_SLOT3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @sbus_build_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbus_build_irq(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iommu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.iommu*, %struct.iommu** %14, align 8
  store %struct.iommu* %15, %struct.iommu** %5, align 8
  %16 = load %struct.iommu*, %struct.iommu** %5, align 8
  %17 = getelementptr inbounds %struct.iommu, %struct.iommu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 8192
  store i64 %20, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %21 = load i64*, i64** @sysio_irq_offsets, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @prom_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i32 (...) @prom_halt()
  br label %32

32:                                               ; preds = %28, %2
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %7, align 8
  %36 = load i32, i32* %4, align 4
  %37 = icmp uge i32 %36, 32
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @sysio_imap_to_iclr(i64 %39)
  store i64 %40, i64* %8, align 8
  br label %76

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 24
  %44 = lshr i32 %43, 3
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 7
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  switch i32 %47, label %63 [
    i32 0, label %48
    i32 1, label %53
    i32 2, label %58
    i32 3, label %64
  ]

48:                                               ; preds = %41
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* @SYSIO_ICLR_SLOT0, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %49, %51
  store i64 %52, i64* %8, align 8
  br label %69

53:                                               ; preds = %41
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* @SYSIO_ICLR_SLOT1, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  store i64 %57, i64* %8, align 8
  br label %69

58:                                               ; preds = %41
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* @SYSIO_ICLR_SLOT2, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  store i64 %62, i64* %8, align 8
  br label %69

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %41, %63
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* @SYSIO_ICLR_SLOT3, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %65, %67
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %64, %58, %53, %48
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %71, 1
  %73 = mul i64 %72, 8
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %69, %38
  %77 = load i32, i32* %9, align 4
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @build_irq(i32 %77, i64 %78, i64 %79)
  ret i32 %80
}

declare dso_local i32 @prom_printf(i8*, i32) #1

declare dso_local i32 @prom_halt(...) #1

declare dso_local i64 @sysio_imap_to_iclr(i64) #1

declare dso_local i32 @build_irq(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
