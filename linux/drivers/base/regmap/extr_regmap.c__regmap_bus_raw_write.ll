; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_bus_raw_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_bus_raw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i32 (i64, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @_regmap_bus_raw_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regmap_bus_raw_write(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.regmap*
  store %struct.regmap* %9, %struct.regmap** %7, align 8
  %10 = load %struct.regmap*, %struct.regmap** %7, align 8
  %11 = getelementptr inbounds %struct.regmap, %struct.regmap* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.regmap*, %struct.regmap** %7, align 8
  %16 = getelementptr inbounds %struct.regmap, %struct.regmap* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %17, align 8
  %19 = icmp ne i32 (i64, i32, i32)* %18, null
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %14, %3
  %22 = phi i1 [ true, %3 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.regmap*, %struct.regmap** %7, align 8
  %26 = getelementptr inbounds %struct.regmap, %struct.regmap* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %27, align 8
  %29 = load %struct.regmap*, %struct.regmap** %7, align 8
  %30 = getelementptr inbounds %struct.regmap, %struct.regmap* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.regmap*, %struct.regmap** %7, align 8
  %33 = getelementptr inbounds %struct.regmap, %struct.regmap* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %31, %35
  %37 = load %struct.regmap*, %struct.regmap** %7, align 8
  %38 = getelementptr inbounds %struct.regmap, %struct.regmap* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %36, %40
  %42 = load i32, i32* %6, align 4
  %43 = call i32 %28(i64 %41, i32 %42, i32 0)
  %44 = load %struct.regmap*, %struct.regmap** %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.regmap*, %struct.regmap** %7, align 8
  %47 = getelementptr inbounds %struct.regmap, %struct.regmap* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.regmap*, %struct.regmap** %7, align 8
  %50 = getelementptr inbounds %struct.regmap, %struct.regmap* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %48, %52
  %54 = load %struct.regmap*, %struct.regmap** %7, align 8
  %55 = getelementptr inbounds %struct.regmap, %struct.regmap* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %53, %57
  %59 = load %struct.regmap*, %struct.regmap** %7, align 8
  %60 = getelementptr inbounds %struct.regmap, %struct.regmap* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @_regmap_raw_write_impl(%struct.regmap* %44, i32 %45, i64 %58, i32 %62)
  ret i32 %63
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @_regmap_raw_write_impl(%struct.regmap*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
