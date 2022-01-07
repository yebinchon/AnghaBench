; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_nvidia-agp.c_nvidia_init_iorr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_nvidia-agp.c_nvidia_init_iorr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMD_K7_NUM_IORR = common dso_local global i32 0, align 4
@IORR_BASE0 = common dso_local global i64 0, align 8
@IORR_MASK0 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SYSCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @nvidia_init_iorr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidia_init_iorr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @AMD_K7_NUM_IORR, align 4
  store i32 %14, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %49, %2
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @AMD_K7_NUM_IORR, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %15
  %20 = load i64, i64* @IORR_BASE0, align 8
  %21 = load i32, i32* %12, align 4
  %22 = mul nsw i32 2, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @rdmsr(i64 %24, i32 %25, i32 %26)
  %28 = load i64, i64* @IORR_MASK0, align 8
  %29 = load i32, i32* %12, align 4
  %30 = mul nsw i32 2, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @rdmsr(i64 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, -4096
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, -4096
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %19
  br label %52

42:                                               ; preds = %19
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 2048
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %46, %42
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %15

52:                                               ; preds = %41, %15
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @AMD_K7_NUM_IORR, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @AMD_K7_NUM_IORR, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %100

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %52
  store i32 0, i32* %6, align 4
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, -4096
  %68 = or i32 %67, 24
  store i32 %68, i32* %7, align 4
  store i32 15, i32* %8, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sub nsw i32 %69, 1
  %71 = xor i32 %70, -1
  %72 = and i32 %71, -4096
  %73 = or i32 %72, 2048
  store i32 %73, i32* %9, align 4
  %74 = load i64, i64* @IORR_BASE0, align 8
  %75 = load i32, i32* %12, align 4
  %76 = mul nsw i32 2, %75
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %74, %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @wrmsr(i64 %78, i32 %79, i32 %80)
  %82 = load i64, i64* @IORR_MASK0, align 8
  %83 = load i32, i32* %12, align 4
  %84 = mul nsw i32 2, %83
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %82, %85
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @wrmsr(i64 %86, i32 %87, i32 %88)
  %90 = load i64, i64* @SYSCFG, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @rdmsr(i64 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, 1048576
  store i32 %95, i32* %11, align 4
  %96 = load i64, i64* @SYSCFG, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @wrmsr(i64 %96, i32 %97, i32 %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %65, %61
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @rdmsr(i64, i32, i32) #1

declare dso_local i32 @wrmsr(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
