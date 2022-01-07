; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_property_entries_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_property_entries_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property_entry = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @property_entries_free(%struct.property_entry* %0) #0 {
  %2 = alloca %struct.property_entry*, align 8
  %3 = alloca %struct.property_entry*, align 8
  store %struct.property_entry* %0, %struct.property_entry** %2, align 8
  %4 = load %struct.property_entry*, %struct.property_entry** %2, align 8
  %5 = icmp ne %struct.property_entry* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %23

7:                                                ; preds = %1
  %8 = load %struct.property_entry*, %struct.property_entry** %2, align 8
  store %struct.property_entry* %8, %struct.property_entry** %3, align 8
  br label %9

9:                                                ; preds = %17, %7
  %10 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %11 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %16 = call i32 @property_entry_free_data(%struct.property_entry* %15)
  br label %17

17:                                               ; preds = %14
  %18 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %19 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %18, i32 1
  store %struct.property_entry* %19, %struct.property_entry** %3, align 8
  br label %9

20:                                               ; preds = %9
  %21 = load %struct.property_entry*, %struct.property_entry** %2, align 8
  %22 = call i32 @kfree(%struct.property_entry* %21)
  br label %23

23:                                               ; preds = %20, %6
  ret void
}

declare dso_local i32 @property_entry_free_data(%struct.property_entry*) #1

declare dso_local i32 @kfree(%struct.property_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
