; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_fields_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_fields_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_field = type { i32, i32, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_fields_read(%struct.regmap_field* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap_field*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regmap_field* %0, %struct.regmap_field** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.regmap_field*, %struct.regmap_field** %5, align 8
  %12 = getelementptr inbounds %struct.regmap_field, %struct.regmap_field* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp uge i32 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %51

18:                                               ; preds = %3
  %19 = load %struct.regmap_field*, %struct.regmap_field** %5, align 8
  %20 = getelementptr inbounds %struct.regmap_field, %struct.regmap_field* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.regmap_field*, %struct.regmap_field** %5, align 8
  %23 = getelementptr inbounds %struct.regmap_field, %struct.regmap_field* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.regmap_field*, %struct.regmap_field** %5, align 8
  %26 = getelementptr inbounds %struct.regmap_field, %struct.regmap_field* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = mul i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %24, %30
  %32 = call i32 @regmap_read(i32 %21, i64 %31, i32* %9)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %51

37:                                               ; preds = %18
  %38 = load %struct.regmap_field*, %struct.regmap_field** %5, align 8
  %39 = getelementptr inbounds %struct.regmap_field, %struct.regmap_field* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load %struct.regmap_field*, %struct.regmap_field** %5, align 8
  %44 = getelementptr inbounds %struct.regmap_field, %struct.regmap_field* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = lshr i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %37, %35, %15
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
