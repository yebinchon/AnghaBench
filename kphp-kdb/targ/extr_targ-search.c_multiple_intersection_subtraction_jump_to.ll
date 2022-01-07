; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_multiple_intersection_subtraction_jump_to.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_multiple_intersection_subtraction_jump_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8* }
%struct.intersection_condition_iterator = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_7__*, i32)* }

@INFTY = common dso_local global i32 0, align 4
@empty_iterator_jump_to = common dso_local global i8* null, align 8
@multiple_intersection_jump_to = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @multiple_intersection_subtraction_jump_to(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intersection_condition_iterator*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = bitcast %struct.TYPE_6__* %10 to %struct.intersection_condition_iterator*
  store %struct.intersection_condition_iterator* %11, %struct.intersection_condition_iterator** %6, align 8
  %12 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %13 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %2, %112, %165
  %18 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %19 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %20, i64 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %17
  %29 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %30 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %31, i64 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %34, align 8
  %36 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %37 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %38, i64 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 %35(%struct.TYPE_7__* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %28, %17
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @INFTY, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i8*, i8** @empty_iterator_jump_to, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @INFTY, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  store i32 %51, i32* %3, align 4
  br label %168

54:                                               ; preds = %43
  store i64 1, i64* %7, align 8
  br label %55

55:                                               ; preds = %94, %54
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %97

59:                                               ; preds = %55
  %60 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %61 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %62, i64 %63
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %59
  %72 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %73 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %74, i64 %75
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %78, align 8
  %80 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %81 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %82, i64 %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 %79(%struct.TYPE_7__* %85, i32 %86)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %71, %59
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %97

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %7, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %7, align 8
  br label %55

97:                                               ; preds = %92, %55
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @INFTY, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i8*, i8** @empty_iterator_jump_to, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @INFTY, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  store i32 %109, i32* %3, align 4
  br label %168

112:                                              ; preds = %101
  br label %17

113:                                              ; preds = %97
  %114 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %115 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %115, align 8
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %116, i64 %117
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %113
  %126 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %127 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %126, i32 0, i32 1
  %128 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %127, align 8
  %129 = load i64, i64* %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %128, i64 %129
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %132, align 8
  %134 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %135 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %134, i32 0, i32 1
  %136 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %135, align 8
  %137 = load i64, i64* %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %136, i64 %137
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 %133(%struct.TYPE_7__* %139, i32 %140)
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %125, %113
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @INFTY, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %142
  %147 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %148 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %148, align 8
  %151 = load i8*, i8** @multiple_intersection_jump_to, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  store i32 %154, i32* %3, align 4
  br label %168

157:                                              ; preds = %142
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  store i32 %162, i32* %3, align 4
  br label %168

165:                                              ; preds = %157
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %17

168:                                              ; preds = %161, %146, %105, %47
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
