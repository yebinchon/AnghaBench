; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_map_segment.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_map_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@PMD_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TASK_SIZE_MAX = common dso_local global i64 0, align 8
@PMD_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gmap_map_segment(%struct.gmap* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.gmap* %0, %struct.gmap** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.gmap*, %struct.gmap** %6, align 8
  %13 = call i32 @gmap_is_shadow(%struct.gmap* %12)
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* %9, align 8
  %19 = or i64 %17, %18
  %20 = load i32, i32* @PMD_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = and i64 %19, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %123

28:                                               ; preds = %4
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %59, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %32, %33
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %59, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %38, %39
  %41 = load i64, i64* %8, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %59, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %44, %45
  %47 = sub i64 %46, 1
  %48 = load i64, i64* @TASK_SIZE_MAX, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %59, label %50

50:                                               ; preds = %43
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %51, %52
  %54 = sub i64 %53, 1
  %55 = load %struct.gmap*, %struct.gmap** %6, align 8
  %56 = getelementptr inbounds %struct.gmap, %struct.gmap* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ugt i64 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50, %43, %37, %31, %28
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %123

62:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  %63 = load %struct.gmap*, %struct.gmap** %6, align 8
  %64 = getelementptr inbounds %struct.gmap, %struct.gmap* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @down_write(i32* %66)
  store i64 0, i64* %10, align 8
  br label %68

68:                                               ; preds = %95, %62
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %68
  %73 = load %struct.gmap*, %struct.gmap** %6, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %74, %75
  %77 = call i32 @__gmap_unmap_by_gaddr(%struct.gmap* %73, i64 %76)
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  %80 = load %struct.gmap*, %struct.gmap** %6, align 8
  %81 = getelementptr inbounds %struct.gmap, %struct.gmap* %80, i32 0, i32 2
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %82, %83
  %85 = load i64, i64* @PMD_SHIFT, align 8
  %86 = lshr i64 %84, %85
  %87 = load i64, i64* %7, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr i8, i8* %88, i64 %89
  %91 = call i64 @radix_tree_insert(i32* %81, i64 %86, i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %72
  br label %100

94:                                               ; preds = %72
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* @PMD_SIZE, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %10, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %10, align 8
  br label %68

100:                                              ; preds = %93, %68
  %101 = load %struct.gmap*, %struct.gmap** %6, align 8
  %102 = getelementptr inbounds %struct.gmap, %struct.gmap* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = call i32 @up_write(i32* %104)
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.gmap*, %struct.gmap** %6, align 8
  %110 = call i32 @gmap_flush_tlb(%struct.gmap* %109)
  br label %111

111:                                              ; preds = %108, %100
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %9, align 8
  %114 = icmp uge i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %123

116:                                              ; preds = %111
  %117 = load %struct.gmap*, %struct.gmap** %6, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %9, align 8
  %120 = call i32 @gmap_unmap_segment(%struct.gmap* %117, i64 %118, i64 %119)
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %116, %115, %59, %25
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__gmap_unmap_by_gaddr(%struct.gmap*, i64) #1

declare dso_local i64 @radix_tree_insert(i32*, i64, i8*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @gmap_flush_tlb(%struct.gmap*) #1

declare dso_local i32 @gmap_unmap_segment(%struct.gmap*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
