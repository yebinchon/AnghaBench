; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_forget_view.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_forget_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclic_views_entry = type { i32 }
%struct.advert = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cyclic_views_entry*)* @forget_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forget_view(%struct.cyclic_views_entry* %0) #0 {
  %2 = alloca %struct.cyclic_views_entry*, align 8
  %3 = alloca %struct.advert*, align 8
  store %struct.cyclic_views_entry* %0, %struct.cyclic_views_entry** %2, align 8
  %4 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %2, align 8
  %5 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.advert* @get_ad(i32 %6)
  store %struct.advert* %7, %struct.advert** %3, align 8
  %8 = load %struct.advert*, %struct.advert** %3, align 8
  %9 = icmp ne %struct.advert* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.advert*, %struct.advert** %3, align 8
  %12 = getelementptr inbounds %struct.advert, %struct.advert* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp sge i64 %14, 0
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i1 [ true, %1 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  ret void
}

declare dso_local %struct.advert* @get_ad(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
