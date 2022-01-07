; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_profio.c_compare.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_profio.c_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.count = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.count*, %struct.count*)* @compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare(%struct.count* %0, %struct.count* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.count*, align 8
  %5 = alloca %struct.count*, align 8
  store %struct.count* %0, %struct.count** %4, align 8
  store %struct.count* %1, %struct.count** %5, align 8
  %6 = load %struct.count*, %struct.count** %4, align 8
  %7 = getelementptr inbounds %struct.count, %struct.count* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.count*, %struct.count** %5, align 8
  %10 = getelementptr inbounds %struct.count, %struct.count* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.count*, %struct.count** %4, align 8
  %15 = getelementptr inbounds %struct.count, %struct.count* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.count*, %struct.count** %5, align 8
  %18 = getelementptr inbounds %struct.count, %struct.count* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %3, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.count*, %struct.count** %4, align 8
  %23 = getelementptr inbounds %struct.count, %struct.count* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.count*, %struct.count** %5, align 8
  %26 = getelementptr inbounds %struct.count, %struct.count* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %21, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
