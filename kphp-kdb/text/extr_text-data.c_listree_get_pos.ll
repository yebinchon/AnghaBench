; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_listree_get_pos.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_listree_get_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_5__* }

@NIL = common dso_local global %struct.TYPE_5__* null, align 8
@TF_MINUS = common dso_local global i32 0, align 4
@TF_PLUS = common dso_local global i32 0, align 4
@y_to_delta = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @listree_get_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listree_get_pos(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %8, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %104, %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @NIL, align 8
  %27 = icmp ne %struct.TYPE_5__* %25, %26
  br i1 %27, label %28, label %105

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %13, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 3
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %28
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %8, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %104

49:                                               ; preds = %28
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @TF_MINUS, align 4
  %61 = icmp ne i32 %59, %60
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi i1 [ true, %55 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %66, %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %68, %73
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @TF_MINUS, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = sub nsw i32 %74, %78
  store i32 %79, i32* %4, align 4
  br label %199

80:                                               ; preds = %49
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @TF_PLUS, align 4
  %84 = icmp ne i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = add nsw i32 %81, %85
  store i32 %86, i32* %11, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** @y_to_delta, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %91, %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %10, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  store %struct.TYPE_5__* %102, %struct.TYPE_5__** %8, align 8
  br label %103

103:                                              ; preds = %80
  br label %104

104:                                              ; preds = %103, %43
  br label %24

105:                                              ; preds = %24
  %106 = load i32, i32* %11, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %110, %111
  %113 = icmp sle i32 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %115, %116
  br label %118

118:                                              ; preds = %114, %108, %105
  %119 = phi i1 [ false, %108 ], [ false, %105 ], [ %117, %114 ]
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %11, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %136, label %130

130:                                              ; preds = %118
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %11, align 4
  %133 = sub nsw i32 %131, %132
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 -2, i32* %4, align 4
  br label %199

136:                                              ; preds = %130, %118
  br label %137

137:                                              ; preds = %192, %136
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %11, align 4
  %140 = sub nsw i32 %138, %139
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %193

142:                                              ; preds = %137
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %143, %144
  %146 = ashr i32 %145, 1
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %147, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %142
  %157 = load i32, i32* %15, align 4
  store i32 %157, i32* %12, align 4
  br label %192

158:                                              ; preds = %142
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp sgt i32 %159, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i32, i32* %15, align 4
  store i32 %169, i32* %11, align 4
  br label %191

170:                                              ; preds = %158
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %15, align 4
  %175 = icmp sge i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %170
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %178, %183
  %185 = icmp slt i32 %177, %184
  br label %186

186:                                              ; preds = %176, %170
  %187 = phi i1 [ false, %170 ], [ %185, %176 ]
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  %190 = load i32, i32* %15, align 4
  store i32 %190, i32* %4, align 4
  br label %199

191:                                              ; preds = %168
  br label %192

192:                                              ; preds = %191, %156
  br label %137

193:                                              ; preds = %137
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @assert(i32 %194)
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %196, %197
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %193, %186, %135, %62
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
