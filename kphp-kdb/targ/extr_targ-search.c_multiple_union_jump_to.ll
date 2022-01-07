; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_multiple_union_jump_to.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_multiple_union_jump_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, {}* }
%struct.union_iterator = type { i64, i32, %struct.TYPE_5__** }
%struct.binary_operation_iterator = type { %struct.TYPE_5__*, %struct.TYPE_5__* }

@INFTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @multiple_union_jump_to(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.union_iterator*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = bitcast %struct.TYPE_5__* %12 to %struct.union_iterator*
  store %struct.union_iterator* %13, %struct.union_iterator** %6, align 8
  %14 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %15 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %154, %2
  %18 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %19 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %20, i64 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %161

27:                                               ; preds = %17
  %28 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %29 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %30, i64 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = bitcast {}** %33 to i32 (%struct.TYPE_5__*, i32)**
  %35 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %34, align 8
  %36 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %37 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 %35(%struct.TYPE_5__* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %44 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %45, i64 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %9, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @INFTY, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %95

51:                                               ; preds = %27
  %52 = load i64, i64* %7, align 8
  %53 = icmp sle i64 %52, 3
  br i1 %53, label %54, label %81

54:                                               ; preds = %51
  %55 = load i64, i64* %7, align 8
  %56 = icmp eq i64 %55, 3
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = bitcast {}** %60 to i32 (%struct.TYPE_5__*, i32)**
  store i32 (%struct.TYPE_5__*, i32)* @binary_union_iterator_jump_to, i32 (%struct.TYPE_5__*, i32)** %61, align 8
  %62 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %63 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %64, i64 2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = bitcast %struct.TYPE_5__* %67 to %struct.binary_operation_iterator*
  %69 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %68, i32 0, i32 1
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %69, align 8
  %70 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %71 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %72, i64 3
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = bitcast %struct.TYPE_5__* %75 to %struct.binary_operation_iterator*
  %77 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %76, i32 0, i32 0
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @binary_union_iterator_jump_to(%struct.TYPE_5__* %78, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %171

81:                                               ; preds = %51
  %82 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %83 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %84, i64 %85
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  store %struct.TYPE_5__* %87, %struct.TYPE_5__** %9, align 8
  %88 = load i64, i64* %7, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %7, align 8
  %90 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %91 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %81, %27
  store i64 1, i64* %10, align 8
  br label %96

96:                                               ; preds = %95, %141
  %97 = load i64, i64* %10, align 8
  %98 = shl i64 %97, 1
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %7, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %154

103:                                              ; preds = %96
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %7, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %129

107:                                              ; preds = %103
  %108 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %109 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %108, i32 0, i32 2
  %110 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %110, i64 %111
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %117 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %116, i32 0, i32 2
  %118 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %117, align 8
  %119 = load i64, i64* %11, align 8
  %120 = add nsw i64 %119, 1
  %121 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %118, i64 %120
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp sgt i32 %115, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %107
  %127 = load i64, i64* %11, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %11, align 8
  br label %129

129:                                              ; preds = %126, %107, %103
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %132 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %131, i32 0, i32 2
  %133 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %132, align 8
  %134 = load i64, i64* %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %133, i64 %134
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp sle i32 %130, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  br label %154

141:                                              ; preds = %129
  %142 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %143 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %142, i32 0, i32 2
  %144 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %143, align 8
  %145 = load i64, i64* %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %144, i64 %145
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %149 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %148, i32 0, i32 2
  %150 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %149, align 8
  %151 = load i64, i64* %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %150, i64 %151
  store %struct.TYPE_5__* %147, %struct.TYPE_5__** %152, align 8
  %153 = load i64, i64* %11, align 8
  store i64 %153, i64* %10, align 8
  br label %96

154:                                              ; preds = %140, %102
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %156 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %157 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %156, i32 0, i32 2
  %158 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %157, align 8
  %159 = load i64, i64* %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %158, i64 %159
  store %struct.TYPE_5__* %155, %struct.TYPE_5__** %160, align 8
  br label %17

161:                                              ; preds = %17
  %162 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %163 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %162, i32 0, i32 2
  %164 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %164, i64 1
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.union_iterator*, %struct.union_iterator** %6, align 8
  %170 = getelementptr inbounds %struct.union_iterator, %struct.union_iterator* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 8
  store i32 %168, i32* %3, align 4
  br label %171

171:                                              ; preds = %161, %54
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @binary_union_iterator_jump_to(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
