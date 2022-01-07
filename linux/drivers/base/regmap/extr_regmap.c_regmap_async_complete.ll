; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_async_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_async_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_async_complete(%struct.regmap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  %6 = load %struct.regmap*, %struct.regmap** %3, align 8
  %7 = getelementptr inbounds %struct.regmap, %struct.regmap* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.regmap*, %struct.regmap** %3, align 8
  %12 = getelementptr inbounds %struct.regmap, %struct.regmap* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %43

18:                                               ; preds = %10
  %19 = load %struct.regmap*, %struct.regmap** %3, align 8
  %20 = call i32 @trace_regmap_async_complete_start(%struct.regmap* %19)
  %21 = load %struct.regmap*, %struct.regmap** %3, align 8
  %22 = getelementptr inbounds %struct.regmap, %struct.regmap* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.regmap*, %struct.regmap** %3, align 8
  %25 = call i32 @regmap_async_is_done(%struct.regmap* %24)
  %26 = call i32 @wait_event(i32 %23, i32 %25)
  %27 = load %struct.regmap*, %struct.regmap** %3, align 8
  %28 = getelementptr inbounds %struct.regmap, %struct.regmap* %27, i32 0, i32 1
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.regmap*, %struct.regmap** %3, align 8
  %32 = getelementptr inbounds %struct.regmap, %struct.regmap* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %5, align 4
  %34 = load %struct.regmap*, %struct.regmap** %3, align 8
  %35 = getelementptr inbounds %struct.regmap, %struct.regmap* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.regmap*, %struct.regmap** %3, align 8
  %37 = getelementptr inbounds %struct.regmap, %struct.regmap* %36, i32 0, i32 1
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.regmap*, %struct.regmap** %3, align 8
  %41 = call i32 @trace_regmap_async_complete_done(%struct.regmap* %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %18, %17
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @trace_regmap_async_complete_start(%struct.regmap*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @regmap_async_is_done(%struct.regmap*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @trace_regmap_async_complete_done(%struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
