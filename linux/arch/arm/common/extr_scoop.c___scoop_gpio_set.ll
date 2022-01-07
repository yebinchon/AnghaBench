; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_scoop.c___scoop_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_scoop.c___scoop_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scoop_dev = type { i64 }

@SCOOP_GPWR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scoop_dev*, i32, i32)* @__scoop_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__scoop_gpio_set(%struct.scoop_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scoop_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store %struct.scoop_dev* %0, %struct.scoop_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %9 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SCOOP_GPWR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call zeroext i16 @ioread16(i64 %12)
  store i16 %13, i16* %7, align 2
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = add i32 %17, 1
  %19 = shl i32 1, %18
  %20 = load i16, i16* %7, align 2
  %21 = zext i16 %20 to i32
  %22 = or i32 %21, %19
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %7, align 2
  br label %33

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 1
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  %29 = load i16, i16* %7, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, %28
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %7, align 2
  br label %33

33:                                               ; preds = %24, %16
  %34 = load i16, i16* %7, align 2
  %35 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %36 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SCOOP_GPWR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @iowrite16(i16 zeroext %34, i64 %39)
  ret void
}

declare dso_local zeroext i16 @ioread16(i64) #1

declare dso_local i32 @iowrite16(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
