; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_regmap_del_irq_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_regmap_del_irq_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_irq_chip_data = type { %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regmap_del_irq_chip(i32 %0, %struct.regmap_irq_chip_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap_irq_chip_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.regmap_irq_chip_data* %1, %struct.regmap_irq_chip_data** %4, align 8
  %7 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %8 = icmp ne %struct.regmap_irq_chip_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %85

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.regmap_irq_chip_data* %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %47, %10
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %17 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %16, i32 0, i32 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %14
  %23 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %24 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %23, i32 0, i32 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  br label %47

35:                                               ; preds = %22
  %36 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %37 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @irq_find_mapping(i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @irq_dispose_mapping(i32 %44)
  br label %46

46:                                               ; preds = %43, %35
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %14

50:                                               ; preds = %14
  %51 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %52 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @irq_domain_remove(i32 %53)
  %55 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %56 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %55, i32 0, i32 6
  %57 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %56, align 8
  %58 = call i32 @kfree(%struct.regmap_irq_chip_data* %57)
  %59 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %60 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %59, i32 0, i32 5
  %61 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %60, align 8
  %62 = call i32 @kfree(%struct.regmap_irq_chip_data* %61)
  %63 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %64 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %63, i32 0, i32 4
  %65 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %64, align 8
  %66 = call i32 @kfree(%struct.regmap_irq_chip_data* %65)
  %67 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %68 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %67, i32 0, i32 3
  %69 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %68, align 8
  %70 = call i32 @kfree(%struct.regmap_irq_chip_data* %69)
  %71 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %72 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %71, i32 0, i32 2
  %73 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %72, align 8
  %74 = call i32 @kfree(%struct.regmap_irq_chip_data* %73)
  %75 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %76 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %75, i32 0, i32 1
  %77 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %76, align 8
  %78 = call i32 @kfree(%struct.regmap_irq_chip_data* %77)
  %79 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %80 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %79, i32 0, i32 0
  %81 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %80, align 8
  %82 = call i32 @kfree(%struct.regmap_irq_chip_data* %81)
  %83 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %84 = call i32 @kfree(%struct.regmap_irq_chip_data* %83)
  br label %85

85:                                               ; preds = %50, %9
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.regmap_irq_chip_data*) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

declare dso_local i32 @kfree(%struct.regmap_irq_chip_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
