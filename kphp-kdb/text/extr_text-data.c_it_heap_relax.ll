; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_it_heap_relax.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_it_heap_relax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iterator = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iterator**, i32, %struct.iterator*)* @it_heap_relax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it_heap_relax(%struct.iterator** %0, i32 %1, %struct.iterator* %2) #0 {
  %4 = alloca %struct.iterator**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iterator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iterator** %0, %struct.iterator*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.iterator* %2, %struct.iterator** %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load %struct.iterator*, %struct.iterator** %6, align 8
  %11 = getelementptr inbounds %struct.iterator, %struct.iterator* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %3, %55
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 %14, 1
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %66

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load %struct.iterator**, %struct.iterator*** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.iterator*, %struct.iterator** %25, i64 %28
  %30 = load %struct.iterator*, %struct.iterator** %29, align 8
  %31 = getelementptr inbounds %struct.iterator, %struct.iterator* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.iterator**, %struct.iterator*** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.iterator*, %struct.iterator** %33, i64 %35
  %37 = load %struct.iterator*, %struct.iterator** %36, align 8
  %38 = getelementptr inbounds %struct.iterator, %struct.iterator* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %32, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %24
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %24, %20
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.iterator**, %struct.iterator*** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.iterator*, %struct.iterator** %46, i64 %48
  %50 = load %struct.iterator*, %struct.iterator** %49, align 8
  %51 = getelementptr inbounds %struct.iterator, %struct.iterator* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %45, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %66

55:                                               ; preds = %44
  %56 = load %struct.iterator**, %struct.iterator*** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.iterator*, %struct.iterator** %56, i64 %58
  %60 = load %struct.iterator*, %struct.iterator** %59, align 8
  %61 = load %struct.iterator**, %struct.iterator*** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.iterator*, %struct.iterator** %61, i64 %63
  store %struct.iterator* %60, %struct.iterator** %64, align 8
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %7, align 4
  br label %13

66:                                               ; preds = %54, %19
  %67 = load %struct.iterator*, %struct.iterator** %6, align 8
  %68 = load %struct.iterator**, %struct.iterator*** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.iterator*, %struct.iterator** %68, i64 %70
  store %struct.iterator* %67, %struct.iterator** %71, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
