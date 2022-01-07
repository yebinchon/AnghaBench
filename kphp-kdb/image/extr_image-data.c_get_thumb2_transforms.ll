; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_get_thumb2_transforms.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_get_thumb2_transforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thumb2 = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@THUMB2_CROP_MASK = common dso_local global i32 0, align 4
@THUMB2_RESIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.thumb2*, %struct.TYPE_5__*, %struct.TYPE_5__*)* @get_thumb2_transforms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_thumb2_transforms(i32 %0, i32 %1, %struct.thumb2* %2, %struct.TYPE_5__* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thumb2*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.thumb2* %2, %struct.thumb2** %9, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %16 = call i32 @memset(%struct.TYPE_5__* %15, i32 0, i32 16)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %18 = call i32 @memset(%struct.TYPE_5__* %17, i32 0, i32 16)
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %21 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %19, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %27 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load i32, i32* @THUMB2_CROP_MASK, align 4
  %32 = load i32, i32* %12, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %38 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  store i32 0, i32* %43, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %30, %24
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %6, align 4
  br label %176

48:                                               ; preds = %5
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %51 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @resize_height(i32 %49, i32 %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %57 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %55, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %48
  %61 = load i32, i32* @THUMB2_RESIZE_MASK, align 4
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %65 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %74 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %60
  %78 = load i32, i32* @THUMB2_CROP_MASK, align 4
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %82 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %87 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  store i32 0, i32* %92, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %77, %60
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %6, align 4
  br label %176

97:                                               ; preds = %48
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %100 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %97
  %104 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %105 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %114 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %112, %115
  %117 = sdiv i32 %116, 2
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  store i32 0, i32* %121, align 4
  %122 = load i32, i32* @THUMB2_CROP_MASK, align 4
  store i32 %122, i32* %6, align 4
  br label %176

123:                                              ; preds = %97
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %126 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp sgt i32 %124, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %132 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %130, %133
  br label %135

135:                                              ; preds = %129, %123
  %136 = phi i1 [ false, %123 ], [ %134, %129 ]
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %141 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @resize_height(i32 %139, i32 %142, i32 %143)
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  %148 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %149 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %154 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %159 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.thumb2*, %struct.thumb2** %9, align 8
  %165 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %163, %166
  %168 = sdiv i32 %167, 2
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 3
  store i32 0, i32* %172, align 4
  %173 = load i32, i32* @THUMB2_RESIZE_MASK, align 4
  %174 = load i32, i32* @THUMB2_CROP_MASK, align 4
  %175 = or i32 %173, %174
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %135, %103, %95, %46
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @resize_height(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
