; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_fill_midx_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_fill_midx_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.pack_entry = type { i32 }
%struct.multi_pack_index = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_midx_entry(%struct.repository* %0, %struct.object_id* %1, %struct.pack_entry* %2, %struct.multi_pack_index* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.pack_entry*, align 8
  %9 = alloca %struct.multi_pack_index*, align 8
  %10 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store %struct.pack_entry* %2, %struct.pack_entry** %8, align 8
  store %struct.multi_pack_index* %3, %struct.multi_pack_index** %9, align 8
  %11 = load %struct.object_id*, %struct.object_id** %7, align 8
  %12 = load %struct.multi_pack_index*, %struct.multi_pack_index** %9, align 8
  %13 = call i32 @bsearch_midx(%struct.object_id* %11, %struct.multi_pack_index* %12, i32* %10)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %22

16:                                               ; preds = %4
  %17 = load %struct.repository*, %struct.repository** %6, align 8
  %18 = load %struct.multi_pack_index*, %struct.multi_pack_index** %9, align 8
  %19 = load %struct.pack_entry*, %struct.pack_entry** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @nth_midxed_pack_entry(%struct.repository* %17, %struct.multi_pack_index* %18, %struct.pack_entry* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %16, %15
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @bsearch_midx(%struct.object_id*, %struct.multi_pack_index*, i32*) #1

declare dso_local i32 @nth_midxed_pack_entry(%struct.repository*, %struct.multi_pack_index*, %struct.pack_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
