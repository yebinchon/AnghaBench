; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_regmap_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_regmap_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.regmap_irq_chip_data = type { i32*, i32, i32*, %struct.TYPE_4__*, %struct.regmap* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.regmap = type { i64 }
%struct.regmap_irq = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @regmap_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regmap_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.regmap_irq_chip_data*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.regmap_irq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.regmap_irq_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.regmap_irq_chip_data* %9, %struct.regmap_irq_chip_data** %3, align 8
  %10 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %11 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %10, i32 0, i32 4
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %4, align 8
  %13 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.regmap_irq* @irq_to_regmap_irq(%struct.regmap_irq_chip_data* %13, i32 %16)
  store %struct.regmap_irq* %17, %struct.regmap_irq** %5, align 8
  %18 = load %struct.regmap_irq*, %struct.regmap_irq** %5, align 8
  %19 = getelementptr inbounds %struct.regmap_irq, %struct.regmap_irq* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.regmap_irq*, %struct.regmap_irq** %5, align 8
  %23 = getelementptr inbounds %struct.regmap_irq, %struct.regmap_irq* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %21, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %28 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %1
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %38 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.regmap_irq*, %struct.regmap_irq** %5, align 8
  %41 = getelementptr inbounds %struct.regmap_irq, %struct.regmap_irq* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.regmap*, %struct.regmap** %4, align 8
  %44 = getelementptr inbounds %struct.regmap, %struct.regmap* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = udiv i64 %42, %45
  %47 = getelementptr inbounds i32, i32* %39, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  br label %53

49:                                               ; preds = %33, %1
  %50 = load %struct.regmap_irq*, %struct.regmap_irq** %5, align 8
  %51 = getelementptr inbounds %struct.regmap_irq, %struct.regmap_irq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %36
  %54 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %55 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %62 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %61, i32 0, i32 1
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %53
  %64 = load i32, i32* %6, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %67 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.regmap_irq*, %struct.regmap_irq** %5, align 8
  %70 = getelementptr inbounds %struct.regmap_irq, %struct.regmap_irq* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.regmap*, %struct.regmap** %4, align 8
  %73 = getelementptr inbounds %struct.regmap, %struct.regmap* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = udiv i64 %71, %74
  %76 = getelementptr inbounds i32, i32* %68, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %65
  store i32 %78, i32* %76, align 4
  ret void
}

declare dso_local %struct.regmap_irq_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.regmap_irq* @irq_to_regmap_irq(%struct.regmap_irq_chip_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
