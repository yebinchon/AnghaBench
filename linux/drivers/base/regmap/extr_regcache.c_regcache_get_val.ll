; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_get_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_get_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regcache_get_val(%struct.regmap* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %63

16:                                               ; preds = %3
  %17 = load %struct.regmap*, %struct.regmap** %5, align 8
  %18 = getelementptr inbounds %struct.regmap, %struct.regmap* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = icmp ne i32 (i32)* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.regmap*, %struct.regmap** %5, align 8
  %24 = getelementptr inbounds %struct.regmap, %struct.regmap* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = load %struct.regmap*, %struct.regmap** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @regcache_get_val_addr(%struct.regmap* %27, i8* %28, i32 %29)
  %31 = call i32 %26(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %63

32:                                               ; preds = %16
  %33 = load %struct.regmap*, %struct.regmap** %5, align 8
  %34 = getelementptr inbounds %struct.regmap, %struct.regmap* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %60 [
    i32 1, label %36
    i32 2, label %44
    i32 4, label %52
  ]

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  br label %63

44:                                               ; preds = %32
  %45 = load i8*, i8** %6, align 8
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  br label %63

52:                                               ; preds = %32
  %53 = load i8*, i8** %6, align 8
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %32
  %61 = call i32 (...) @BUG()
  br label %62

62:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %52, %44, %36, %22, %13
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @regcache_get_val_addr(%struct.regmap*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
