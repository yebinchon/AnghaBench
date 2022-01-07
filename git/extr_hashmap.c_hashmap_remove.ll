; ModuleID = '/home/carl/AnghaBench/git/extr_hashmap.c_hashmap_remove.c'
source_filename = "/home/carl/AnghaBench/git/extr_hashmap.c_hashmap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i64, i64, i32, i64 }
%struct.hashmap_entry = type { %struct.hashmap_entry* }

@HASHMAP_RESIZE_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hashmap_entry* @hashmap_remove(%struct.hashmap* %0, %struct.hashmap_entry* %1, i8* %2) #0 {
  %4 = alloca %struct.hashmap_entry*, align 8
  %5 = alloca %struct.hashmap*, align 8
  %6 = alloca %struct.hashmap_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hashmap_entry*, align 8
  %9 = alloca %struct.hashmap_entry**, align 8
  store %struct.hashmap* %0, %struct.hashmap** %5, align 8
  store %struct.hashmap_entry* %1, %struct.hashmap_entry** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %11 = load %struct.hashmap_entry*, %struct.hashmap_entry** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.hashmap_entry** @find_entry_ptr(%struct.hashmap* %10, %struct.hashmap_entry* %11, i8* %12)
  store %struct.hashmap_entry** %13, %struct.hashmap_entry*** %9, align 8
  %14 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %9, align 8
  %15 = load %struct.hashmap_entry*, %struct.hashmap_entry** %14, align 8
  %16 = icmp ne %struct.hashmap_entry* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.hashmap_entry* null, %struct.hashmap_entry** %4, align 8
  br label %54

18:                                               ; preds = %3
  %19 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %9, align 8
  %20 = load %struct.hashmap_entry*, %struct.hashmap_entry** %19, align 8
  store %struct.hashmap_entry* %20, %struct.hashmap_entry** %8, align 8
  %21 = load %struct.hashmap_entry*, %struct.hashmap_entry** %8, align 8
  %22 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %21, i32 0, i32 0
  %23 = load %struct.hashmap_entry*, %struct.hashmap_entry** %22, align 8
  %24 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %9, align 8
  store %struct.hashmap_entry* %23, %struct.hashmap_entry** %24, align 8
  %25 = load %struct.hashmap_entry*, %struct.hashmap_entry** %8, align 8
  %26 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %25, i32 0, i32 0
  store %struct.hashmap_entry* null, %struct.hashmap_entry** %26, align 8
  %27 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %28 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %18
  %32 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %33 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %37 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %40 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %31
  %44 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %45 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %46 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @HASHMAP_RESIZE_BITS, align 4
  %49 = ashr i32 %47, %48
  %50 = call i32 @rehash(%struct.hashmap* %44, i32 %49)
  br label %51

51:                                               ; preds = %43, %31
  br label %52

52:                                               ; preds = %51, %18
  %53 = load %struct.hashmap_entry*, %struct.hashmap_entry** %8, align 8
  store %struct.hashmap_entry* %53, %struct.hashmap_entry** %4, align 8
  br label %54

54:                                               ; preds = %52, %17
  %55 = load %struct.hashmap_entry*, %struct.hashmap_entry** %4, align 8
  ret %struct.hashmap_entry* %55
}

declare dso_local %struct.hashmap_entry** @find_entry_ptr(%struct.hashmap*, %struct.hashmap_entry*, i8*) #1

declare dso_local i32 @rehash(%struct.hashmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
