; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_heap_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heap_entry = type { i32, i32 }

@HN = common dso_local global i64 0, align 8
@__vsort_limit = common dso_local global i64 0, align 8
@H = common dso_local global %struct.heap_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.heap_entry* @heap_insert(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.heap_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @HN, align 8
  %8 = load i64, i64* @__vsort_limit, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.heap_entry*, %struct.heap_entry** @H, align 8
  %12 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %11, i64 1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @heap_cmp(%struct.heap_entry* %12, i32 %13, i32 %14)
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store %struct.heap_entry* null, %struct.heap_entry** %3, align 8
  br label %43

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @heap_sift_down(i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @heap_sift_up(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.heap_entry*, %struct.heap_entry** @H, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %28, i64 %30
  %32 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %31, i32 0, i32 1
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.heap_entry*, %struct.heap_entry** @H, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %34, i64 %36
  %38 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 4
  %39 = load %struct.heap_entry*, %struct.heap_entry** @H, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %39, i64 %41
  store %struct.heap_entry* %42, %struct.heap_entry** %3, align 8
  br label %43

43:                                               ; preds = %26, %17
  %44 = load %struct.heap_entry*, %struct.heap_entry** %3, align 8
  ret %struct.heap_entry* %44
}

declare dso_local i64 @heap_cmp(%struct.heap_entry*, i32, i32) #1

declare dso_local i32 @heap_sift_down(i32, i32) #1

declare dso_local i32 @heap_sift_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
