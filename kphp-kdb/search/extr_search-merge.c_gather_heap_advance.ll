; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_gather_heap_advance.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_gather_heap_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_6__* }

@GH_mode = common dso_local global i32 0, align 4
@g_double = common dso_local global i32 0, align 4
@GH_N = common dso_local global i32 0, align 4
@GH = common dso_local global %struct.TYPE_5__** null, align 8
@CHUNK_INTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gather_heap_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_heap_advance() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @GH_mode, align 4
  %9 = load i32, i32* @g_double, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 3, i32 2
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* @GH_N, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %0
  br label %213

17:                                               ; preds = %0
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %1, align 8
  %21 = load i32, i32* %2, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %17
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %33 = load i32, i32* @GH_N, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* @GH_N, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %32, i64 %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %1, align 8
  %38 = load i32, i32* @GH_N, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  br label %213

41:                                               ; preds = %31
  br label %93

42:                                               ; preds = %17
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %46, %49
  br i1 %50, label %51, label %90

51:                                               ; preds = %42
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 5
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = call i32 @assert(%struct.TYPE_6__* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %2, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @CHUNK_INTS, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %51
  %80 = load i32, i32* @CHUNK_INTS, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %51
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %81, %42
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %92 = call i32 @load_heap_v(%struct.TYPE_5__* %91)
  br label %93

93:                                               ; preds = %90, %41
  store i32 1, i32* %4, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %6, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %93, %196
  %101 = load i32, i32* %4, align 4
  %102 = mul nsw i32 %101, 2
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @GH_N, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %207

107:                                              ; preds = %100
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @GH_N, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %165

111:                                              ; preds = %107
  %112 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %112, i64 %115
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %120, i64 %122
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %119, %126
  br i1 %127, label %162, label %128

128:                                              ; preds = %111
  %129 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %129, i64 %132
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %137, i64 %139
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %136, %143
  br i1 %144, label %145, label %165

145:                                              ; preds = %128
  %146 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %146, i64 %149
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %154, i64 %156
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = icmp slt i32 %153, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %145, %111
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %162, %145, %128, %107
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %167, i64 %169
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %166, %173
  br i1 %174, label %195, label %175

175:                                              ; preds = %165
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %177, i64 %179
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %176, %183
  br i1 %184, label %185, label %196

185:                                              ; preds = %175
  %186 = load i32, i32* %7, align 4
  %187 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %187, i64 %189
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = icmp sle i32 %186, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %185, %165
  br label %207

196:                                              ; preds = %185, %175
  %197 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %197, i64 %199
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %202, i64 %204
  store %struct.TYPE_5__* %201, %struct.TYPE_5__** %205, align 8
  %206 = load i32, i32* %5, align 4
  store i32 %206, i32* %4, align 4
  br label %100

207:                                              ; preds = %195, %106
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %209 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %209, i64 %211
  store %struct.TYPE_5__* %208, %struct.TYPE_5__** %212, align 8
  br label %213

213:                                              ; preds = %207, %40, %16
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @load_heap_v(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
