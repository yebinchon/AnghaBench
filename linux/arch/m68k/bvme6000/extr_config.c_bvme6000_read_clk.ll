; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/bvme6000/extr_config.c_bvme6000_read_clk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/bvme6000/extr_config.c_bvme6000_read_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i8, i8 }
%struct.TYPE_4__ = type { i32 }

@BVME_RTC_BASE = common dso_local global i32 0, align 4
@BVME_PIT_BASE = common dso_local global i32 0, align 4
@RTC_TIMER_COUNT = common dso_local global i32 0, align 4
@RTC_TIMER_CYCLES = common dso_local global i32 0, align 4
@clk_offset = common dso_local global i32 0, align 4
@clk_total = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clocksource*)* @bvme6000_read_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bvme6000_read_clk(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %12 = load i32, i32* @BVME_RTC_BASE, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_3__*
  store volatile %struct.TYPE_3__* %14, %struct.TYPE_3__** %4, align 8
  %15 = load i32, i32* @BVME_PIT_BASE, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  store volatile %struct.TYPE_4__* %17, %struct.TYPE_4__** %5, align 8
  store i32 800000, i32* %10, align 4
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @local_irq_save(i64 %18)
  %20 = load volatile %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 192
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %6, align 1
  %25 = load volatile %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %83, %1
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %11, align 4
  %29 = load volatile %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 32
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %8, align 1
  %34 = load volatile %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 4
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %9, align 1
  %39 = load volatile %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, 64
  store i32 %42, i32* %40, align 4
  %43 = load volatile %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i8, i8* %44, align 4
  store i8 %45, i8* %7, align 1
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 8
  %49 = load volatile %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %48, %52
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %27
  %55 = load i8, i8* %8, align 1
  %56 = zext i8 %55 to i32
  %57 = load volatile %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 32
  %61 = icmp ne i32 %56, %60
  br i1 %61, label %83, label %62

62:                                               ; preds = %54
  %63 = load i8, i8* %9, align 1
  %64 = zext i8 %63 to i32
  %65 = load volatile %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 4
  %69 = icmp ne i32 %64, %68
  br i1 %69, label %83, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 @abs(i32 %73) #3
  %75 = icmp sgt i32 %74, 80
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @RTC_TIMER_COUNT, align 4
  %79 = load i32, i32* @RTC_TIMER_COUNT, align 4
  %80 = sdiv i32 %79, 100
  %81 = sub nsw i32 %78, %80
  %82 = icmp sgt i32 %77, %81
  br label %83

83:                                               ; preds = %76, %70, %62, %54
  %84 = phi i1 [ true, %70 ], [ true, %62 ], [ true, %54 ], [ %82, %76 ]
  br i1 %84, label %27, label %85

85:                                               ; preds = %83
  %86 = load i32, i32* @RTC_TIMER_COUNT, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %10, align 4
  %89 = load i8, i8* %9, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* @RTC_TIMER_CYCLES, align 4
  %93 = sdiv i32 %92, 2
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %91, %85
  %97 = load i8, i8* %7, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i8, i8* %8, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @RTC_TIMER_CYCLES, align 4
  store i32 %105, i32* @clk_offset, align 4
  br label %106

106:                                              ; preds = %104, %100, %96
  %107 = load i8, i8* %6, align 1
  %108 = zext i8 %107 to i32
  %109 = load volatile %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @clk_offset, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* @clk_total, align 8
  %114 = add nsw i64 %112, %113
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %10, align 4
  %119 = load i64, i64* %3, align 8
  %120 = call i32 @local_irq_restore(i64 %119)
  %121 = load i32, i32* %10, align 4
  ret i32 %121
}

declare dso_local i32 @local_irq_save(i64) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
