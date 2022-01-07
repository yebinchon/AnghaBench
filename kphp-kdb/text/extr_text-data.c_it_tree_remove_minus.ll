; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_it_tree_remove_minus.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_it_tree_remove_minus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iterator = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TF_MINUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iterator*)* @it_tree_remove_minus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it_tree_remove_minus(%struct.iterator* %0) #0 {
  %2 = alloca %struct.iterator*, align 8
  store %struct.iterator* %0, %struct.iterator** %2, align 8
  br label %3

3:                                                ; preds = %18, %1
  %4 = load %struct.iterator*, %struct.iterator** %2, align 8
  %5 = getelementptr inbounds %struct.iterator, %struct.iterator* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.iterator*, %struct.iterator** %2, align 8
  %8 = getelementptr inbounds %struct.iterator, %struct.iterator* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.iterator*, %struct.iterator** %2, align 8
  %13 = getelementptr inbounds %struct.iterator, %struct.iterator* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i1 [ false, %3 ], [ %15, %11 ]
  br i1 %17, label %18, label %33

18:                                               ; preds = %16
  %19 = load %struct.iterator*, %struct.iterator** %2, align 8
  %20 = getelementptr inbounds %struct.iterator, %struct.iterator* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 3
  %25 = load i32, i32* @TF_MINUS, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.iterator*, %struct.iterator** %2, align 8
  %30 = call i32 @it_advance_tree(%struct.iterator* %29)
  %31 = load %struct.iterator*, %struct.iterator** %2, align 8
  %32 = call i32 @it_advance_array(%struct.iterator* %31)
  br label %3

33:                                               ; preds = %16
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @it_advance_tree(%struct.iterator*) #1

declare dso_local i32 @it_advance_array(%struct.iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
