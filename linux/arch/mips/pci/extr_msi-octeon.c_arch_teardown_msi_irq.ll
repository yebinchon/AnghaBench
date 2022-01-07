; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-octeon.c_arch_teardown_msi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-octeon.c_arch_teardown_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_IRQ_MSI_BIT0 = common dso_local global i32 0, align 4
@msi_irq_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"arch_teardown_msi_irq: Attempted to teardown illegal MSI interrupt (%d)\00", align 1
@msi_multiple_irq_bitmask = common dso_local global i64* null, align 8
@msi_free_irq_bitmask = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"arch_teardown_msi_irq: Attempted to teardown MSI interrupt (%d) not in use\00", align 1
@msi_free_irq_bitmask_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_teardown_msi_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @OCTEON_IRQ_MSI_BIT0, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @msi_irq_size, align 4
  %13 = load i32, i32* @OCTEON_IRQ_MSI_BIT0, align 4
  %14 = add i32 %12, %13
  %15 = icmp ugt i32 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %1
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @panic(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i32, i32* @OCTEON_IRQ_MSI_BIT0, align 4
  %21 = load i32, i32* %2, align 4
  %22 = sub i32 %21, %20
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = udiv i32 %23, 64
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %2, align 4
  %26 = urem i32 %25, 64
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %47, %19
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %28, %29
  %31 = icmp slt i32 %30, 64
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load i64*, i64** @msi_multiple_irq_bitmask, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %38, %39
  %41 = zext i32 %40 to i64
  %42 = shl i64 1, %41
  %43 = and i64 %37, %42
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %32, %27
  %46 = phi i1 [ false, %27 ], [ %44, %32 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %27

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = shl i32 1, %53
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %4, align 4
  %58 = shl i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load i32*, i32** @msi_free_irq_bitmask, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %50
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @panic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %50
  %72 = call i32 @spin_lock(i32* @msi_free_irq_bitmask_lock)
  %73 = load i32, i32* %4, align 4
  %74 = xor i32 %73, -1
  %75 = load i32*, i32** @msi_free_irq_bitmask, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %74
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %4, align 4
  %82 = xor i32 %81, -1
  %83 = sext i32 %82 to i64
  %84 = load i64*, i64** @msi_multiple_irq_bitmask, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = and i64 %88, %83
  store i64 %89, i64* %87, align 8
  %90 = call i32 @spin_unlock(i32* @msi_free_irq_bitmask_lock)
  ret void
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
