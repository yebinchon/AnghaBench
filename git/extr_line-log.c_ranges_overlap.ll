; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_ranges_overlap.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_ranges_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.range*, %struct.range*)* @ranges_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ranges_overlap(%struct.range* %0, %struct.range* %1) #0 {
  %3 = alloca %struct.range*, align 8
  %4 = alloca %struct.range*, align 8
  store %struct.range* %0, %struct.range** %3, align 8
  store %struct.range* %1, %struct.range** %4, align 8
  %5 = load %struct.range*, %struct.range** %3, align 8
  %6 = getelementptr inbounds %struct.range, %struct.range* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.range*, %struct.range** %4, align 8
  %9 = getelementptr inbounds %struct.range, %struct.range* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sle i64 %7, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.range*, %struct.range** %4, align 8
  %14 = getelementptr inbounds %struct.range, %struct.range* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.range*, %struct.range** %3, align 8
  %17 = getelementptr inbounds %struct.range, %struct.range* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %15, %18
  br label %20

20:                                               ; preds = %12, %2
  %21 = phi i1 [ true, %2 ], [ %19, %12 ]
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
