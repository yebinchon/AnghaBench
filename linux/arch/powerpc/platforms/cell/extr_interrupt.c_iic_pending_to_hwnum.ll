; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_interrupt.c_iic_pending_to_hwnum.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_interrupt.c_iic_pending_to_hwnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbe_iic_pending_bits = type { i32, i32, i32, i32 }

@CBE_IIC_IRQ_IPI = common dso_local global i32 0, align 4
@IIC_IRQ_TYPE_IPI = common dso_local global i32 0, align 4
@IIC_IRQ_NODE_SHIFT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @iic_pending_to_hwnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iic_pending_to_hwnum(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cbe_iic_pending_bits, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = bitcast %struct.cbe_iic_pending_bits* %4 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 4
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 4
  %11 = getelementptr inbounds %struct.cbe_iic_pending_bits, %struct.cbe_iic_pending_bits* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 15
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = getelementptr inbounds %struct.cbe_iic_pending_bits, %struct.cbe_iic_pending_bits* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 4
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = getelementptr inbounds %struct.cbe_iic_pending_bits, %struct.cbe_iic_pending_bits* %4, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 3
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %7, align 1
  %23 = getelementptr inbounds %struct.cbe_iic_pending_bits, %struct.cbe_iic_pending_bits* %4, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CBE_IIC_IRQ_IPI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32, i32* @IIC_IRQ_TYPE_IPI, align 4
  %30 = getelementptr inbounds %struct.cbe_iic_pending_bits, %struct.cbe_iic_pending_bits* %4, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 4
  %33 = or i32 %29, %32
  store i32 %33, i32* %3, align 4
  br label %47

34:                                               ; preds = %2
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @IIC_IRQ_NODE_SHIFT, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %36, %38
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 4
  %43 = or i32 %39, %42
  %44 = load i8, i8* %5, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %43, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %34, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
