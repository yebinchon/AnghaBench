; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32 (i32)*, i32 (i32)*, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_write(%struct.regmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.regmap*, %struct.regmap** %5, align 8
  %11 = getelementptr inbounds %struct.regmap, %struct.regmap* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @IS_ALIGNED(i32 %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.regmap*, %struct.regmap** %5, align 8
  %20 = getelementptr inbounds %struct.regmap, %struct.regmap* %19, i32 0, i32 2
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = load %struct.regmap*, %struct.regmap** %5, align 8
  %23 = getelementptr inbounds %struct.regmap, %struct.regmap* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %21(i32 %24)
  %26 = load %struct.regmap*, %struct.regmap** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @_regmap_write(%struct.regmap* %26, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.regmap*, %struct.regmap** %5, align 8
  %31 = getelementptr inbounds %struct.regmap, %struct.regmap* %30, i32 0, i32 1
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.regmap*, %struct.regmap** %5, align 8
  %34 = getelementptr inbounds %struct.regmap, %struct.regmap* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %32(i32 %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %18, %15
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @_regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
