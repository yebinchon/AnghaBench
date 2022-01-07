; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_cached.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i64, i32, i32, i32 (i32)*, i32 (i32)*, i32 }

@REGCACHE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_cached(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.regmap*, %struct.regmap** %4, align 8
  %9 = getelementptr inbounds %struct.regmap, %struct.regmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @REGCACHE_NONE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

14:                                               ; preds = %2
  %15 = load %struct.regmap*, %struct.regmap** %4, align 8
  %16 = getelementptr inbounds %struct.regmap, %struct.regmap* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %54

20:                                               ; preds = %14
  %21 = load %struct.regmap*, %struct.regmap** %4, align 8
  %22 = getelementptr inbounds %struct.regmap, %struct.regmap* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.regmap*, %struct.regmap** %4, align 8
  %28 = getelementptr inbounds %struct.regmap, %struct.regmap* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %54

32:                                               ; preds = %25, %20
  %33 = load %struct.regmap*, %struct.regmap** %4, align 8
  %34 = getelementptr inbounds %struct.regmap, %struct.regmap* %33, i32 0, i32 4
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = load %struct.regmap*, %struct.regmap** %4, align 8
  %37 = getelementptr inbounds %struct.regmap, %struct.regmap* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %35(i32 %38)
  %40 = load %struct.regmap*, %struct.regmap** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @regcache_read(%struct.regmap* %40, i32 %41, i32* %7)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.regmap*, %struct.regmap** %4, align 8
  %44 = getelementptr inbounds %struct.regmap, %struct.regmap* %43, i32 0, i32 3
  %45 = load i32 (i32)*, i32 (i32)** %44, align 8
  %46 = load %struct.regmap*, %struct.regmap** %4, align 8
  %47 = getelementptr inbounds %struct.regmap, %struct.regmap* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 %45(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %54

53:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %52, %31, %19, %13
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @regcache_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
