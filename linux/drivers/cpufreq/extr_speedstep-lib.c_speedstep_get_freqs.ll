; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-lib.c_speedstep_get_freqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-lib.c_speedstep_get_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"trying to determine both speeds\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"previous speed is %u\0A\00", align 1
@SPEEDSTEP_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"low speed is %u\0A\00", align 1
@SPEEDSTEP_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"high speed is %u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"transition latency is %u uSec\0A\00", align 1
@.str.5 = private unnamed_addr constant [99 x i8] c"frequency transition measured seems out of range (%u nSec), falling back to a safe one of %u nSec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @speedstep_get_freqs(i32 %0, i32* %1, i32* %2, i32* %3, void (i32)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca void (i32)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store void (i32)* %4, void (i32)** %11, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load void (i32)*, void (i32)** %11, align 8
  %27 = icmp ne void (i32)* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %22, %19, %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %136

31:                                               ; preds = %25
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @speedstep_get_frequency(i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @EIO, align 4
  %39 = sub i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %136

40:                                               ; preds = %31
  %41 = load i32, i32* %12, align 4
  %42 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = call i32 (...) @preempt_disable()
  %44 = load i64, i64* %14, align 8
  %45 = call i32 @local_irq_save(i64 %44)
  %46 = load void (i32)*, void (i32)** %11, align 8
  %47 = load i32, i32* @SPEEDSTEP_LOW, align 4
  call void %46(i32 %47)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @speedstep_get_frequency(i32 %48)
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %40
  %55 = load i32, i32* @EIO, align 4
  %56 = sub i32 0, %55
  store i32 %56, i32* %13, align 4
  br label %131

57:                                               ; preds = %40
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %10, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 (...) @ktime_get()
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %63, %57
  %66 = load void (i32)*, void (i32)** %11, align 8
  %67 = load i32, i32* @SPEEDSTEP_HIGH, align 4
  call void %66(i32 %67)
  %68 = load i32*, i32** %10, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 (...) @ktime_get()
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @speedstep_get_frequency(i32 %73)
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @EIO, align 4
  %81 = sub i32 0, %80
  store i32 %81, i32* %13, align 4
  br label %131

82:                                               ; preds = %72
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub i32 0, %92
  store i32 %93, i32* %13, align 4
  br label %131

94:                                               ; preds = %82
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load void (i32)*, void (i32)** %11, align 8
  %101 = load i32, i32* @SPEEDSTEP_LOW, align 4
  call void %100(i32 %101)
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i32*, i32** %10, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %130

105:                                              ; preds = %102
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @ktime_sub(i32 %106, i32 %107)
  %109 = call i32 @ktime_to_us(i32 %108)
  %110 = load i32*, i32** %10, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %114, align 4
  %116 = mul i32 %115, 1200
  store i32 %116, i32* %114, align 4
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %117, align 4
  %119 = icmp ugt i32 %118, 10000000
  br i1 %119, label %124, label %120

120:                                              ; preds = %105
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* %121, align 4
  %123 = icmp ult i32 %122, 50000
  br i1 %123, label %124, label %129

124:                                              ; preds = %120, %105
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @pr_warn(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.5, i64 0, i64 0), i32 %126, i32 500000)
  %128 = load i32*, i32** %10, align 8
  store i32 500000, i32* %128, align 4
  br label %129

129:                                              ; preds = %124, %120
  br label %130

130:                                              ; preds = %129, %102
  br label %131

131:                                              ; preds = %130, %91, %79, %54
  %132 = load i64, i64* %14, align 8
  %133 = call i32 @local_irq_restore(i64 %132)
  %134 = call i32 (...) @preempt_enable()
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %131, %37, %28
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @speedstep_get_frequency(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
