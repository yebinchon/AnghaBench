; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_unshadow.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_unshadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32, i32 }

@_ASCE_ORIGIN = common dso_local global i32 0, align 4
@_ASCE_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gmap*)* @gmap_unshadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmap_unshadow(%struct.gmap* %0) #0 {
  %2 = alloca %struct.gmap*, align 8
  %3 = alloca i64*, align 8
  store %struct.gmap* %0, %struct.gmap** %2, align 8
  %4 = load %struct.gmap*, %struct.gmap** %2, align 8
  %5 = call i32 @gmap_is_shadow(%struct.gmap* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.gmap*, %struct.gmap** %2, align 8
  %11 = getelementptr inbounds %struct.gmap, %struct.gmap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.gmap*, %struct.gmap** %2, align 8
  %17 = getelementptr inbounds %struct.gmap, %struct.gmap* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.gmap*, %struct.gmap** %2, align 8
  %19 = call i32 @gmap_call_notifier(%struct.gmap* %18, i32 0, i64 -1)
  %20 = load %struct.gmap*, %struct.gmap** %2, align 8
  %21 = call i32 @gmap_flush_tlb(%struct.gmap* %20)
  %22 = load %struct.gmap*, %struct.gmap** %2, align 8
  %23 = getelementptr inbounds %struct.gmap, %struct.gmap* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @_ASCE_ORIGIN, align 4
  %26 = and i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i64*
  store i64* %28, i64** %3, align 8
  %29 = load %struct.gmap*, %struct.gmap** %2, align 8
  %30 = getelementptr inbounds %struct.gmap, %struct.gmap* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @_ASCE_TYPE_MASK, align 4
  %33 = and i32 %31, %32
  switch i32 %33, label %50 [
    i32 131, label %34
    i32 130, label %38
    i32 129, label %42
    i32 128, label %46
  ]

34:                                               ; preds = %15
  %35 = load %struct.gmap*, %struct.gmap** %2, align 8
  %36 = load i64*, i64** %3, align 8
  %37 = call i32 @__gmap_unshadow_r1t(%struct.gmap* %35, i32 0, i64* %36)
  br label %50

38:                                               ; preds = %15
  %39 = load %struct.gmap*, %struct.gmap** %2, align 8
  %40 = load i64*, i64** %3, align 8
  %41 = call i32 @__gmap_unshadow_r2t(%struct.gmap* %39, i32 0, i64* %40)
  br label %50

42:                                               ; preds = %15
  %43 = load %struct.gmap*, %struct.gmap** %2, align 8
  %44 = load i64*, i64** %3, align 8
  %45 = call i32 @__gmap_unshadow_r3t(%struct.gmap* %43, i32 0, i64* %44)
  br label %50

46:                                               ; preds = %15
  %47 = load %struct.gmap*, %struct.gmap** %2, align 8
  %48 = load i64*, i64** %3, align 8
  %49 = call i32 @__gmap_unshadow_sgt(%struct.gmap* %47, i32 0, i64* %48)
  br label %50

50:                                               ; preds = %14, %15, %46, %42, %38, %34
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local i32 @gmap_call_notifier(%struct.gmap*, i32, i64) #1

declare dso_local i32 @gmap_flush_tlb(%struct.gmap*) #1

declare dso_local i32 @__gmap_unshadow_r1t(%struct.gmap*, i32, i64*) #1

declare dso_local i32 @__gmap_unshadow_r2t(%struct.gmap*, i32, i64*) #1

declare dso_local i32 @__gmap_unshadow_r3t(%struct.gmap*, i32, i64*) #1

declare dso_local i32 @__gmap_unshadow_sgt(%struct.gmap*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
