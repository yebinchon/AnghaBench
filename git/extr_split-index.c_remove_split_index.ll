; ModuleID = '/home/carl/AnghaBench/git/extr_split-index.c_remove_split_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_split-index.c_remove_split_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@SOMETHING_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_split_index(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %3 = load %struct.index_state*, %struct.index_state** %2, align 8
  %4 = getelementptr inbounds %struct.index_state, %struct.index_state* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %40

7:                                                ; preds = %1
  %8 = load %struct.index_state*, %struct.index_state** %2, align 8
  %9 = getelementptr inbounds %struct.index_state, %struct.index_state* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %7
  %15 = load %struct.index_state*, %struct.index_state** %2, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.index_state*, %struct.index_state** %2, align 8
  %19 = getelementptr inbounds %struct.index_state, %struct.index_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mem_pool_combine(i32 %17, i32 %24)
  %26 = load %struct.index_state*, %struct.index_state** %2, align 8
  %27 = getelementptr inbounds %struct.index_state, %struct.index_state* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %14, %7
  %33 = load %struct.index_state*, %struct.index_state** %2, align 8
  %34 = call i32 @discard_split_index(%struct.index_state* %33)
  %35 = load i32, i32* @SOMETHING_CHANGED, align 4
  %36 = load %struct.index_state*, %struct.index_state** %2, align 8
  %37 = getelementptr inbounds %struct.index_state, %struct.index_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @mem_pool_combine(i32, i32) #1

declare dso_local i32 @discard_split_index(%struct.index_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
