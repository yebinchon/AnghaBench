; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-flat.c_regcache_flat_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-flat.c_regcache_flat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i64, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*)* @regcache_flat_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regcache_flat_init(%struct.regmap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  %8 = load %struct.regmap*, %struct.regmap** %3, align 8
  %9 = icmp ne %struct.regmap* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.regmap*, %struct.regmap** %3, align 8
  %12 = getelementptr inbounds %struct.regmap, %struct.regmap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.regmap*, %struct.regmap** %3, align 8
  %17 = getelementptr inbounds %struct.regmap, %struct.regmap* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %10, %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %79

23:                                               ; preds = %15
  %24 = load %struct.regmap*, %struct.regmap** %3, align 8
  %25 = load %struct.regmap*, %struct.regmap** %3, align 8
  %26 = getelementptr inbounds %struct.regmap, %struct.regmap* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @regcache_flat_get_index(%struct.regmap* %24, i32 %27)
  %29 = add i32 %28, 1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32* @kcalloc(i32 %29, i32 4, i32 %30)
  %32 = load %struct.regmap*, %struct.regmap** %3, align 8
  %33 = getelementptr inbounds %struct.regmap, %struct.regmap* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.regmap*, %struct.regmap** %3, align 8
  %35 = getelementptr inbounds %struct.regmap, %struct.regmap* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %23
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %79

41:                                               ; preds = %23
  %42 = load %struct.regmap*, %struct.regmap** %3, align 8
  %43 = getelementptr inbounds %struct.regmap, %struct.regmap* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %5, align 8
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %75, %41
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.regmap*, %struct.regmap** %3, align 8
  %48 = getelementptr inbounds %struct.regmap, %struct.regmap* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %45
  %52 = load %struct.regmap*, %struct.regmap** %3, align 8
  %53 = getelementptr inbounds %struct.regmap, %struct.regmap* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %6, align 4
  %60 = load %struct.regmap*, %struct.regmap** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @regcache_flat_get_index(%struct.regmap* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.regmap*, %struct.regmap** %3, align 8
  %64 = getelementptr inbounds %struct.regmap, %struct.regmap* %63, i32 0, i32 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %51
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %45

78:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %38, %20
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @regcache_flat_get_index(%struct.regmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
