; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_binary_union_iterator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_binary_union_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.binary_operation_iterator = type { %struct.TYPE_5__*, %struct.TYPE_5__*, i32, i32 }

@binary_union_iterator_jump_to = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @build_binary_union_iterator(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.binary_operation_iterator*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = call %struct.binary_operation_iterator* @zmalloc(i32 24)
  store %struct.binary_operation_iterator* %6, %struct.binary_operation_iterator** %5, align 8
  %7 = load i32, i32* @binary_union_iterator_jump_to, align 4
  %8 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %9 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @min(i32 %12, i32 %15)
  %17 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %18 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %21 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %20, i32 0, i32 1
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %24 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %23, i32 0, i32 0
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %24, align 8
  %25 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %5, align 8
  %26 = bitcast %struct.binary_operation_iterator* %25 to %struct.TYPE_5__*
  ret %struct.TYPE_5__* %26
}

declare dso_local %struct.binary_operation_iterator* @zmalloc(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
