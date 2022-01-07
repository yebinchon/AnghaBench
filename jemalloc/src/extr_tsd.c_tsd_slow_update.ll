; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_tsd.c_tsd_slow_update.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_tsd.c_tsd_slow_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ATOMIC_ACQUIRE = common dso_local global i32 0, align 4
@tsd_state_nominal_recompute = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsd_slow_update(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  br label %5

5:                                                ; preds = %13, %1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = call i64 @tsd_state_compute(%struct.TYPE_4__* %6)
  store i64 %7, i64* %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = load i32, i32* @ATOMIC_ACQUIRE, align 4
  %12 = call i64 @tsd_atomic_exchange(i32* %9, i64 %10, i32 %11)
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %5
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @tsd_state_nominal_recompute, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %5, label %17

17:                                               ; preds = %13
  ret void
}

declare dso_local i64 @tsd_state_compute(%struct.TYPE_4__*) #1

declare dso_local i64 @tsd_atomic_exchange(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
