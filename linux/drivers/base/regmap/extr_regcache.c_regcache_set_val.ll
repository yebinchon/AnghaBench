; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_set_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_set_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i8*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regcache_set_val(%struct.regmap* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.regmap*, %struct.regmap** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @regcache_get_val(%struct.regmap* %13, i8* %14, i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %72

20:                                               ; preds = %4
  %21 = load %struct.regmap*, %struct.regmap** %6, align 8
  %22 = getelementptr inbounds %struct.regmap, %struct.regmap* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %23, align 8
  %25 = icmp ne i32 (i8*, i32, i32)* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.regmap*, %struct.regmap** %6, align 8
  %28 = getelementptr inbounds %struct.regmap, %struct.regmap* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %29, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.regmap*, %struct.regmap** %6, align 8
  %33 = getelementptr inbounds %struct.regmap, %struct.regmap* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = mul i32 %34, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr i8, i8* %31, i64 %37
  %39 = load i32, i32* %9, align 4
  %40 = call i32 %30(i8* %38, i32 %39, i32 0)
  store i32 0, i32* %5, align 4
  br label %72

41:                                               ; preds = %20
  %42 = load %struct.regmap*, %struct.regmap** %6, align 8
  %43 = getelementptr inbounds %struct.regmap, %struct.regmap* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %69 [
    i32 1, label %45
    i32 2, label %53
    i32 4, label %61
  ]

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** %10, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  br label %71

53:                                               ; preds = %41
  %54 = load i8*, i8** %7, align 8
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %11, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %71

61:                                               ; preds = %41
  %62 = load i8*, i8** %7, align 8
  %63 = bitcast i8* %62 to i32*
  store i32* %63, i32** %12, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %71

69:                                               ; preds = %41
  %70 = call i32 (...) @BUG()
  br label %71

71:                                               ; preds = %69, %61, %53, %45
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %26, %19
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @regcache_get_val(%struct.regmap*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
