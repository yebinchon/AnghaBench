; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_async_complete_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_async_complete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_async = type { i32, %struct.regmap* }
%struct.regmap = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regmap_async_complete_cb(%struct.regmap_async* %0, i32 %1) #0 {
  %3 = alloca %struct.regmap_async*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  store %struct.regmap_async* %0, %struct.regmap_async** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.regmap_async*, %struct.regmap_async** %3, align 8
  %8 = getelementptr inbounds %struct.regmap_async, %struct.regmap_async* %7, i32 0, i32 1
  %9 = load %struct.regmap*, %struct.regmap** %8, align 8
  store %struct.regmap* %9, %struct.regmap** %5, align 8
  %10 = load %struct.regmap*, %struct.regmap** %5, align 8
  %11 = call i32 @trace_regmap_async_io_complete(%struct.regmap* %10)
  %12 = load %struct.regmap*, %struct.regmap** %5, align 8
  %13 = getelementptr inbounds %struct.regmap, %struct.regmap* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.regmap_async*, %struct.regmap_async** %3, align 8
  %16 = getelementptr inbounds %struct.regmap_async, %struct.regmap_async* %15, i32 0, i32 0
  %17 = load %struct.regmap*, %struct.regmap** %5, align 8
  %18 = getelementptr inbounds %struct.regmap, %struct.regmap* %17, i32 0, i32 4
  %19 = call i32 @list_move(i32* %16, i32* %18)
  %20 = load %struct.regmap*, %struct.regmap** %5, align 8
  %21 = getelementptr inbounds %struct.regmap, %struct.regmap* %20, i32 0, i32 3
  %22 = call i32 @list_empty(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.regmap*, %struct.regmap** %5, align 8
  %28 = getelementptr inbounds %struct.regmap, %struct.regmap* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.regmap*, %struct.regmap** %5, align 8
  %31 = getelementptr inbounds %struct.regmap, %struct.regmap* %30, i32 0, i32 2
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.regmap*, %struct.regmap** %5, align 8
  %37 = getelementptr inbounds %struct.regmap, %struct.regmap* %36, i32 0, i32 1
  %38 = call i32 @wake_up(i32* %37)
  br label %39

39:                                               ; preds = %35, %29
  ret void
}

declare dso_local i32 @trace_regmap_async_io_complete(%struct.regmap*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
