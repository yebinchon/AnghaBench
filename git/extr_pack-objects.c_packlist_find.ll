; ModuleID = '/home/carl/AnghaBench/git/extr_pack-objects.c_packlist_find.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-objects.c_packlist_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { i32 }
%struct.packing_data = type { i32*, %struct.object_entry*, i32 }
%struct.object_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.object_entry* @packlist_find(%struct.packing_data* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.object_entry*, align 8
  %4 = alloca %struct.packing_data*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.packing_data* %0, %struct.packing_data** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %8 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %9 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.object_entry* null, %struct.object_entry** %3, align 8
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %15 = load %struct.object_id*, %struct.object_id** %5, align 8
  %16 = call i64 @locate_object_entry_hash(%struct.packing_data* %14, %struct.object_id* %15, i32* %7)
  store i64 %16, i64* %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store %struct.object_entry* null, %struct.object_entry** %3, align 8
  br label %33

20:                                               ; preds = %13
  %21 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %22 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %21, i32 0, i32 1
  %23 = load %struct.object_entry*, %struct.object_entry** %22, align 8
  %24 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %25 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %23, i64 %31
  store %struct.object_entry* %32, %struct.object_entry** %3, align 8
  br label %33

33:                                               ; preds = %20, %19, %12
  %34 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  ret %struct.object_entry* %34
}

declare dso_local i64 @locate_object_entry_hash(%struct.packing_data*, %struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
