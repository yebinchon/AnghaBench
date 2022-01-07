; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_regmap_irq_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_regmap_irq_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.regmap_irq_chip_data = type { i32, i32*, %struct.regmap* }
%struct.regmap = type { i64 }
%struct.regmap_irq = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @regmap_irq_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_irq_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap_irq_chip_data*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.regmap_irq*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = call %struct.regmap_irq_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.regmap_irq_chip_data* %9, %struct.regmap_irq_chip_data** %5, align 8
  %10 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %5, align 8
  %11 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %10, i32 0, i32 2
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %6, align 8
  %13 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %5, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.regmap_irq* @irq_to_regmap_irq(%struct.regmap_irq_chip_data* %13, i32 %16)
  store %struct.regmap_irq* %17, %struct.regmap_irq** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %2
  %21 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %5, align 8
  %22 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.regmap_irq*, %struct.regmap_irq** %7, align 8
  %27 = getelementptr inbounds %struct.regmap_irq, %struct.regmap_irq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = xor i32 %28, -1
  %30 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %5, align 8
  %31 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.regmap_irq*, %struct.regmap_irq** %7, align 8
  %34 = getelementptr inbounds %struct.regmap_irq, %struct.regmap_irq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.regmap*, %struct.regmap** %6, align 8
  %37 = getelementptr inbounds %struct.regmap, %struct.regmap* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = udiv i64 %35, %38
  %40 = getelementptr inbounds i32, i32* %32, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %29
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %25, %20
  %44 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %5, align 8
  %45 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  br label %75

48:                                               ; preds = %2
  %49 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %5, align 8
  %50 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load %struct.regmap_irq*, %struct.regmap_irq** %7, align 8
  %55 = getelementptr inbounds %struct.regmap_irq, %struct.regmap_irq* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %5, align 8
  %58 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.regmap_irq*, %struct.regmap_irq** %7, align 8
  %61 = getelementptr inbounds %struct.regmap_irq, %struct.regmap_irq* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.regmap*, %struct.regmap** %6, align 8
  %64 = getelementptr inbounds %struct.regmap, %struct.regmap* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = udiv i64 %62, %65
  %67 = getelementptr inbounds i32, i32* %59, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %56
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %53, %48
  %71 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %5, align 8
  %72 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %70, %43
  ret i32 0
}

declare dso_local %struct.regmap_irq_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.regmap_irq* @irq_to_regmap_irq(%struct.regmap_irq_chip_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
