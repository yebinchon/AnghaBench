; ModuleID = '/home/carl/AnghaBench/git/extr_hashmap.c_rehash.c'
source_filename = "/home/carl/AnghaBench/git/extr_hashmap.c_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32, %struct.hashmap_entry** }
%struct.hashmap_entry = type { %struct.hashmap_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashmap*, i32)* @rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rehash(%struct.hashmap* %0, i32 %1) #0 {
  %3 = alloca %struct.hashmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hashmap_entry**, align 8
  %8 = alloca %struct.hashmap_entry*, align 8
  %9 = alloca %struct.hashmap_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.hashmap* %0, %struct.hashmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %12 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %15 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %14, i32 0, i32 1
  %16 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %15, align 8
  store %struct.hashmap_entry** %16, %struct.hashmap_entry*** %7, align 8
  %17 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @alloc_table(%struct.hashmap* %17, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %58, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.hashmap_entry*, %struct.hashmap_entry** %25, i64 %27
  %29 = load %struct.hashmap_entry*, %struct.hashmap_entry** %28, align 8
  store %struct.hashmap_entry* %29, %struct.hashmap_entry** %8, align 8
  br label %30

30:                                               ; preds = %33, %24
  %31 = load %struct.hashmap_entry*, %struct.hashmap_entry** %8, align 8
  %32 = icmp ne %struct.hashmap_entry* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load %struct.hashmap_entry*, %struct.hashmap_entry** %8, align 8
  %35 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %34, i32 0, i32 0
  %36 = load %struct.hashmap_entry*, %struct.hashmap_entry** %35, align 8
  store %struct.hashmap_entry* %36, %struct.hashmap_entry** %9, align 8
  %37 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %38 = load %struct.hashmap_entry*, %struct.hashmap_entry** %8, align 8
  %39 = call i32 @bucket(%struct.hashmap* %37, %struct.hashmap_entry* %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %41 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %40, i32 0, i32 1
  %42 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.hashmap_entry*, %struct.hashmap_entry** %42, i64 %44
  %46 = load %struct.hashmap_entry*, %struct.hashmap_entry** %45, align 8
  %47 = load %struct.hashmap_entry*, %struct.hashmap_entry** %8, align 8
  %48 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %47, i32 0, i32 0
  store %struct.hashmap_entry* %46, %struct.hashmap_entry** %48, align 8
  %49 = load %struct.hashmap_entry*, %struct.hashmap_entry** %8, align 8
  %50 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %51 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %50, i32 0, i32 1
  %52 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.hashmap_entry*, %struct.hashmap_entry** %52, i64 %54
  store %struct.hashmap_entry* %49, %struct.hashmap_entry** %55, align 8
  %56 = load %struct.hashmap_entry*, %struct.hashmap_entry** %9, align 8
  store %struct.hashmap_entry* %56, %struct.hashmap_entry** %8, align 8
  br label %30

57:                                               ; preds = %30
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %20

61:                                               ; preds = %20
  %62 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %7, align 8
  %63 = call i32 @free(%struct.hashmap_entry** %62)
  ret void
}

declare dso_local i32 @alloc_table(%struct.hashmap*, i32) #1

declare dso_local i32 @bucket(%struct.hashmap*, %struct.hashmap_entry*) #1

declare dso_local i32 @free(%struct.hashmap_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
