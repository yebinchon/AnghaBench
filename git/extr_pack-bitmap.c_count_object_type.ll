; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_count_object_type.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_count_object_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_index = type { %struct.TYPE_4__*, i32, i32, i32, i32, %struct.eindex, %struct.bitmap* }
%struct.TYPE_4__ = type { i64 }
%struct.eindex = type { i64, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }
%struct.bitmap = type { i64, i32* }
%struct.ewah_iterator = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bitmap_index*, i32)* @count_object_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @count_object_type(%struct.bitmap_index* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.bitmap_index*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap*, align 8
  %7 = alloca %struct.eindex*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ewah_iterator, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bitmap_index* %0, %struct.bitmap_index** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %14 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %13, i32 0, i32 6
  %15 = load %struct.bitmap*, %struct.bitmap** %14, align 8
  store %struct.bitmap* %15, %struct.bitmap** %6, align 8
  %16 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %17 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %16, i32 0, i32 5
  store %struct.eindex* %17, %struct.eindex** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %39 [
    i32 130, label %19
    i32 128, label %24
    i32 131, label %29
    i32 129, label %34
  ]

19:                                               ; preds = %2
  %20 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %21 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ewah_iterator_init(%struct.ewah_iterator* %10, i32 %22)
  br label %40

24:                                               ; preds = %2
  %25 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %26 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ewah_iterator_init(%struct.ewah_iterator* %10, i32 %27)
  br label %40

29:                                               ; preds = %2
  %30 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %31 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ewah_iterator_init(%struct.ewah_iterator* %10, i32 %32)
  br label %40

34:                                               ; preds = %2
  %35 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %36 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ewah_iterator_init(%struct.ewah_iterator* %10, i32 %37)
  br label %40

39:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %104

40:                                               ; preds = %34, %29, %24, %19
  br label %41

41:                                               ; preds = %52, %40
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %44 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = call i64 @ewah_iterator_next(i32* %11, %struct.ewah_iterator* %10)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i1 [ false, %41 ], [ %49, %47 ]
  br i1 %51, label %52, label %66

52:                                               ; preds = %50
  %53 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %54 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %8, align 8
  %58 = getelementptr inbounds i32, i32* %55, i64 %56
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i64 @ewah_bit_popcount64(i32 %62)
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %9, align 8
  br label %41

66:                                               ; preds = %50
  store i64 0, i64* %8, align 8
  br label %67

67:                                               ; preds = %99, %66
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.eindex*, %struct.eindex** %7, align 8
  %70 = getelementptr inbounds %struct.eindex, %struct.eindex* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %67
  %74 = load %struct.eindex*, %struct.eindex** %7, align 8
  %75 = getelementptr inbounds %struct.eindex, %struct.eindex* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %76, i64 %77
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %73
  %85 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %86 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %87 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = add i64 %90, %91
  %93 = call i64 @bitmap_get(%struct.bitmap* %85, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %9, align 8
  br label %98

98:                                               ; preds = %95, %84, %73
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %8, align 8
  br label %67

102:                                              ; preds = %67
  %103 = load i64, i64* %9, align 8
  store i64 %103, i64* %3, align 8
  br label %104

104:                                              ; preds = %102, %39
  %105 = load i64, i64* %3, align 8
  ret i64 %105
}

declare dso_local i32 @ewah_iterator_init(%struct.ewah_iterator*, i32) #1

declare dso_local i64 @ewah_iterator_next(i32*, %struct.ewah_iterator*) #1

declare dso_local i64 @ewah_bit_popcount64(i32) #1

declare dso_local i64 @bitmap_get(%struct.bitmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
