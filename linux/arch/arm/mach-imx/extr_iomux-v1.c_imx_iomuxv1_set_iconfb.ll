; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_iomux-v1.c_imx_iomuxv1_set_iconfb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_iomux-v1.c_imx_iomuxv1_set_iconfb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @imx_iomuxv1_set_iconfb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_iomuxv1_set_iconfb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 15
  %13 = shl i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 3, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %19, %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ult i32 %24, 16
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @MXC_ICONFB1(i32 %27)
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @MXC_ICONFB2(i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i64 [ %28, %26 ], [ %31, %29 ]
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @imx_iomuxv1_rmwl(i64 %34, i64 %35, i64 %36)
  ret void
}

declare dso_local i64 @MXC_ICONFB1(i32) #1

declare dso_local i64 @MXC_ICONFB2(i32) #1

declare dso_local i32 @imx_iomuxv1_rmwl(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
