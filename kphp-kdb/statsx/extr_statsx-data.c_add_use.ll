; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_add_use.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_add_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { %struct.counter*, %struct.counter* }

@Counters = common dso_local global %struct.counter** null, align 8
@counters_prime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.counter*)* @add_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_use(%struct.counter* %0) #0 {
  %2 = alloca %struct.counter*, align 8
  store %struct.counter* %0, %struct.counter** %2, align 8
  %3 = load %struct.counter**, %struct.counter*** @Counters, align 8
  %4 = load i64, i64* @counters_prime, align 8
  %5 = getelementptr inbounds %struct.counter*, %struct.counter** %3, i64 %4
  %6 = load %struct.counter*, %struct.counter** %5, align 8
  %7 = getelementptr inbounds %struct.counter, %struct.counter* %6, i32 0, i32 1
  %8 = load %struct.counter*, %struct.counter** %7, align 8
  %9 = load %struct.counter*, %struct.counter** %2, align 8
  %10 = getelementptr inbounds %struct.counter, %struct.counter* %9, i32 0, i32 1
  store %struct.counter* %8, %struct.counter** %10, align 8
  %11 = load %struct.counter*, %struct.counter** %2, align 8
  %12 = load %struct.counter**, %struct.counter*** @Counters, align 8
  %13 = load i64, i64* @counters_prime, align 8
  %14 = getelementptr inbounds %struct.counter*, %struct.counter** %12, i64 %13
  %15 = load %struct.counter*, %struct.counter** %14, align 8
  %16 = getelementptr inbounds %struct.counter, %struct.counter* %15, i32 0, i32 1
  store %struct.counter* %11, %struct.counter** %16, align 8
  %17 = load %struct.counter**, %struct.counter*** @Counters, align 8
  %18 = load i64, i64* @counters_prime, align 8
  %19 = getelementptr inbounds %struct.counter*, %struct.counter** %17, i64 %18
  %20 = load %struct.counter*, %struct.counter** %19, align 8
  %21 = load %struct.counter*, %struct.counter** %2, align 8
  %22 = getelementptr inbounds %struct.counter, %struct.counter* %21, i32 0, i32 0
  store %struct.counter* %20, %struct.counter** %22, align 8
  %23 = load %struct.counter*, %struct.counter** %2, align 8
  %24 = load %struct.counter*, %struct.counter** %2, align 8
  %25 = getelementptr inbounds %struct.counter, %struct.counter* %24, i32 0, i32 1
  %26 = load %struct.counter*, %struct.counter** %25, align 8
  %27 = getelementptr inbounds %struct.counter, %struct.counter* %26, i32 0, i32 0
  store %struct.counter* %23, %struct.counter** %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
