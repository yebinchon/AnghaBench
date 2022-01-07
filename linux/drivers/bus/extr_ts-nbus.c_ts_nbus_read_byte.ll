; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ts-nbus.c_ts_nbus_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ts-nbus.c_ts_nbus_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts_nbus = type { %struct.gpio_descs* }
%struct.gpio_descs = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ts_nbus*, i32*)* @ts_nbus_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_nbus_read_byte(%struct.ts_nbus* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ts_nbus*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gpio_descs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ts_nbus* %0, %struct.ts_nbus** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ts_nbus*, %struct.ts_nbus** %4, align 8
  %10 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %9, i32 0, i32 0
  %11 = load %struct.gpio_descs*, %struct.gpio_descs** %10, align 8
  store %struct.gpio_descs* %11, %struct.gpio_descs** %6, align 8
  %12 = load i32*, i32** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %39, %2
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %42

16:                                               ; preds = %13
  %17 = load %struct.gpio_descs*, %struct.gpio_descs** %6, align 8
  %18 = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gpiod_get_value_cansleep(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %16
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %29
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %13

42:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %27
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
