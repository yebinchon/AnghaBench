; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_it_relax_x.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_it_relax_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iterator = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iterator*)* @it_relax_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it_relax_x(%struct.iterator* %0) #0 {
  %2 = alloca %struct.iterator*, align 8
  store %struct.iterator* %0, %struct.iterator** %2, align 8
  %3 = load %struct.iterator*, %struct.iterator** %2, align 8
  %4 = getelementptr inbounds %struct.iterator, %struct.iterator* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.iterator*, %struct.iterator** %2, align 8
  %7 = getelementptr inbounds %struct.iterator, %struct.iterator* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %5, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.iterator*, %struct.iterator** %2, align 8
  %12 = getelementptr inbounds %struct.iterator, %struct.iterator* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.iterator*, %struct.iterator** %2, align 8
  %15 = getelementptr inbounds %struct.iterator, %struct.iterator* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  br label %22

16:                                               ; preds = %1
  %17 = load %struct.iterator*, %struct.iterator** %2, align 8
  %18 = getelementptr inbounds %struct.iterator, %struct.iterator* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.iterator*, %struct.iterator** %2, align 8
  %21 = getelementptr inbounds %struct.iterator, %struct.iterator* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %16, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
