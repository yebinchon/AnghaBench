; ModuleID = '/home/carl/AnghaBench/git/negotiator/extr_..hashmap.h_hashmap_enable_item_counting.c'
source_filename = "/home/carl/AnghaBench/git/negotiator/extr_..hashmap.h_hashmap_enable_item_counting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32, i32 }
%struct.hashmap_iter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashmap*)* @hashmap_enable_item_counting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hashmap_enable_item_counting(%struct.hashmap* %0) #0 {
  %2 = alloca %struct.hashmap*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hashmap_iter, align 4
  store %struct.hashmap* %0, %struct.hashmap** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.hashmap*, %struct.hashmap** %2, align 8
  %6 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.hashmap*, %struct.hashmap** %2, align 8
  %12 = call i32 @hashmap_iter_init(%struct.hashmap* %11, %struct.hashmap_iter* %4)
  br label %13

13:                                               ; preds = %16, %10
  %14 = call i64 @hashmap_iter_next(%struct.hashmap_iter* %4)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %13

19:                                               ; preds = %13
  %20 = load %struct.hashmap*, %struct.hashmap** %2, align 8
  %21 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.hashmap*, %struct.hashmap** %2, align 8
  %24 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %19, %9
  ret void
}

declare dso_local i32 @hashmap_iter_init(%struct.hashmap*, %struct.hashmap_iter*) #1

declare dso_local i64 @hashmap_iter_next(%struct.hashmap_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
