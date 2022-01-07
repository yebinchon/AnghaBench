; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xdiffi.c_measure_split.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xdiffi.c_measure_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }
%struct.split_measurement = type { i32, i32, i64, i32, i64, i32 }

@MAX_BLANKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, %struct.split_measurement*)* @measure_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @measure_split(%struct.TYPE_3__* %0, i64 %1, %struct.split_measurement* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.split_measurement*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.split_measurement* %2, %struct.split_measurement** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %15 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %17 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %16, i32 0, i32 1
  store i32 -1, i32* %17, align 4
  br label %31

18:                                               ; preds = %3
  %19 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %20 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @get_indent(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %30 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %18, %13
  %32 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %33 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %35 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %34, i32 0, i32 3
  store i32 -1, i32* %35, align 8
  %36 = load i64, i64* %5, align 8
  %37 = sub nsw i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %71, %31
  %39 = load i64, i64* %7, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %38
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @get_indent(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %51 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %53 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %74

57:                                               ; preds = %41
  %58 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %59 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %63 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MAX_BLANKS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %69 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %68, i32 0, i32 3
  store i32 0, i32* %69, align 8
  br label %74

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %7, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %7, align 8
  br label %38

74:                                               ; preds = %67, %56, %38
  %75 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %76 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %78 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %77, i32 0, i32 5
  store i32 -1, i32* %78, align 8
  %79 = load i64, i64* %5, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %7, align 8
  br label %81

81:                                               ; preds = %117, %74
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %87, label %120

87:                                               ; preds = %81
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @get_indent(i32 %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %97 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %99 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, -1
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  br label %120

103:                                              ; preds = %87
  %104 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %105 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %105, align 8
  %108 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %109 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @MAX_BLANKS, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load %struct.split_measurement*, %struct.split_measurement** %6, align 8
  %115 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %114, i32 0, i32 5
  store i32 0, i32* %115, align 8
  br label %120

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %7, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %7, align 8
  br label %81

120:                                              ; preds = %113, %102, %81
  ret void
}

declare dso_local i8* @get_indent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
