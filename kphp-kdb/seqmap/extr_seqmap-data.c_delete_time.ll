; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_delete_time.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_delete_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, %struct.TYPE_2__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_time(%struct.item* %0) #0 {
  %2 = alloca %struct.item*, align 8
  store %struct.item* %0, %struct.item** %2, align 8
  %3 = load %struct.item*, %struct.item** %2, align 8
  %4 = getelementptr inbounds %struct.item, %struct.item* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %31

8:                                                ; preds = %1
  %9 = load %struct.item*, %struct.item** %2, align 8
  %10 = getelementptr inbounds %struct.item, %struct.item* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @assert(%struct.TYPE_2__* %11)
  %13 = load %struct.item*, %struct.item** %2, align 8
  %14 = getelementptr inbounds %struct.item, %struct.item* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.item*, %struct.item** %2, align 8
  %17 = getelementptr inbounds %struct.item, %struct.item* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %19, align 8
  %20 = load %struct.item*, %struct.item** %2, align 8
  %21 = getelementptr inbounds %struct.item, %struct.item* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.item*, %struct.item** %2, align 8
  %24 = getelementptr inbounds %struct.item, %struct.item* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %26, align 8
  %27 = load %struct.item*, %struct.item** %2, align 8
  %28 = getelementptr inbounds %struct.item, %struct.item* %27, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %28, align 8
  %29 = load %struct.item*, %struct.item** %2, align 8
  %30 = getelementptr inbounds %struct.item, %struct.item* %29, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %30, align 8
  br label %31

31:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
