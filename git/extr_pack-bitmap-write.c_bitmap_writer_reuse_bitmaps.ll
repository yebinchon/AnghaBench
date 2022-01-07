; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_bitmap_writer_reuse_bitmaps.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_bitmap_writer_reuse_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.packing_data = type { i32 }
%struct.bitmap_index = type { i32 }

@writer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_writer_reuse_bitmaps(%struct.packing_data* %0) #0 {
  %2 = alloca %struct.packing_data*, align 8
  %3 = alloca %struct.bitmap_index*, align 8
  store %struct.packing_data* %0, %struct.packing_data** %2, align 8
  %4 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %5 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.bitmap_index* @prepare_bitmap_git(i32 %6)
  store %struct.bitmap_index* %7, %struct.bitmap_index** %3, align 8
  %8 = icmp ne %struct.bitmap_index* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %17

10:                                               ; preds = %1
  %11 = call i32 (...) @kh_init_oid_map()
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @writer, i32 0, i32 1), align 4
  %12 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %13 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @writer, i32 0, i32 1), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @writer, i32 0, i32 0), align 4
  %16 = call i32 @rebuild_existing_bitmaps(%struct.bitmap_index* %12, %struct.packing_data* %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.bitmap_index* @prepare_bitmap_git(i32) #1

declare dso_local i32 @kh_init_oid_map(...) #1

declare dso_local i32 @rebuild_existing_bitmaps(%struct.bitmap_index*, %struct.packing_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
