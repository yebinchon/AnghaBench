; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_regmap_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_regmap_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.regmap_irq_chip_data = type { i32*, %struct.regmap* }
%struct.regmap = type { i32 }
%struct.regmap_irq = type { %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @regmap_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap_irq_chip_data*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.regmap_irq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.regmap_irq_type*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %12 = call %struct.regmap_irq_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data* %11)
  store %struct.regmap_irq_chip_data* %12, %struct.regmap_irq_chip_data** %6, align 8
  %13 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %6, align 8
  %14 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %13, i32 0, i32 1
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %7, align 8
  %16 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %6, align 8
  %17 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.regmap_irq* @irq_to_regmap_irq(%struct.regmap_irq_chip_data* %16, i32 %19)
  store %struct.regmap_irq* %20, %struct.regmap_irq** %8, align 8
  %21 = load %struct.regmap_irq*, %struct.regmap_irq** %8, align 8
  %22 = getelementptr inbounds %struct.regmap_irq, %struct.regmap_irq* %21, i32 0, i32 0
  store %struct.regmap_irq_type* %22, %struct.regmap_irq_type** %10, align 8
  %23 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %24 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %151

31:                                               ; preds = %2
  %32 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %33 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.regmap*, %struct.regmap** %7, align 8
  %36 = getelementptr inbounds %struct.regmap, %struct.regmap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %34, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %40 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %31
  %44 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %45 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %6, align 8
  %49 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %47
  store i32 %55, i32* %53, align 4
  br label %81

56:                                               ; preds = %31
  %57 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %58 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %61 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %59, %62
  %64 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %65 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %69 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %67, %70
  %72 = xor i32 %71, -1
  %73 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %6, align 8
  %74 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %72
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %56, %43
  %82 = load i32, i32* %5, align 4
  switch i32 %82, label %147 [
    i32 131, label %83
    i32 130, label %95
    i32 132, label %107
    i32 129, label %123
    i32 128, label %135
  ]

83:                                               ; preds = %81
  %84 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %85 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %6, align 8
  %88 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %86
  store i32 %94, i32* %92, align 4
  br label %150

95:                                               ; preds = %81
  %96 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %97 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %6, align 8
  %100 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %98
  store i32 %106, i32* %104, align 4
  br label %150

107:                                              ; preds = %81
  %108 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %109 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %112 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %110, %113
  %115 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %6, align 8
  %116 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %114
  store i32 %122, i32* %120, align 4
  br label %150

123:                                              ; preds = %81
  %124 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %125 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %6, align 8
  %128 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %126
  store i32 %134, i32* %132, align 4
  br label %150

135:                                              ; preds = %81
  %136 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %137 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %6, align 8
  %140 = getelementptr inbounds %struct.regmap_irq_chip_data, %struct.regmap_irq_chip_data* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %138
  store i32 %146, i32* %144, align 4
  br label %150

147:                                              ; preds = %81
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %151

150:                                              ; preds = %135, %123, %107, %95, %83
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %147, %30
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.regmap_irq_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.regmap_irq* @irq_to_regmap_irq(%struct.regmap_irq_chip_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
