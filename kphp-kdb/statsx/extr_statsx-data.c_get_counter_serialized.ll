; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_counter_serialized.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_counter_serialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i32 }

@Q_raw = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_counter_serialized(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.counter*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* @Q_raw, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @get_counter_serialized_raw(i8* %12, i64 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %33

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.counter* @get_counter_old(i64 %17, i32 %18, i32 1)
  store %struct.counter* %19, %struct.counter** %8, align 8
  %20 = load %struct.counter*, %struct.counter** %8, align 8
  %21 = icmp ne %struct.counter* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %33

23:                                               ; preds = %16
  %24 = load %struct.counter*, %struct.counter** %8, align 8
  %25 = getelementptr inbounds %struct.counter, %struct.counter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, -2
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -2, i32* %4, align 4
  br label %33

29:                                               ; preds = %23
  %30 = load %struct.counter*, %struct.counter** %8, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @counter_serialize(%struct.counter* %30, i8* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %28, %22, %11
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @get_counter_serialized_raw(i8*, i64, i32) #1

declare dso_local %struct.counter* @get_counter_old(i64, i32, i32) #1

declare dso_local i32 @counter_serialize(%struct.counter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
