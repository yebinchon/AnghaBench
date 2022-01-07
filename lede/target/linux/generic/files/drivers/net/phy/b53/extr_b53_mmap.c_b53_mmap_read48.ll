; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_mmap.c_b53_mmap_read48.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_mmap.c_b53_mmap_read48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b53_device*, i32, i32, i32*)* @b53_mmap_read48 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_mmap_read48(%struct.b53_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.b53_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = srem i32 %14, 2
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %56

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = srem i32 %22, 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @b53_mmap_read16(%struct.b53_device* %26, i32 %27, i32 %28, i32* %10)
  %30 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 2
  %34 = call i32 @b53_mmap_read32(%struct.b53_device* %30, i32 %31, i32 %33, i32* %11)
  %35 = load i32, i32* %11, align 4
  %36 = shl i32 %35, 16
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %36, %37
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  br label %55

40:                                               ; preds = %21
  %41 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @b53_mmap_read32(%struct.b53_device* %41, i32 %42, i32 %43, i32* %12)
  %45 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 4
  %49 = call i32 @b53_mmap_read16(%struct.b53_device* %45, i32 %46, i32 %48, i32* %13)
  %50 = load i32, i32* %13, align 4
  %51 = shl i32 %50, 32
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %51, %52
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %40, %25
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %18
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @b53_mmap_read16(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @b53_mmap_read32(%struct.b53_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
