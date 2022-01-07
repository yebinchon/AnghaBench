; ModuleID = '/home/carl/AnghaBench/git/extr_hashmap.c_entry_equals.c'
source_filename = "/home/carl/AnghaBench/git/extr_hashmap.c_entry_equals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32, i32 (i32, %struct.hashmap_entry*, %struct.hashmap_entry*, i8*)* }
%struct.hashmap_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hashmap*, %struct.hashmap_entry*, %struct.hashmap_entry*, i8*)* @entry_equals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entry_equals(%struct.hashmap* %0, %struct.hashmap_entry* %1, %struct.hashmap_entry* %2, i8* %3) #0 {
  %5 = alloca %struct.hashmap*, align 8
  %6 = alloca %struct.hashmap_entry*, align 8
  %7 = alloca %struct.hashmap_entry*, align 8
  %8 = alloca i8*, align 8
  store %struct.hashmap* %0, %struct.hashmap** %5, align 8
  store %struct.hashmap_entry* %1, %struct.hashmap_entry** %6, align 8
  store %struct.hashmap_entry* %2, %struct.hashmap_entry** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.hashmap_entry*, %struct.hashmap_entry** %6, align 8
  %10 = load %struct.hashmap_entry*, %struct.hashmap_entry** %7, align 8
  %11 = icmp eq %struct.hashmap_entry* %9, %10
  br i1 %11, label %35, label %12

12:                                               ; preds = %4
  %13 = load %struct.hashmap_entry*, %struct.hashmap_entry** %6, align 8
  %14 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.hashmap_entry*, %struct.hashmap_entry** %7, align 8
  %17 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %22 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %21, i32 0, i32 1
  %23 = load i32 (i32, %struct.hashmap_entry*, %struct.hashmap_entry*, i8*)*, i32 (i32, %struct.hashmap_entry*, %struct.hashmap_entry*, i8*)** %22, align 8
  %24 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %25 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.hashmap_entry*, %struct.hashmap_entry** %6, align 8
  %28 = load %struct.hashmap_entry*, %struct.hashmap_entry** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 %23(i32 %26, %struct.hashmap_entry* %27, %struct.hashmap_entry* %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %20, %12
  %34 = phi i1 [ false, %12 ], [ %32, %20 ]
  br label %35

35:                                               ; preds = %33, %4
  %36 = phi i1 [ true, %4 ], [ %34, %33 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
