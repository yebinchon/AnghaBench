; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i64, %struct.TYPE_2__*, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.regmap*)*, i32 }

@REGCACHE_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Destroying %s cache\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regcache_exit(%struct.regmap* %0) #0 {
  %2 = alloca %struct.regmap*, align 8
  store %struct.regmap* %0, %struct.regmap** %2, align 8
  %3 = load %struct.regmap*, %struct.regmap** %2, align 8
  %4 = getelementptr inbounds %struct.regmap, %struct.regmap* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @REGCACHE_NONE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %54

9:                                                ; preds = %1
  %10 = load %struct.regmap*, %struct.regmap** %2, align 8
  %11 = getelementptr inbounds %struct.regmap, %struct.regmap* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.regmap*, %struct.regmap** %2, align 8
  %18 = getelementptr inbounds %struct.regmap, %struct.regmap* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @kfree(i32 %19)
  %21 = load %struct.regmap*, %struct.regmap** %2, align 8
  %22 = getelementptr inbounds %struct.regmap, %struct.regmap* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %9
  %26 = load %struct.regmap*, %struct.regmap** %2, align 8
  %27 = getelementptr inbounds %struct.regmap, %struct.regmap* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  br label %30

30:                                               ; preds = %25, %9
  %31 = load %struct.regmap*, %struct.regmap** %2, align 8
  %32 = getelementptr inbounds %struct.regmap, %struct.regmap* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.regmap*)*, i32 (%struct.regmap*)** %34, align 8
  %36 = icmp ne i32 (%struct.regmap*)* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load %struct.regmap*, %struct.regmap** %2, align 8
  %39 = getelementptr inbounds %struct.regmap, %struct.regmap* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.regmap*, %struct.regmap** %2, align 8
  %42 = getelementptr inbounds %struct.regmap, %struct.regmap* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.regmap*, %struct.regmap** %2, align 8
  %48 = getelementptr inbounds %struct.regmap, %struct.regmap* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.regmap*)*, i32 (%struct.regmap*)** %50, align 8
  %52 = load %struct.regmap*, %struct.regmap** %2, align 8
  %53 = call i32 %51(%struct.regmap* %52)
  br label %54

54:                                               ; preds = %8, %37, %30
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
