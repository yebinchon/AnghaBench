; ModuleID = '/home/carl/AnghaBench/git/extr_pack-objects.c_rehash_objects.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-objects.c_rehash_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packing_data = type { i32, i32, i64*, %struct.object_entry* }
%struct.object_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Duplicate object in hash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packing_data*)* @rehash_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rehash_objects(%struct.packing_data* %0) #0 {
  %2 = alloca %struct.packing_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.object_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.packing_data* %0, %struct.packing_data** %2, align 8
  %7 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %8 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %9, 3
  %11 = call i32 @closest_pow2(i32 %10)
  %12 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %13 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %15 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %20 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %19, i32 0, i32 0
  store i32 1024, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %23 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = call i32 @free(i64* %24)
  %26 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %27 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64* @xcalloc(i32 %28, i32 8)
  %30 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %31 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %30, i32 0, i32 2
  store i64* %29, i64** %31, align 8
  %32 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %33 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %32, i32 0, i32 3
  %34 = load %struct.object_entry*, %struct.object_entry** %33, align 8
  store %struct.object_entry* %34, %struct.object_entry** %4, align 8
  store i64 0, i64* %3, align 8
  br label %35

35:                                               ; preds = %62, %21
  %36 = load i64, i64* %3, align 8
  %37 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %38 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %35
  %43 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %44 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %45 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i64 @locate_object_entry_hash(%struct.packing_data* %43, i32* %46, i32* %5)
  store i64 %47, i64* %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @BUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %42
  %53 = load i64, i64* %3, align 8
  %54 = add nsw i64 %53, 1
  %55 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %56 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %54, i64* %59, align 8
  %60 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %61 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %60, i32 1
  store %struct.object_entry* %61, %struct.object_entry** %4, align 8
  br label %62

62:                                               ; preds = %52
  %63 = load i64, i64* %3, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %3, align 8
  br label %35

65:                                               ; preds = %35
  ret void
}

declare dso_local i32 @closest_pow2(i32) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i64* @xcalloc(i32, i32) #1

declare dso_local i64 @locate_object_entry_hash(%struct.packing_data*, i32*, i32*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
