; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_listree_get_range_rec_rev.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_listree_get_range_rec_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }

@NIL = common dso_local global %struct.TYPE_4__* null, align 8
@RA = common dso_local global i32* null, align 8
@TF_MINUS = common dso_local global i32 0, align 4
@y_to_delta = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listree_get_range_rec_rev(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %147

19:                                               ; preds = %5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @NIL, align 8
  %22 = icmp eq %struct.TYPE_4__* %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp sle i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store i32 -2, i32* %6, align 4
  br label %147

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %37, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** @RA, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 -1
  store i32* %45, i32** @RA, align 8
  store i32 %43, i32* %45, align 4
  br label %33

46:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %147

47:                                               ; preds = %19
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %48, %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %52, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 3
  %64 = load i32, i32* @TF_MINUS, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 1
  %68 = add nsw i32 %59, %67
  store i32 %68, i32* %13, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** @y_to_delta, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %73, %81
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %47
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 5
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @listree_get_range_rec_rev(i32* %87, %struct.TYPE_4__* %90, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %6, align 4
  br label %147

95:                                               ; preds = %47
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load i32*, i32** %7, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %14, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %14, align 4
  %110 = sub nsw i32 %108, %109
  %111 = call i32 @listree_get_range_rec_rev(i32* %100, %struct.TYPE_4__* %103, i32 %104, i32 %107, i32 %110)
  store i32 %111, i32* %6, align 4
  br label %147

112:                                              ; preds = %95
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %12, align 4
  %120 = sub nsw i32 %119, 1
  %121 = call i32 @listree_get_range_rec_rev(i32* %113, %struct.TYPE_4__* %116, i32 %117, i32 %118, i32 %120)
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  store i32 -2, i32* %6, align 4
  br label %147

124:                                              ; preds = %112
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** @RA, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 -1
  store i32* %133, i32** @RA, align 8
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %128, %124
  %135 = load i32*, i32** %7, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %14, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %14, align 4
  %145 = sub nsw i32 %143, %144
  %146 = call i32 @listree_get_range_rec_rev(i32* %135, %struct.TYPE_4__* %138, i32 %139, i32 %142, i32 %145)
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %134, %123, %99, %86, %46, %31, %18
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
