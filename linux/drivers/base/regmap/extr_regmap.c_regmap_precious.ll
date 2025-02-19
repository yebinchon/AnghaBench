; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_precious.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_precious.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 (i32, i32)*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_precious(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.regmap*, %struct.regmap** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @regmap_readable(%struct.regmap* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

11:                                               ; preds = %2
  %12 = load %struct.regmap*, %struct.regmap** %4, align 8
  %13 = getelementptr inbounds %struct.regmap, %struct.regmap* %12, i32 0, i32 0
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = icmp ne i32 (i32, i32)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.regmap*, %struct.regmap** %4, align 8
  %18 = getelementptr inbounds %struct.regmap, %struct.regmap* %17, i32 0, i32 0
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = load %struct.regmap*, %struct.regmap** %4, align 8
  %21 = getelementptr inbounds %struct.regmap, %struct.regmap* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 %19(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %38

25:                                               ; preds = %11
  %26 = load %struct.regmap*, %struct.regmap** %4, align 8
  %27 = getelementptr inbounds %struct.regmap, %struct.regmap* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.regmap*, %struct.regmap** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.regmap*, %struct.regmap** %4, align 8
  %34 = getelementptr inbounds %struct.regmap, %struct.regmap* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @regmap_check_range_table(%struct.regmap* %31, i32 %32, i64 %35)
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %30, %16, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @regmap_readable(%struct.regmap*, i32) #1

declare dso_local i32 @regmap_check_range_table(%struct.regmap*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
