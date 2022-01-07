; ModuleID = '/home/carl/AnghaBench/git/extr_hashmap.c_hashmap_iter_next.c'
source_filename = "/home/carl/AnghaBench/git/extr_hashmap.c_hashmap_iter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap_entry = type { %struct.hashmap_entry* }
%struct.hashmap_iter = type { i64, %struct.TYPE_2__*, %struct.hashmap_entry* }
%struct.TYPE_2__ = type { i64, %struct.hashmap_entry** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hashmap_entry* @hashmap_iter_next(%struct.hashmap_iter* %0) #0 {
  %2 = alloca %struct.hashmap_entry*, align 8
  %3 = alloca %struct.hashmap_iter*, align 8
  %4 = alloca %struct.hashmap_entry*, align 8
  store %struct.hashmap_iter* %0, %struct.hashmap_iter** %3, align 8
  %5 = load %struct.hashmap_iter*, %struct.hashmap_iter** %3, align 8
  %6 = getelementptr inbounds %struct.hashmap_iter, %struct.hashmap_iter* %5, i32 0, i32 2
  %7 = load %struct.hashmap_entry*, %struct.hashmap_entry** %6, align 8
  store %struct.hashmap_entry* %7, %struct.hashmap_entry** %4, align 8
  br label %8

8:                                                ; preds = %29, %1
  %9 = load %struct.hashmap_entry*, %struct.hashmap_entry** %4, align 8
  %10 = icmp ne %struct.hashmap_entry* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.hashmap_entry*, %struct.hashmap_entry** %4, align 8
  %13 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %12, i32 0, i32 0
  %14 = load %struct.hashmap_entry*, %struct.hashmap_entry** %13, align 8
  %15 = load %struct.hashmap_iter*, %struct.hashmap_iter** %3, align 8
  %16 = getelementptr inbounds %struct.hashmap_iter, %struct.hashmap_iter* %15, i32 0, i32 2
  store %struct.hashmap_entry* %14, %struct.hashmap_entry** %16, align 8
  %17 = load %struct.hashmap_entry*, %struct.hashmap_entry** %4, align 8
  store %struct.hashmap_entry* %17, %struct.hashmap_entry** %2, align 8
  br label %41

18:                                               ; preds = %8
  %19 = load %struct.hashmap_iter*, %struct.hashmap_iter** %3, align 8
  %20 = getelementptr inbounds %struct.hashmap_iter, %struct.hashmap_iter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.hashmap_iter*, %struct.hashmap_iter** %3, align 8
  %23 = getelementptr inbounds %struct.hashmap_iter, %struct.hashmap_iter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store %struct.hashmap_entry* null, %struct.hashmap_entry** %2, align 8
  br label %41

29:                                               ; preds = %18
  %30 = load %struct.hashmap_iter*, %struct.hashmap_iter** %3, align 8
  %31 = getelementptr inbounds %struct.hashmap_iter, %struct.hashmap_iter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %33, align 8
  %35 = load %struct.hashmap_iter*, %struct.hashmap_iter** %3, align 8
  %36 = getelementptr inbounds %struct.hashmap_iter, %struct.hashmap_iter* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = getelementptr inbounds %struct.hashmap_entry*, %struct.hashmap_entry** %34, i64 %37
  %40 = load %struct.hashmap_entry*, %struct.hashmap_entry** %39, align 8
  store %struct.hashmap_entry* %40, %struct.hashmap_entry** %4, align 8
  br label %8

41:                                               ; preds = %28, %11
  %42 = load %struct.hashmap_entry*, %struct.hashmap_entry** %2, align 8
  ret %struct.hashmap_entry* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
