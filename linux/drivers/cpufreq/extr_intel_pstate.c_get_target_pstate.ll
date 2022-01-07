; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_get_target_pstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_get_target_pstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.cpudata = type { i32, i32, %struct.TYPE_3__, %struct.sample }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sample = type { i32, i32, i32 }

@global = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpudata*)* @get_target_pstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_target_pstate(%struct.cpudata* %0) #0 {
  %2 = alloca %struct.cpudata*, align 8
  %3 = alloca %struct.sample*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpudata* %0, %struct.cpudata** %2, align 8
  %7 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %8 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %7, i32 0, i32 3
  store %struct.sample* %8, %struct.sample** %3, align 8
  %9 = load %struct.sample*, %struct.sample** %3, align 8
  %10 = getelementptr inbounds %struct.sample, %struct.sample* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %13 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %11, %14
  %16 = load %struct.sample*, %struct.sample** %3, align 8
  %17 = getelementptr inbounds %struct.sample, %struct.sample* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @div_fp(i32 %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %22 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %27 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %1
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %30, 100
  %32 = load %struct.sample*, %struct.sample** %3, align 8
  %33 = getelementptr inbounds %struct.sample, %struct.sample* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @global, i32 0, i32 1), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @global, i32 0, i32 0), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36, %29
  %40 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %41 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  br label %49

44:                                               ; preds = %36
  %45 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %46 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i32 [ %43, %39 ], [ %48, %44 ]
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = ashr i32 %51, 2
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @mul_fp(i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %60 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %66 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %49
  %70 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %71 = call i32 @get_avg_pstate(%struct.cpudata* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = sub nsw i32 %76, %77
  %79 = ashr i32 %78, 1
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %75, %69
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @div_fp(i32, i32) #1

declare dso_local i32 @mul_fp(i32, i32) #1

declare dso_local i32 @get_avg_pstate(%struct.cpudata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
