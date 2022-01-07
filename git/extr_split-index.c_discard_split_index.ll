; ModuleID = '/home/carl/AnghaBench/git/extr_split-index.c_discard_split_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_split-index.c_discard_split_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { %struct.split_index* }
%struct.split_index = type { %struct.split_index*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @discard_split_index(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca %struct.split_index*, align 8
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %4 = load %struct.index_state*, %struct.index_state** %2, align 8
  %5 = getelementptr inbounds %struct.index_state, %struct.index_state* %4, i32 0, i32 0
  %6 = load %struct.split_index*, %struct.split_index** %5, align 8
  store %struct.split_index* %6, %struct.split_index** %3, align 8
  %7 = load %struct.split_index*, %struct.split_index** %3, align 8
  %8 = icmp ne %struct.split_index* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.index_state*, %struct.index_state** %2, align 8
  %12 = getelementptr inbounds %struct.index_state, %struct.index_state* %11, i32 0, i32 0
  store %struct.split_index* null, %struct.split_index** %12, align 8
  %13 = load %struct.split_index*, %struct.split_index** %3, align 8
  %14 = getelementptr inbounds %struct.split_index, %struct.split_index* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.split_index*, %struct.split_index** %3, align 8
  %18 = getelementptr inbounds %struct.split_index, %struct.split_index* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %39

22:                                               ; preds = %10
  %23 = load %struct.split_index*, %struct.split_index** %3, align 8
  %24 = getelementptr inbounds %struct.split_index, %struct.split_index* %23, i32 0, i32 0
  %25 = load %struct.split_index*, %struct.split_index** %24, align 8
  %26 = icmp ne %struct.split_index* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.split_index*, %struct.split_index** %3, align 8
  %29 = getelementptr inbounds %struct.split_index, %struct.split_index* %28, i32 0, i32 0
  %30 = load %struct.split_index*, %struct.split_index** %29, align 8
  %31 = call i32 @discard_index(%struct.split_index* %30)
  %32 = load %struct.split_index*, %struct.split_index** %3, align 8
  %33 = getelementptr inbounds %struct.split_index, %struct.split_index* %32, i32 0, i32 0
  %34 = load %struct.split_index*, %struct.split_index** %33, align 8
  %35 = call i32 @free(%struct.split_index* %34)
  br label %36

36:                                               ; preds = %27, %22
  %37 = load %struct.split_index*, %struct.split_index** %3, align 8
  %38 = call i32 @free(%struct.split_index* %37)
  br label %39

39:                                               ; preds = %36, %21, %9
  ret void
}

declare dso_local i32 @discard_index(%struct.split_index*) #1

declare dso_local i32 @free(%struct.split_index*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
