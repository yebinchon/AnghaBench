; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c___gmap_unlink_by_vmaddr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c___gmap_unlink_by_vmaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32, i32 }

@PMD_SHIFT = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gmap*, i64)* @__gmap_unlink_by_vmaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gmap_unlink_by_vmaddr(%struct.gmap* %0, i64 %1) #0 {
  %3 = alloca %struct.gmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.gmap* %0, %struct.gmap** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.gmap*, %struct.gmap** %3, align 8
  %8 = call i32 @gmap_is_shadow(%struct.gmap* %7)
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.gmap*, %struct.gmap** %3, align 8
  %11 = getelementptr inbounds %struct.gmap, %struct.gmap* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.gmap*, %struct.gmap** %3, align 8
  %14 = getelementptr inbounds %struct.gmap, %struct.gmap* %13, i32 0, i32 1
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @PMD_SHIFT, align 8
  %17 = lshr i64 %15, %16
  %18 = call i64* @radix_tree_delete(i32* %14, i64 %17)
  store i64* %18, i64** %5, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @_SEGMENT_ENTRY_EMPTY, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i64, i64* @_SEGMENT_ENTRY_EMPTY, align 8
  %28 = load i64*, i64** %5, align 8
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %21, %2
  %30 = load %struct.gmap*, %struct.gmap** %3, align 8
  %31 = getelementptr inbounds %struct.gmap, %struct.gmap* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64* @radix_tree_delete(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
