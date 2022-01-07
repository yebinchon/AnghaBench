; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_write_blk_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_write_blk_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_blk = type { i32, i32, i32, %struct.nfit_blk_mmio* }
%struct.nfit_blk_mmio = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@DCR = common dso_local global i64 0, align 8
@L1_CACHE_SHIFT = common dso_local global i32 0, align 4
@NFIT_BLK_DCR_LATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfit_blk*, i32, i32, i32, i32)* @write_blk_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_blk_ctl(%struct.nfit_blk* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nfit_blk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfit_blk_mmio*, align 8
  store %struct.nfit_blk* %0, %struct.nfit_blk** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.nfit_blk*, %struct.nfit_blk** %6, align 8
  %15 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %14, i32 0, i32 3
  %16 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %15, align 8
  %17 = load i64, i64* @DCR, align 8
  %18 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %16, i64 %17
  store %struct.nfit_blk_mmio* %18, %struct.nfit_blk_mmio** %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @L1_CACHE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = and i64 %22, 281474976710655
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @L1_CACHE_SHIFT, align 4
  %27 = lshr i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 255
  %30 = shl i32 %29, 48
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = shl i32 %33, 56
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load %struct.nfit_blk*, %struct.nfit_blk** %6, align 8
  %38 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %13, align 8
  %41 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = mul i32 %42, %43
  %45 = add i32 %39, %44
  store i32 %45, i32* %12, align 4
  %46 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %13, align 8
  %47 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %5
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %13, align 8
  %53 = call i32 @to_interleave_offset(i32 %51, %struct.nfit_blk_mmio* %52)
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %50, %5
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %13, align 8
  %57 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @writeq(i32 %55, i32 %61)
  %63 = load %struct.nfit_blk*, %struct.nfit_blk** %6, align 8
  %64 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @nvdimm_flush(i32 %65, i32* null)
  %67 = load %struct.nfit_blk*, %struct.nfit_blk** %6, align 8
  %68 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NFIT_BLK_DCR_LATCH, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %54
  %74 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %13, align 8
  %75 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %77, %78
  %80 = call i32 @readq(i32 %79)
  br label %81

81:                                               ; preds = %73, %54
  ret void
}

declare dso_local i32 @to_interleave_offset(i32, %struct.nfit_blk_mmio*) #1

declare dso_local i32 @writeq(i32, i32) #1

declare dso_local i32 @nvdimm_flush(i32, i32*) #1

declare dso_local i32 @readq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
