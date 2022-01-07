; ModuleID = '/home/carl/AnghaBench/git/extr_pack-objects.h_oe_set_in_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-objects.h_oe_set_in_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packing_data = type { %struct.object_entry*, %struct.packed_git**, i64 }
%struct.object_entry = type { i64 }
%struct.packed_git = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packing_data*, %struct.object_entry*, %struct.packed_git*)* @oe_set_in_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oe_set_in_pack(%struct.packing_data* %0, %struct.object_entry* %1, %struct.packed_git* %2) #0 {
  %4 = alloca %struct.packing_data*, align 8
  %5 = alloca %struct.object_entry*, align 8
  %6 = alloca %struct.packed_git*, align 8
  store %struct.packing_data* %0, %struct.packing_data** %4, align 8
  store %struct.object_entry* %1, %struct.object_entry** %5, align 8
  store %struct.packed_git* %2, %struct.packed_git** %6, align 8
  %7 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %8 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %13 = call i32 @oe_map_new_pack(%struct.packing_data* %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %16 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %21 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %24 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %39

25:                                               ; preds = %14
  %26 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %27 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %28 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %27, i32 0, i32 1
  %29 = load %struct.packed_git**, %struct.packed_git*** %28, align 8
  %30 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %31 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %32 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %31, i32 0, i32 0
  %33 = load %struct.object_entry*, %struct.object_entry** %32, align 8
  %34 = ptrtoint %struct.object_entry* %30 to i64
  %35 = ptrtoint %struct.object_entry* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 8
  %38 = getelementptr inbounds %struct.packed_git*, %struct.packed_git** %29, i64 %37
  store %struct.packed_git* %26, %struct.packed_git** %38, align 8
  br label %39

39:                                               ; preds = %25, %19
  ret void
}

declare dso_local i32 @oe_map_new_pack(%struct.packing_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
