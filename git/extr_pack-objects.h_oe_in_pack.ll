; ModuleID = '/home/carl/AnghaBench/git/extr_pack-objects.h_oe_in_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-objects.h_oe_in_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32 }
%struct.packing_data = type { %struct.object_entry*, %struct.packed_git**, %struct.packed_git** }
%struct.object_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.packed_git* (%struct.packing_data*, %struct.object_entry*)* @oe_in_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.packed_git* @oe_in_pack(%struct.packing_data* %0, %struct.object_entry* %1) #0 {
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca %struct.packing_data*, align 8
  %5 = alloca %struct.object_entry*, align 8
  store %struct.packing_data* %0, %struct.packing_data** %4, align 8
  store %struct.object_entry* %1, %struct.object_entry** %5, align 8
  %6 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %7 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %6, i32 0, i32 2
  %8 = load %struct.packed_git**, %struct.packed_git*** %7, align 8
  %9 = icmp ne %struct.packed_git** %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %12 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %11, i32 0, i32 2
  %13 = load %struct.packed_git**, %struct.packed_git*** %12, align 8
  %14 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %15 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.packed_git*, %struct.packed_git** %13, i64 %16
  %18 = load %struct.packed_git*, %struct.packed_git** %17, align 8
  store %struct.packed_git* %18, %struct.packed_git** %3, align 8
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %21 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %20, i32 0, i32 1
  %22 = load %struct.packed_git**, %struct.packed_git*** %21, align 8
  %23 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %24 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %25 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %24, i32 0, i32 0
  %26 = load %struct.object_entry*, %struct.object_entry** %25, align 8
  %27 = ptrtoint %struct.object_entry* %23 to i64
  %28 = ptrtoint %struct.object_entry* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 8
  %31 = getelementptr inbounds %struct.packed_git*, %struct.packed_git** %22, i64 %30
  %32 = load %struct.packed_git*, %struct.packed_git** %31, align 8
  store %struct.packed_git* %32, %struct.packed_git** %3, align 8
  br label %33

33:                                               ; preds = %19, %10
  %34 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  ret %struct.packed_git* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
