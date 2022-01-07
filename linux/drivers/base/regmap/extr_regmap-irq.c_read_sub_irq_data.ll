; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_read_sub_irq_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_read_sub_irq_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_irq_chip_data = type { i32, i32*, %struct.regmap*, %struct.regmap_irq_chip* }
%struct.regmap = type { i32 }
%struct.regmap_irq_chip = type { i64, %struct.regmap_irq_sub_irq_map* }
%struct.regmap_irq_sub_irq_map = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap_irq_chip_data*, i32)* @read_sub_irq_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_sub_irq_data(%struct.regmap_irq_chip_data* %0, i32 %1) #0 {
  %3 = alloca %struct.regmap_irq_chip_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap_irq_chip*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.regmap_irq_sub_irq_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regmap_irq_chip_data* %0, %struct.regmap_irq_chip_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %12 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %11, i32 0, i32 3
  %13 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** %12, align 8
  store %struct.regmap_irq_chip* %13, %struct.regmap_irq_chip** %5, align 8
  %14 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %15 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %14, i32 0, i32 2
  %16 = load %struct.regmap*, %struct.regmap** %15, align 8
  store %struct.regmap* %16, %struct.regmap** %6, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** %5, align 8
  %18 = getelementptr inbounds %struct.regmap_irq_chip, %struct.regmap_irq_chip* %17, i32 0, i32 1
  %19 = load %struct.regmap_irq_sub_irq_map*, %struct.regmap_irq_sub_irq_map** %18, align 8
  %20 = icmp ne %struct.regmap_irq_sub_irq_map* %19, null
  br i1 %20, label %44, label %21

21:                                               ; preds = %2
  %22 = load %struct.regmap*, %struct.regmap** %6, align 8
  %23 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** %5, align 8
  %24 = getelementptr inbounds %struct.regmap_irq_chip, %struct.regmap_irq_chip* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.regmap*, %struct.regmap** %6, align 8
  %28 = getelementptr inbounds %struct.regmap, %struct.regmap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul i32 %26, %29
  %31 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %32 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul i32 %30, %33
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %25, %35
  %37 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %38 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @regmap_read(%struct.regmap* %22, i64 %36, i32* %42)
  store i32 %43, i32* %9, align 4
  br label %87

44:                                               ; preds = %2
  %45 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** %5, align 8
  %46 = getelementptr inbounds %struct.regmap_irq_chip, %struct.regmap_irq_chip* %45, i32 0, i32 1
  %47 = load %struct.regmap_irq_sub_irq_map*, %struct.regmap_irq_sub_irq_map** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.regmap_irq_sub_irq_map, %struct.regmap_irq_sub_irq_map* %47, i64 %49
  store %struct.regmap_irq_sub_irq_map* %50, %struct.regmap_irq_sub_irq_map** %7, align 8
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %83, %44
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.regmap_irq_sub_irq_map*, %struct.regmap_irq_sub_irq_map** %7, align 8
  %54 = getelementptr inbounds %struct.regmap_irq_sub_irq_map, %struct.regmap_irq_sub_irq_map* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %51
  %58 = load %struct.regmap_irq_sub_irq_map*, %struct.regmap_irq_sub_irq_map** %7, align 8
  %59 = getelementptr inbounds %struct.regmap_irq_sub_irq_map, %struct.regmap_irq_sub_irq_map* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  %65 = load %struct.regmap*, %struct.regmap** %6, align 8
  %66 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** %5, align 8
  %67 = getelementptr inbounds %struct.regmap_irq_chip, %struct.regmap_irq_chip* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %3, align 8
  %73 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @regmap_read(%struct.regmap* %65, i64 %71, i32* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %57
  br label %86

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %51

86:                                               ; preds = %81, %51
  br label %87

87:                                               ; preds = %86, %21
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local i32 @regmap_read(%struct.regmap*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
