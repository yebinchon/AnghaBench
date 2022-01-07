; ModuleID = '/home/carl/AnghaBench/i3/src/extr_move.c_lowest_common_ancestor.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_move.c_lowest_common_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.TYPE_5__*, %struct.TYPE_5__*)* @lowest_common_ancestor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @lowest_common_ancestor(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %6, align 8
  br label %9

9:                                                ; preds = %27, %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %7, align 8
  br label %14

14:                                               ; preds = %23, %12
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = icmp eq %struct.TYPE_5__* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %3, align 8
  br label %33

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %7, align 8
  br label %14

27:                                               ; preds = %14
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %6, align 8
  br label %9

31:                                               ; preds = %9
  %32 = call i32 @assert(i32 0)
  br label %33

33:                                               ; preds = %31, %21
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %34
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
