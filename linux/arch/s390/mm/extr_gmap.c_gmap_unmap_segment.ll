; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_unmap_segment.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_unmap_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PMD_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gmap_unmap_segment(%struct.gmap* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.gmap* %0, %struct.gmap** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.gmap*, %struct.gmap** %5, align 8
  %11 = call i32 @gmap_is_shadow(%struct.gmap* %10)
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = or i64 %13, %14
  %16 = load i32, i32* @PMD_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = and i64 %15, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %71

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %28, %29
  %31 = load i64, i64* %6, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %24
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %71

36:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  %37 = load %struct.gmap*, %struct.gmap** %5, align 8
  %38 = getelementptr inbounds %struct.gmap, %struct.gmap* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @down_write(i32* %40)
  store i64 0, i64* %8, align 8
  br label %42

42:                                               ; preds = %54, %36
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load %struct.gmap*, %struct.gmap** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %48, %49
  %51 = call i32 @__gmap_unmap_by_gaddr(%struct.gmap* %47, i64 %50)
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @PMD_SIZE, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %8, align 8
  br label %42

59:                                               ; preds = %42
  %60 = load %struct.gmap*, %struct.gmap** %5, align 8
  %61 = getelementptr inbounds %struct.gmap, %struct.gmap* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @up_write(i32* %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.gmap*, %struct.gmap** %5, align 8
  %69 = call i32 @gmap_flush_tlb(%struct.gmap* %68)
  br label %70

70:                                               ; preds = %67, %59
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %33, %21
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__gmap_unmap_by_gaddr(%struct.gmap*, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @gmap_flush_tlb(%struct.gmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
