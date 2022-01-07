; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/sun3/extr_intersil.c_sun3_hwclk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/sun3/extr_intersil.c_sun3_hwclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.intersil_dt = type { i32, i32, i32, i64, i64, i32, i32, i64 }

@intersil_clock = common dso_local global %struct.TYPE_2__* null, align 8
@STOP_VAL = common dso_local global i32 0, align 4
@START_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun3_hwclk(i32 %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.intersil_dt*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intersil_clock, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = bitcast i32* %8 to %struct.intersil_dt*
  store %struct.intersil_dt* %9, %struct.intersil_dt** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load i32, i32* @STOP_VAL, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intersil_clock, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %2
  %18 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %19 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %18, i32 0, i32 7
  store volatile i64 0, i64* %19, align 8
  %20 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %24 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %23, i32 0, i32 6
  store volatile i32 %22, i32* %24, align 4
  %25 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %29 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %28, i32 0, i32 5
  store volatile i32 %27, i32* %29, align 8
  %30 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %34 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %33, i32 0, i32 4
  store volatile i64 %32, i64* %34, align 8
  %35 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %40 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %39, i32 0, i32 3
  store volatile i64 %38, i64* %40, align 8
  %41 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %45 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %44, i32 0, i32 2
  store volatile i32 %43, i32* %45, align 8
  %46 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 68
  %50 = srem i32 %49, 100
  %51 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %52 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %51, i32 0, i32 0
  store volatile i32 %50, i32* %52, align 8
  %53 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %57 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %56, i32 0, i32 1
  store volatile i32 %55, i32* %57, align 4
  br label %111

58:                                               ; preds = %2
  %59 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %60 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %59, i32 0, i32 7
  %61 = load volatile i64, i64* %60, align 8
  %62 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %65 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %64, i32 0, i32 6
  %66 = load volatile i32, i32* %65, align 4
  %67 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 4
  %69 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %70 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %69, i32 0, i32 5
  %71 = load volatile i32, i32* %70, align 8
  %72 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  %74 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %75 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %74, i32 0, i32 4
  %76 = load volatile i64, i64* %75, align 8
  %77 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 4
  store i64 %76, i64* %78, align 8
  %79 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %80 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %79, i32 0, i32 3
  %81 = load volatile i64, i64* %80, align 8
  %82 = sub nsw i64 %81, 1
  %83 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  %85 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %86 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %85, i32 0, i32 2
  %87 = load volatile i32, i32* %86, align 8
  %88 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %91 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %90, i32 0, i32 0
  %92 = load volatile i32, i32* %91, align 8
  %93 = add nsw i32 %92, 68
  %94 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %97 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %96, i32 0, i32 1
  %98 = load volatile i32, i32* %97, align 4
  %99 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %100 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %103, 70
  br i1 %104, label %105, label %110

105:                                              ; preds = %58
  %106 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %107 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 100
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %105, %58
  br label %111

111:                                              ; preds = %110, %17
  %112 = load i32, i32* @START_VAL, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intersil_clock, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @local_irq_restore(i64 %115)
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
