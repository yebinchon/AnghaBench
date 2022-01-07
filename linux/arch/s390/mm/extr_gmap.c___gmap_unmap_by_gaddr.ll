; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c___gmap_unmap_by_gaddr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c___gmap_unmap_by_gaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32 }

@PMD_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gmap*, i64)* @__gmap_unmap_by_gaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gmap_unmap_by_gaddr(%struct.gmap* %0, i64 %1) #0 {
  %3 = alloca %struct.gmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.gmap* %0, %struct.gmap** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.gmap*, %struct.gmap** %3, align 8
  %7 = getelementptr inbounds %struct.gmap, %struct.gmap* %6, i32 0, i32 0
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @PMD_SHIFT, align 8
  %10 = lshr i64 %8, %9
  %11 = call i64 @radix_tree_delete(i32* %7, i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.gmap*, %struct.gmap** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @__gmap_unlink_by_vmaddr(%struct.gmap* %15, i64 %16)
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32 [ %17, %14 ], [ 0, %18 ]
  ret i32 %20
}

declare dso_local i64 @radix_tree_delete(i32*, i64) #1

declare dso_local i32 @__gmap_unlink_by_vmaddr(%struct.gmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
