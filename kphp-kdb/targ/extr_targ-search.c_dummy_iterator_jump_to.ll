; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_dummy_iterator_jump_to.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_dummy_iterator_jump_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binary_operation_iterator = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)* }

@INFTY = common dso_local global i32 0, align 4
@empty_iterator_jump_to = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dummy_iterator_jump_to(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.binary_operation_iterator*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to %struct.binary_operation_iterator*
  store %struct.binary_operation_iterator* %8, %struct.binary_operation_iterator** %5, align 8
  %9 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %10 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %12, align 8
  %14 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %15 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 %13(%struct.TYPE_2__* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @INFTY, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @empty_iterator_jump_to, align 4
  %24 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %25 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %29 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
