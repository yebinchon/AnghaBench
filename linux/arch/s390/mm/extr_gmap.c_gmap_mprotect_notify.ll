; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_mprotect_notify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_mprotect_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MACHINE_HAS_ESOP = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@GMAP_NOTIFY_MPROT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gmap_mprotect_notify(%struct.gmap* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gmap* %0, %struct.gmap** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @PAGE_MASK, align 8
  %13 = xor i64 %12, -1
  %14 = and i64 %11, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @PAGE_MASK, align 8
  %19 = xor i64 %18, -1
  %20 = and i64 %17, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load %struct.gmap*, %struct.gmap** %6, align 8
  %24 = call i64 @gmap_is_shadow(%struct.gmap* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %16, %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %57

29:                                               ; preds = %22
  %30 = load i32, i32* @MACHINE_HAS_ESOP, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @PROT_READ, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %57

39:                                               ; preds = %32, %29
  %40 = load %struct.gmap*, %struct.gmap** %6, align 8
  %41 = getelementptr inbounds %struct.gmap, %struct.gmap* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @down_read(i32* %43)
  %45 = load %struct.gmap*, %struct.gmap** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @GMAP_NOTIFY_MPROT, align 4
  %50 = call i32 @gmap_protect_range(%struct.gmap* %45, i64 %46, i64 %47, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.gmap*, %struct.gmap** %6, align 8
  %52 = getelementptr inbounds %struct.gmap, %struct.gmap* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @up_read(i32* %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %39, %36, %26
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @gmap_protect_range(%struct.gmap*, i64, i64, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
