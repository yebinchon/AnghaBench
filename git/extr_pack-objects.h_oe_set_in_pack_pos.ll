; ModuleID = '/home/carl/AnghaBench/git/extr_pack-objects.h_oe_set_in_pack_pos.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-objects.h_oe_set_in_pack_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packing_data = type { i32*, %struct.object_entry* }
%struct.object_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packing_data*, %struct.object_entry*, i32)* @oe_set_in_pack_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oe_set_in_pack_pos(%struct.packing_data* %0, %struct.object_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.packing_data*, align 8
  %5 = alloca %struct.object_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.packing_data* %0, %struct.packing_data** %4, align 8
  store %struct.object_entry* %1, %struct.object_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %9 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %12 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %13 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %12, i32 0, i32 1
  %14 = load %struct.object_entry*, %struct.object_entry** %13, align 8
  %15 = ptrtoint %struct.object_entry* %11 to i64
  %16 = ptrtoint %struct.object_entry* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 4
  %19 = getelementptr inbounds i32, i32* %10, i64 %18
  store i32 %7, i32* %19, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
