; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_prepare_bitmap_git.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_prepare_bitmap_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_index = type { i32 }
%struct.repository = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bitmap_index* @prepare_bitmap_git(%struct.repository* %0) #0 {
  %2 = alloca %struct.bitmap_index*, align 8
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.bitmap_index*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  %5 = call %struct.bitmap_index* @xcalloc(i32 1, i32 4)
  store %struct.bitmap_index* %5, %struct.bitmap_index** %4, align 8
  %6 = load %struct.repository*, %struct.repository** %3, align 8
  %7 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %8 = call i32 @open_pack_bitmap(%struct.repository* %6, %struct.bitmap_index* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %12 = call i32 @load_pack_bitmap(%struct.bitmap_index* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  store %struct.bitmap_index* %15, %struct.bitmap_index** %2, align 8
  br label %19

16:                                               ; preds = %10, %1
  %17 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %18 = call i32 @free_bitmap_index(%struct.bitmap_index* %17)
  store %struct.bitmap_index* null, %struct.bitmap_index** %2, align 8
  br label %19

19:                                               ; preds = %16, %14
  %20 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  ret %struct.bitmap_index* %20
}

declare dso_local %struct.bitmap_index* @xcalloc(i32, i32) #1

declare dso_local i32 @open_pack_bitmap(%struct.repository*, %struct.bitmap_index*) #1

declare dso_local i32 @load_pack_bitmap(%struct.bitmap_index*) #1

declare dso_local i32 @free_bitmap_index(%struct.bitmap_index*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
