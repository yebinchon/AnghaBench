; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_it_heap_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_it_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iterator = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iterator**, i32, %struct.iterator*)* @it_heap_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it_heap_insert(%struct.iterator** %0, i32 %1, %struct.iterator* %2) #0 {
  %4 = alloca %struct.iterator**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iterator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iterator** %0, %struct.iterator*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.iterator* %2, %struct.iterator** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.iterator*, %struct.iterator** %6, align 8
  %13 = getelementptr inbounds %struct.iterator, %struct.iterator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %31, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load %struct.iterator**, %struct.iterator*** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.iterator*, %struct.iterator** %21, i64 %23
  %25 = load %struct.iterator*, %struct.iterator** %24, align 8
  %26 = getelementptr inbounds %struct.iterator, %struct.iterator* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %42

31:                                               ; preds = %18
  %32 = load %struct.iterator**, %struct.iterator*** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.iterator*, %struct.iterator** %32, i64 %34
  %36 = load %struct.iterator*, %struct.iterator** %35, align 8
  %37 = load %struct.iterator**, %struct.iterator*** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.iterator*, %struct.iterator** %37, i64 %39
  store %struct.iterator* %36, %struct.iterator** %40, align 8
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %7, align 4
  br label %15

42:                                               ; preds = %30, %15
  %43 = load %struct.iterator*, %struct.iterator** %6, align 8
  %44 = load %struct.iterator**, %struct.iterator*** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.iterator*, %struct.iterator** %44, i64 %46
  store %struct.iterator* %43, %struct.iterator** %47, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
