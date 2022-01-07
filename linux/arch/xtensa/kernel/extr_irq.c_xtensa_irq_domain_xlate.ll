; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_irq.c_xtensa_irq_domain_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_irq.c_xtensa_irq_domain_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@XCHAL_NUM_INTERRUPTS = common dso_local global i64 0, align 8
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xtensa_irq_domain_xlate(i32* %0, i32 %1, i64 %2, i64 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ult i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = load i32, i32* %9, align 4
  %18 = icmp ugt i32 %17, 2
  br label %19

19:                                               ; preds = %16, %6
  %20 = phi i1 [ true, %6 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %54

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load i64, i64* %11, align 8
  %37 = call i64 @xtensa_map_ext_irq(i64 %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @XCHAL_NUM_INTERRUPTS, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i64, i64* %10, align 8
  %43 = load i64*, i64** %12, align 8
  store i64 %42, i64* %43, align 8
  br label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %54

47:                                               ; preds = %41
  br label %51

48:                                               ; preds = %30, %27
  %49 = load i64, i64* %10, align 8
  %50 = load i64*, i64** %12, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %47
  %52 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %53 = load i32*, i32** %13, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %44, %24
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @xtensa_map_ext_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
