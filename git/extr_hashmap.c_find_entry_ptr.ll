; ModuleID = '/home/carl/AnghaBench/git/extr_hashmap.c_find_entry_ptr.c'
source_filename = "/home/carl/AnghaBench/git/extr_hashmap.c_find_entry_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { %struct.hashmap_entry** }
%struct.hashmap_entry = type { %struct.hashmap_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hashmap_entry** (%struct.hashmap*, %struct.hashmap_entry*, i8*)* @find_entry_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hashmap_entry** @find_entry_ptr(%struct.hashmap* %0, %struct.hashmap_entry* %1, i8* %2) #0 {
  %4 = alloca %struct.hashmap*, align 8
  %5 = alloca %struct.hashmap_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hashmap_entry**, align 8
  store %struct.hashmap* %0, %struct.hashmap** %4, align 8
  store %struct.hashmap_entry* %1, %struct.hashmap_entry** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.hashmap*, %struct.hashmap** %4, align 8
  %9 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %8, i32 0, i32 0
  %10 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %9, align 8
  %11 = load %struct.hashmap*, %struct.hashmap** %4, align 8
  %12 = load %struct.hashmap_entry*, %struct.hashmap_entry** %5, align 8
  %13 = call i64 @bucket(%struct.hashmap* %11, %struct.hashmap_entry* %12)
  %14 = getelementptr inbounds %struct.hashmap_entry*, %struct.hashmap_entry** %10, i64 %13
  store %struct.hashmap_entry** %14, %struct.hashmap_entry*** %7, align 8
  br label %15

15:                                               ; preds = %30, %3
  %16 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %7, align 8
  %17 = load %struct.hashmap_entry*, %struct.hashmap_entry** %16, align 8
  %18 = icmp ne %struct.hashmap_entry* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load %struct.hashmap*, %struct.hashmap** %4, align 8
  %21 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %7, align 8
  %22 = load %struct.hashmap_entry*, %struct.hashmap_entry** %21, align 8
  %23 = load %struct.hashmap_entry*, %struct.hashmap_entry** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @entry_equals(%struct.hashmap* %20, %struct.hashmap_entry* %22, %struct.hashmap_entry* %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %19, %15
  %29 = phi i1 [ false, %15 ], [ %27, %19 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %7, align 8
  %32 = load %struct.hashmap_entry*, %struct.hashmap_entry** %31, align 8
  %33 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %32, i32 0, i32 0
  store %struct.hashmap_entry** %33, %struct.hashmap_entry*** %7, align 8
  br label %15

34:                                               ; preds = %28
  %35 = load %struct.hashmap_entry**, %struct.hashmap_entry*** %7, align 8
  ret %struct.hashmap_entry** %35
}

declare dso_local i64 @bucket(%struct.hashmap*, %struct.hashmap_entry*) #1

declare dso_local i32 @entry_equals(%struct.hashmap*, %struct.hashmap_entry*, %struct.hashmap_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
