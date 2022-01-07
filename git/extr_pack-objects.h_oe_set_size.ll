; ModuleID = '/home/carl/AnghaBench/git/extr_pack-objects.h_oe_set_size.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-objects.h_oe_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packing_data = type { i64 }
%struct.object_entry = type { i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"'size' is supposed to be the object size!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packing_data*, %struct.object_entry*, i64)* @oe_set_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oe_set_size(%struct.packing_data* %0, %struct.object_entry* %1, i64 %2) #0 {
  %4 = alloca %struct.packing_data*, align 8
  %5 = alloca %struct.object_entry*, align 8
  %6 = alloca i64, align 8
  store %struct.packing_data* %0, %struct.packing_data** %4, align 8
  store %struct.object_entry* %1, %struct.object_entry** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %9 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %15 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %17 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %16, i32 0, i32 1
  store i32 1, i32* %17, align 8
  br label %29

18:                                               ; preds = %3
  %19 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %20 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %19, i32 0, i32 1
  store i32 0, i32* %20, align 8
  %21 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %22 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %23 = call i64 @oe_get_size_slow(%struct.packing_data* %21, %struct.object_entry* %22)
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = call i32 @BUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %18
  br label %29

29:                                               ; preds = %28, %12
  ret void
}

declare dso_local i64 @oe_get_size_slow(%struct.packing_data*, %struct.object_entry*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
