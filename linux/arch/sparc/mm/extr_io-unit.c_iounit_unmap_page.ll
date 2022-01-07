; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_io-unit.c_iounit_unmap_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_io-unit.c_iounit_unmap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iounit_struct* }
%struct.iounit_struct = type { i32, i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@IOUNIT_DMA_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"iounit_release %08lx-%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i64, i32, i64)* @iounit_unmap_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iounit_unmap_page(%struct.device* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.iounit_struct*, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.iounit_struct*, %struct.iounit_struct** %15, align 8
  store %struct.iounit_struct* %16, %struct.iounit_struct** %11, align 8
  %17 = load %struct.iounit_struct*, %struct.iounit_struct** %11, align 8
  %18 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @PAGE_MASK, align 8
  %23 = xor i64 %22, -1
  %24 = and i64 %21, %23
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %24, %25
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = add i64 %26, %29
  %31 = load i64, i64* @PAGE_SHIFT, align 8
  %32 = lshr i64 %30, %31
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @IOUNIT_DMA_BASE, align 8
  %35 = sub i64 %33, %34
  %36 = load i64, i64* @PAGE_SHIFT, align 8
  %37 = lshr i64 %35, %36
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %39, %40
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @IOD(i8* %42)
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %57, %5
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.iounit_struct*, %struct.iounit_struct** %11, align 8
  %54 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clear_bit(i64 %52, i32 %55)
  br label %57

57:                                               ; preds = %51
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %7, align 8
  br label %47

60:                                               ; preds = %47
  %61 = load %struct.iounit_struct*, %struct.iounit_struct** %11, align 8
  %62 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %61, i32 0, i32 0
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @IOD(i8*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
