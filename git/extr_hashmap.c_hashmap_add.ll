; ModuleID = '/home/carl/AnghaBench/git/extr_hashmap.c_hashmap_add.c'
source_filename = "/home/carl/AnghaBench/git/extr_hashmap.c_hashmap_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i64, i64, i32, i64, %struct.hashmap_entry** }
%struct.hashmap_entry = type { %struct.hashmap_entry* }

@HASHMAP_RESIZE_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashmap_add(%struct.hashmap* %0, %struct.hashmap_entry* %1) #0 {
  %3 = alloca %struct.hashmap*, align 8
  %4 = alloca %struct.hashmap_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.hashmap* %0, %struct.hashmap** %3, align 8
  store %struct.hashmap_entry* %1, %struct.hashmap_entry** %4, align 8
  %6 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %7 = load %struct.hashmap_entry*, %struct.hashmap_entry** %4, align 8
  %8 = call i32 @bucket(%struct.hashmap* %6, %struct.hashmap_entry* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %10 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %9, i32 0, i32 4
  %11 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.hashmap_entry*, %struct.hashmap_entry** %11, i64 %13
  %15 = load %struct.hashmap_entry*, %struct.hashmap_entry** %14, align 8
  %16 = load %struct.hashmap_entry*, %struct.hashmap_entry** %4, align 8
  %17 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %16, i32 0, i32 0
  store %struct.hashmap_entry* %15, %struct.hashmap_entry** %17, align 8
  %18 = load %struct.hashmap_entry*, %struct.hashmap_entry** %4, align 8
  %19 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %20 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %19, i32 0, i32 4
  %21 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hashmap_entry*, %struct.hashmap_entry** %21, i64 %23
  store %struct.hashmap_entry* %18, %struct.hashmap_entry** %24, align 8
  %25 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %26 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %2
  %30 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %31 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %35 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %38 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %43 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %44 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @HASHMAP_RESIZE_BITS, align 4
  %47 = shl i32 %45, %46
  %48 = call i32 @rehash(%struct.hashmap* %42, i32 %47)
  br label %49

49:                                               ; preds = %41, %29
  br label %50

50:                                               ; preds = %49, %2
  ret void
}

declare dso_local i32 @bucket(%struct.hashmap*, %struct.hashmap_entry*) #1

declare dso_local i32 @rehash(%struct.hashmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
