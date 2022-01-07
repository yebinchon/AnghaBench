; ModuleID = '/home/carl/AnghaBench/git/extr_pack-objects.h_oe_size_less_than.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-objects.h_oe_size_less_than.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packing_data = type { i64 }
%struct.object_entry = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packing_data*, %struct.object_entry*, i64)* @oe_size_less_than to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oe_size_less_than(%struct.packing_data* %0, %struct.object_entry* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.packing_data*, align 8
  %6 = alloca %struct.object_entry*, align 8
  %7 = alloca i64, align 8
  store %struct.packing_data* %0, %struct.packing_data** %5, align 8
  store %struct.object_entry* %1, %struct.object_entry** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %9 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %14 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.packing_data*, %struct.packing_data** %5, align 8
  %22 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %33

26:                                               ; preds = %19
  %27 = load %struct.packing_data*, %struct.packing_data** %5, align 8
  %28 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %29 = call i64 @oe_get_size_slow(%struct.packing_data* %27, %struct.object_entry* %28)
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %26, %25, %12
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @oe_get_size_slow(%struct.packing_data*, %struct.object_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
