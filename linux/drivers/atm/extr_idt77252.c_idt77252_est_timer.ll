; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_est_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_est_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_estimator = type { i32, i64, i64, i32, i32, %struct.TYPE_2__, i64, i64, %struct.vc_map* }
%struct.TYPE_2__ = type { i64 }
%struct.vc_map = type { i64, i64, i32, i32, i32, %struct.idt77252_dev* }
%struct.idt77252_dev = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@TCMDQ_LACR = common dso_local global i32 0, align 4
@SAR_REG_TCMDQ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@est = common dso_local global %struct.rate_estimator* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @idt77252_est_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt77252_est_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.rate_estimator*, align 8
  %4 = alloca %struct.vc_map*, align 8
  %5 = alloca %struct.idt77252_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %11 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %12 = ptrtoint %struct.rate_estimator* %11 to i32
  %13 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %14 = load i32, i32* @timer, align 4
  %15 = call %struct.rate_estimator* @from_timer(i32 %12, %struct.timer_list* %13, i32 %14)
  store %struct.rate_estimator* %15, %struct.rate_estimator** %3, align 8
  %16 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %17 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %16, i32 0, i32 8
  %18 = load %struct.vc_map*, %struct.vc_map** %17, align 8
  store %struct.vc_map* %18, %struct.vc_map** %4, align 8
  %19 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %20 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %19, i32 0, i32 5
  %21 = load %struct.idt77252_dev*, %struct.idt77252_dev** %20, align 8
  store %struct.idt77252_dev* %21, %struct.idt77252_dev** %5, align 8
  %22 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %23 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %22, i32 0, i32 3
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %27 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %139

31:                                               ; preds = %1
  %32 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %33 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %37 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = trunc i64 %39 to i32
  %41 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %42 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 7, %43
  %45 = shl i32 %40, %44
  store i32 %45, i32* %7, align 4
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %48 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %47, i32 0, i32 6
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %52 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %56 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = ashr i64 %54, %57
  %59 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %60 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %64 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 31
  %67 = ashr i64 %66, 5
  %68 = trunc i64 %67 to i32
  %69 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %70 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %72 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %76 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 4
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %31
  %81 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %82 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %80, %31
  %86 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i64 @idt77252_rate_logindex(%struct.idt77252_dev* %86, i32 %87)
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %91 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %96 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %10, align 8
  br label %98

98:                                               ; preds = %94, %85
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %101 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %98
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %107 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load i32, i32* @TCMDQ_LACR, align 4
  %109 = sext i32 %108 to i64
  %110 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %111 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = shl i64 %112, 16
  %114 = or i64 %109, %113
  %115 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %116 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = or i64 %114, %118
  %120 = trunc i64 %119 to i32
  %121 = load i32, i32* @SAR_REG_TCMDQ, align 4
  %122 = call i32 @writel(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %104, %98
  %124 = load i64, i64* @jiffies, align 8
  %125 = load i32, i32* @HZ, align 4
  %126 = sdiv i32 %125, 4
  %127 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %128 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = shl i32 %126, %129
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %124, %131
  %133 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %134 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i64 %132, i64* %135, align 8
  %136 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  %137 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %136, i32 0, i32 5
  %138 = call i32 @add_timer(%struct.TYPE_2__* %137)
  br label %139

139:                                              ; preds = %123, %30
  %140 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %141 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %140, i32 0, i32 3
  %142 = load i64, i64* %6, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32* %141, i64 %142)
  ret void
}

declare dso_local %struct.rate_estimator* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @idt77252_rate_logindex(%struct.idt77252_dev*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
