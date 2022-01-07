; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_it_advance_tree.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_it_advance_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__* }
%struct.iterator = type { i32, i32, i64, %struct.TYPE_6__*, i64 }

@NIL = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iterator*)* @it_advance_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it_advance_tree(%struct.iterator* %0) #0 {
  %2 = alloca %struct.iterator*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.iterator* %0, %struct.iterator** %2, align 8
  %4 = load %struct.iterator*, %struct.iterator** %2, align 8
  %5 = getelementptr inbounds %struct.iterator, %struct.iterator* %4, i32 0, i32 3
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = call i32 @assert(%struct.TYPE_6__* %6)
  %8 = load %struct.iterator*, %struct.iterator** %2, align 8
  %9 = getelementptr inbounds %struct.iterator, %struct.iterator* %8, i32 0, i32 3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NIL, align 8
  %15 = icmp ne %struct.TYPE_6__* %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.iterator*, %struct.iterator** %2, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = call i32 @it_go_right(%struct.iterator* %17, %struct.TYPE_6__* %18)
  %20 = load %struct.iterator*, %struct.iterator** %2, align 8
  %21 = call i32 @it_relax_x(%struct.iterator* %20)
  br label %51

22:                                               ; preds = %1
  %23 = load %struct.iterator*, %struct.iterator** %2, align 8
  %24 = getelementptr inbounds %struct.iterator, %struct.iterator* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.iterator*, %struct.iterator** %2, align 8
  %29 = call %struct.TYPE_6__* @it_pop_stack(%struct.iterator* %28)
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %3, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = load %struct.iterator*, %struct.iterator** %2, align 8
  %32 = getelementptr inbounds %struct.iterator, %struct.iterator* %31, i32 0, i32 3
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.iterator*, %struct.iterator** %2, align 8
  %37 = getelementptr inbounds %struct.iterator, %struct.iterator* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.iterator*, %struct.iterator** %2, align 8
  %39 = call i32 @it_relax_x(%struct.iterator* %38)
  br label %50

40:                                               ; preds = %22
  %41 = load %struct.iterator*, %struct.iterator** %2, align 8
  %42 = getelementptr inbounds %struct.iterator, %struct.iterator* %41, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %42, align 8
  %43 = load %struct.iterator*, %struct.iterator** %2, align 8
  %44 = getelementptr inbounds %struct.iterator, %struct.iterator* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.iterator*, %struct.iterator** %2, align 8
  %46 = getelementptr inbounds %struct.iterator, %struct.iterator* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.iterator*, %struct.iterator** %2, align 8
  %49 = getelementptr inbounds %struct.iterator, %struct.iterator* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %40, %27
  br label %51

51:                                               ; preds = %50, %16
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @it_go_right(%struct.iterator*, %struct.TYPE_6__*) #1

declare dso_local i32 @it_relax_x(%struct.iterator*) #1

declare dso_local %struct.TYPE_6__* @it_pop_stack(%struct.iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
