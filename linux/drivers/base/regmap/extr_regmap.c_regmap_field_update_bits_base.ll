; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_field_update_bits_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_field_update_bits_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_field = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_field_update_bits_base(%struct.regmap_field* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.regmap_field*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regmap_field* %0, %struct.regmap_field** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.regmap_field*, %struct.regmap_field** %7, align 8
  %15 = getelementptr inbounds %struct.regmap_field, %struct.regmap_field* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %13, %16
  %18 = load %struct.regmap_field*, %struct.regmap_field** %7, align 8
  %19 = getelementptr inbounds %struct.regmap_field, %struct.regmap_field* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %17, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.regmap_field*, %struct.regmap_field** %7, align 8
  %23 = getelementptr inbounds %struct.regmap_field, %struct.regmap_field* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.regmap_field*, %struct.regmap_field** %7, align 8
  %26 = getelementptr inbounds %struct.regmap_field, %struct.regmap_field* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.regmap_field*, %struct.regmap_field** %7, align 8
  %31 = getelementptr inbounds %struct.regmap_field, %struct.regmap_field* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %29, %32
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @regmap_update_bits_base(i32 %24, i32 %27, i32 %28, i32 %33, i32* %34, i32 %35, i32 %36)
  ret i32 %37
}

declare dso_local i32 @regmap_update_bits_base(i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
