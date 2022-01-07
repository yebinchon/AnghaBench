; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_property_entry_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_property_entry_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.property_entry* (%struct.property_entry*, i8*)* @property_entry_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.property_entry* @property_entry_get(%struct.property_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.property_entry*, align 8
  %4 = alloca %struct.property_entry*, align 8
  %5 = alloca i8*, align 8
  store %struct.property_entry* %0, %struct.property_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %7 = icmp ne %struct.property_entry* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.property_entry* null, %struct.property_entry** %3, align 8
  br label %29

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %25, %9
  %11 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %12 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %18 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @strcmp(i8* %16, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  store %struct.property_entry* %23, %struct.property_entry** %3, align 8
  br label %29

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %27 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %26, i32 1
  store %struct.property_entry* %27, %struct.property_entry** %4, align 8
  br label %10

28:                                               ; preds = %10
  store %struct.property_entry* null, %struct.property_entry** %3, align 8
  br label %29

29:                                               ; preds = %28, %22, %8
  %30 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  ret %struct.property_entry* %30
}

declare dso_local i32 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
