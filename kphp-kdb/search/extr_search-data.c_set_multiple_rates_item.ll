; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_set_multiple_rates_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_set_multiple_rates_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i64 }

@FLAG_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32*)* @set_multiple_rates_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_multiple_rates_item(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FLAG_DELETED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %135

24:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %61, %24
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %26
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %61

51:                                               ; preds = %29
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 0, %53
  %55 = and i32 %52, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %10, align 4
  %57 = xor i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %51, %36
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %26

64:                                               ; preds = %26
  %65 = load i32, i32* %11, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %64
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32* @zzrealloc_ushort_mask(i32* %85, i32 %88, i32 %89, i32 4)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %82, %64
  store i32 0, i32* %8, align 4
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %101, %96
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = sub nsw i32 0, %103
  %105 = and i32 %102, %104
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %10, align 4
  %107 = xor i32 %106, %105
  store i32 %107, i32* %10, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %12, align 4
  %119 = sub nsw i32 %118, 1
  %120 = and i32 %117, %119
  %121 = call i64 @popcount_short(i32 %120)
  %122 = getelementptr inbounds i32, i32* %116, i64 %121
  store i32 %113, i32* %122, align 4
  br label %98

123:                                              ; preds = %98
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @popcount_short(i32 %131)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  store i32 1, i32* %4, align 4
  br label %135

135:                                              ; preds = %123, %23
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32* @zzrealloc_ushort_mask(i32*, i32, i32, i32) #1

declare dso_local i64 @popcount_short(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
