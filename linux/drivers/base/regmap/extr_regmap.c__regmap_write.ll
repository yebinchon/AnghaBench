; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32 (i8*, i32, i32)*, i32, i64, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%x <= %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_regmap_write(%struct.regmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.regmap*, %struct.regmap** %5, align 8
  %11 = call i8* @_regmap_map_get_context(%struct.regmap* %10)
  store i8* %11, i8** %9, align 8
  %12 = load %struct.regmap*, %struct.regmap** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @regmap_writeable(%struct.regmap* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %70

19:                                               ; preds = %3
  %20 = load %struct.regmap*, %struct.regmap** %5, align 8
  %21 = getelementptr inbounds %struct.regmap, %struct.regmap* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %19
  %25 = load %struct.regmap*, %struct.regmap** %5, align 8
  %26 = getelementptr inbounds %struct.regmap, %struct.regmap* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %24
  %30 = load %struct.regmap*, %struct.regmap** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @regcache_write(%struct.regmap* %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %70

38:                                               ; preds = %29
  %39 = load %struct.regmap*, %struct.regmap** %5, align 8
  %40 = getelementptr inbounds %struct.regmap, %struct.regmap* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.regmap*, %struct.regmap** %5, align 8
  %45 = getelementptr inbounds %struct.regmap, %struct.regmap* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  store i32 0, i32* %4, align 4
  br label %70

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %24, %19
  %48 = load %struct.regmap*, %struct.regmap** %5, align 8
  %49 = call i64 @regmap_should_log(%struct.regmap* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.regmap*, %struct.regmap** %5, align 8
  %53 = getelementptr inbounds %struct.regmap, %struct.regmap* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @dev_info(i32 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %47
  %59 = load %struct.regmap*, %struct.regmap** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @trace_regmap_reg_write(%struct.regmap* %59, i32 %60, i32 %61)
  %63 = load %struct.regmap*, %struct.regmap** %5, align 8
  %64 = getelementptr inbounds %struct.regmap, %struct.regmap* %63, i32 0, i32 1
  %65 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %64, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 %65(i8* %66, i32 %67, i32 %68)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %58, %43, %36, %16
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i8* @_regmap_map_get_context(%struct.regmap*) #1

declare dso_local i32 @regmap_writeable(%struct.regmap*, i32) #1

declare dso_local i32 @regcache_write(%struct.regmap*, i32, i32) #1

declare dso_local i64 @regmap_should_log(%struct.regmap*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @trace_regmap_reg_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
