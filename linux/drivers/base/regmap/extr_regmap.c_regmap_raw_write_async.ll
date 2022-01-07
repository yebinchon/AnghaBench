; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_raw_write_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_raw_write_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32, i32 (i32)*, i32 (i32)*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_raw_write_async(%struct.regmap* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = load %struct.regmap*, %struct.regmap** %6, align 8
  %13 = getelementptr inbounds %struct.regmap, %struct.regmap* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = urem i64 %11, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %56

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.regmap*, %struct.regmap** %6, align 8
  %24 = getelementptr inbounds %struct.regmap, %struct.regmap* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @IS_ALIGNED(i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %56

31:                                               ; preds = %21
  %32 = load %struct.regmap*, %struct.regmap** %6, align 8
  %33 = getelementptr inbounds %struct.regmap, %struct.regmap* %32, i32 0, i32 3
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = load %struct.regmap*, %struct.regmap** %6, align 8
  %36 = getelementptr inbounds %struct.regmap, %struct.regmap* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %34(i32 %37)
  %39 = load %struct.regmap*, %struct.regmap** %6, align 8
  %40 = getelementptr inbounds %struct.regmap, %struct.regmap* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.regmap*, %struct.regmap** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @_regmap_raw_write(%struct.regmap* %41, i32 %42, i8* %43, i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.regmap*, %struct.regmap** %6, align 8
  %47 = getelementptr inbounds %struct.regmap, %struct.regmap* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.regmap*, %struct.regmap** %6, align 8
  %49 = getelementptr inbounds %struct.regmap, %struct.regmap* %48, i32 0, i32 2
  %50 = load i32 (i32)*, i32 (i32)** %49, align 8
  %51 = load %struct.regmap*, %struct.regmap** %6, align 8
  %52 = getelementptr inbounds %struct.regmap, %struct.regmap* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 %50(i32 %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %31, %28, %18
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @_regmap_raw_write(%struct.regmap*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
