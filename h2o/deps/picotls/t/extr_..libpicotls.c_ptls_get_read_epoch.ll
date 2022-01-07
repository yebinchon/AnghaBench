; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_ptls_get_read_epoch.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_ptls_get_read_epoch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"invalid state\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ptls_get_read_epoch(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %20 [
    i32 136, label %7
    i32 137, label %7
    i32 138, label %7
    i32 132, label %7
    i32 129, label %7
    i32 131, label %8
    i32 140, label %18
    i32 142, label %18
    i32 143, label %18
    i32 141, label %18
    i32 139, label %18
    i32 134, label %18
    i32 133, label %18
    i32 130, label %18
    i32 135, label %19
    i32 128, label %19
  ]

7:                                                ; preds = %1, %1, %1, %1, %1
  store i64 0, i64* %2, align 8
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  store i64 1, i64* %2, align 8
  br label %23

18:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  store i64 2, i64* %2, align 8
  br label %23

19:                                               ; preds = %1, %1
  store i64 3, i64* %2, align 8
  br label %23

20:                                               ; preds = %1
  %21 = call i32 @assert(i32 0)
  %22 = load i64, i64* @SIZE_MAX, align 8
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %20, %19, %18, %8, %7
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
