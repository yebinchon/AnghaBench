; ModuleID = '/home/carl/AnghaBench/git/extr_pack-objects.h_oe_set_delta.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-objects.h_oe_set_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packing_data = type { %struct.object_entry* }
%struct.object_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packing_data*, %struct.object_entry*, %struct.object_entry*)* @oe_set_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oe_set_delta(%struct.packing_data* %0, %struct.object_entry* %1, %struct.object_entry* %2) #0 {
  %4 = alloca %struct.packing_data*, align 8
  %5 = alloca %struct.object_entry*, align 8
  %6 = alloca %struct.object_entry*, align 8
  store %struct.packing_data* %0, %struct.packing_data** %4, align 8
  store %struct.object_entry* %1, %struct.object_entry** %5, align 8
  store %struct.object_entry* %2, %struct.object_entry** %6, align 8
  %7 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %8 = icmp ne %struct.object_entry* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %11 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %12 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %11, i32 0, i32 0
  %13 = load %struct.object_entry*, %struct.object_entry** %12, align 8
  %14 = ptrtoint %struct.object_entry* %10 to i64
  %15 = ptrtoint %struct.object_entry* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  %18 = add nsw i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %21 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %24 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
