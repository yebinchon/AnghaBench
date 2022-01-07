; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 (i8*, i32, i32*)*, i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%x => %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32, i32*)* @_regmap_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regmap_read(%struct.regmap* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.regmap*, %struct.regmap** %5, align 8
  %11 = call i8* @_regmap_map_get_context(%struct.regmap* %10)
  store i8* %11, i8** %9, align 8
  %12 = load %struct.regmap*, %struct.regmap** %5, align 8
  %13 = getelementptr inbounds %struct.regmap, %struct.regmap* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load %struct.regmap*, %struct.regmap** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @regcache_read(%struct.regmap* %17, i32 %18, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %82

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.regmap*, %struct.regmap** %5, align 8
  %27 = getelementptr inbounds %struct.regmap, %struct.regmap* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %82

33:                                               ; preds = %25
  %34 = load %struct.regmap*, %struct.regmap** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @regmap_readable(%struct.regmap* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %82

41:                                               ; preds = %33
  %42 = load %struct.regmap*, %struct.regmap** %5, align 8
  %43 = getelementptr inbounds %struct.regmap, %struct.regmap* %42, i32 0, i32 0
  %44 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %43, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 %44(i8* %45, i32 %46, i32* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %41
  %52 = load %struct.regmap*, %struct.regmap** %5, align 8
  %53 = call i64 @regmap_should_log(%struct.regmap* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load %struct.regmap*, %struct.regmap** %5, align 8
  %57 = getelementptr inbounds %struct.regmap, %struct.regmap* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_info(i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %55, %51
  %64 = load %struct.regmap*, %struct.regmap** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @trace_regmap_reg_read(%struct.regmap* %64, i32 %65, i32 %67)
  %69 = load %struct.regmap*, %struct.regmap** %5, align 8
  %70 = getelementptr inbounds %struct.regmap, %struct.regmap* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %63
  %74 = load %struct.regmap*, %struct.regmap** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @regcache_write(%struct.regmap* %74, i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %73, %63
  br label %80

80:                                               ; preds = %79, %41
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %38, %30, %23
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i8* @_regmap_map_get_context(%struct.regmap*) #1

declare dso_local i32 @regcache_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_readable(%struct.regmap*, i32) #1

declare dso_local i64 @regmap_should_log(%struct.regmap*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @trace_regmap_reg_read(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regcache_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
