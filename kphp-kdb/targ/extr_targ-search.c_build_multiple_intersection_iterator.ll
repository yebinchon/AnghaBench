; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_multiple_intersection_iterator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_multiple_intersection_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intersection_condition_iterator = type { i32 (i64, i32)*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_multiple_intersection_iterator(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.intersection_condition_iterator*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.intersection_condition_iterator*
  store %struct.intersection_condition_iterator* %5, %struct.intersection_condition_iterator** %3, align 8
  %6 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %3, align 8
  %7 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %3, align 8
  %12 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %11, i32 0, i32 0
  store i32 (i64, i32)* @multiple_intersection_with_condition_jump_to, i32 (i64, i32)** %12, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %3, align 8
  %15 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %14, i32 0, i32 0
  store i32 (i64, i32)* @multiple_intersection_jump_to, i32 (i64, i32)** %15, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %3, align 8
  %18 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %17, i32 0, i32 0
  %19 = load i32 (i64, i32)*, i32 (i64, i32)** %18, align 8
  %20 = load i64, i64* %2, align 8
  %21 = call i32 %19(i64 %20, i32 0)
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

declare dso_local i32 @multiple_intersection_with_condition_jump_to(i64, i32) #1

declare dso_local i32 @multiple_intersection_jump_to(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
