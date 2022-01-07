; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_get_one_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_get_one_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i32, i64* }

@ENODEV = common dso_local global i32 0, align 4
@clock_names = common dso_local global i32* null, align 8
@SYSC_FCK = common dso_local global i64 0, align 8
@SYSC_ICK = common dso_local global i64 0, align 8
@SYSC_OPTFCK0 = common dso_local global i32 0, align 4
@SYSC_MAX_CLOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"clock %s not added\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"clock get error for %s: %li\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"clock prepare error for %s: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*, i8*)* @sysc_get_one_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_get_one_clock(%struct.sysc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** @clock_names, align 8
  %12 = load i64, i64* @SYSC_FCK, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strncmp(i32 %14, i8* %15, i32 3)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* @SYSC_FCK, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  br label %33

21:                                               ; preds = %2
  %22 = load i32*, i32** @clock_names, align 8
  %23 = load i64, i64* @SYSC_ICK, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strncmp(i32 %25, i8* %26, i32 3)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i64, i64* @SYSC_ICK, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %21
  br label %33

33:                                               ; preds = %32, %18
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load i32, i32* @SYSC_OPTFCK0, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %54, %36
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @SYSC_MAX_CLOCKS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.sysc*, %struct.sysc** %4, align 8
  %44 = getelementptr inbounds %struct.sysc, %struct.sysc* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %8, align 4
  br label %57

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %38

57:                                               ; preds = %51, %38
  br label %58

58:                                               ; preds = %57, %33
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.sysc*, %struct.sysc** %4, align 8
  %63 = getelementptr inbounds %struct.sysc, %struct.sysc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 (i32, i8*, i8*, ...) @dev_err(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %131

68:                                               ; preds = %58
  %69 = load %struct.sysc*, %struct.sysc** %4, align 8
  %70 = getelementptr inbounds %struct.sysc, %struct.sysc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i64 @devm_clk_get(i32 %71, i8* %72)
  %74 = load %struct.sysc*, %struct.sysc** %4, align 8
  %75 = getelementptr inbounds %struct.sysc, %struct.sysc* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 %73, i64* %79, align 8
  %80 = load %struct.sysc*, %struct.sysc** %4, align 8
  %81 = getelementptr inbounds %struct.sysc, %struct.sysc* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @IS_ERR(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %68
  %90 = load %struct.sysc*, %struct.sysc** %4, align 8
  %91 = getelementptr inbounds %struct.sysc, %struct.sysc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = load %struct.sysc*, %struct.sysc** %4, align 8
  %95 = getelementptr inbounds %struct.sysc, %struct.sysc* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @PTR_ERR(i64 %100)
  %102 = call i32 (i32, i8*, i8*, ...) @dev_err(i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %93, i32 %101)
  %103 = load %struct.sysc*, %struct.sysc** %4, align 8
  %104 = getelementptr inbounds %struct.sysc, %struct.sysc* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @PTR_ERR(i64 %109)
  store i32 %110, i32* %3, align 4
  br label %131

111:                                              ; preds = %68
  %112 = load %struct.sysc*, %struct.sysc** %4, align 8
  %113 = getelementptr inbounds %struct.sysc, %struct.sysc* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @clk_prepare(i64 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %111
  %123 = load %struct.sysc*, %struct.sysc** %4, align 8
  %124 = getelementptr inbounds %struct.sysc, %struct.sysc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 (i32, i8*, i8*, ...) @dev_err(i32 %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %126, i32 %127)
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %3, align 4
  br label %131

130:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %122, %89, %61
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, ...) #1

declare dso_local i64 @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @clk_prepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
