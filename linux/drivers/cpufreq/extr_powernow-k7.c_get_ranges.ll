; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k7.c_get_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k7.c_get_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@number_scales = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@powernow_table = common dso_local global %struct.TYPE_3__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@fsb = common dso_local global i32 0, align 4
@fid_codes = common dso_local global i32* null, align 8
@minimum_speed = common dso_local global i32 0, align 4
@maximum_speed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"   FID: 0x%x (%d.%dx [%dMHz])  VID: 0x%x (%d.%03dV)\0A\00", align 1
@mobile_vid_table = common dso_local global i32* null, align 8
@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@have_a0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ranges(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @number_scales, align 4
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = mul i64 16, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.TYPE_3__* @kzalloc(i32 %12, i32 %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** @powernow_table, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @powernow_table, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %127

20:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %112, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @number_scales, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %115

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  %28 = load i8, i8* %26, align 1
  %29 = zext i8 %28 to i64
  store i64 %29, i64* %6, align 8
  %30 = load i32, i32* @fsb, align 4
  %31 = load i32*, i32** @fid_codes, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %30, %34
  %36 = sdiv i32 %35, 10
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @powernow_table, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @powernow_table, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 %42, i64* %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @powernow_table, align 8
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %5, align 4
  %54 = load i32*, i32** @fid_codes, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = srem i32 %57, 10
  %59 = icmp eq i32 %58, 5
  br i1 %59, label %60, label %61

60:                                               ; preds = %25
  br label %61

61:                                               ; preds = %60, %25
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @minimum_speed, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* @minimum_speed, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @maximum_speed, align 4
  %70 = icmp ugt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* @maximum_speed, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %3, align 8
  %76 = load i8, i8* %74, align 1
  %77 = zext i8 %76 to i64
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = shl i64 %78, 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @powernow_table, align 8
  %81 = load i32, i32* %4, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = or i64 %85, %79
  store i64 %86, i64* %84, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i32*, i32** @fid_codes, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %91, 10
  %93 = load i32*, i32** @fid_codes, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = srem i32 %96, 10
  %98 = load i32, i32* %5, align 4
  %99 = udiv i32 %98, 1000
  %100 = load i64, i64* %7, align 8
  %101 = load i32*, i32** @mobile_vid_table, align 8
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 1000
  %106 = load i32*, i32** @mobile_vid_table, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = srem i32 %109, 1000
  %111 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %87, i32 %92, i32 %97, i32 %99, i64 %100, i32 %105, i32 %110)
  br label %112

112:                                              ; preds = %73
  %113 = load i32, i32* %4, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %21

115:                                              ; preds = %21
  %116 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @powernow_table, align 8
  %118 = load i32, i32* @number_scales, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i32 %116, i32* %121, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** @powernow_table, align 8
  %123 = load i32, i32* @number_scales, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %115, %17
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
