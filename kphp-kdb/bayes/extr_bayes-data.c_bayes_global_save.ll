; ModuleID = '/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_bayes_global_save.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_bayes_global_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32 }

@max_words = common dso_local global i32 0, align 4
@fd = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bayes_global_save(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = mul nsw i32 3, %20
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @max_words, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @max_words, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %1
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %36, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %28
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %7, align 8
  br label %183

46:                                               ; preds = %28
  %47 = load i32, i32* %5, align 4
  %48 = sdiv i32 %47, 40000000
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sge i32 %49, 1
  br i1 %50, label %51, label %110

51:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %94, %51
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %52
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %58
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %77, %86
  %88 = load i32, i32* %9, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %68
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %90, %68, %58
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %52

97:                                               ; preds = %52
  %98 = load i32, i32* %10, align 4
  %99 = mul nsw i32 3, %98
  %100 = sdiv i32 %99, 2
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @max_words, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @max_words, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %97
  %107 = load i32, i32* %10, align 4
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %106, %46
  %111 = call %struct.TYPE_12__* @qmalloc0(i32 16)
  store %struct.TYPE_12__* %111, %struct.TYPE_12__** %7, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %113 = call i32 @qhtbl_init(%struct.TYPE_12__* %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @qhtbl_set_size(%struct.TYPE_12__* %114, i32 %115)
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %176, %110
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %179

123:                                              ; preds = %117
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %175

133:                                              ; preds = %123
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %142, %151
  %153 = load i32, i32* %9, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %175

155:                                              ; preds = %133
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call %struct.TYPE_14__* @qhtbl_add(%struct.TYPE_12__* %156, i64 %164)
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 2
  %173 = bitcast %struct.TYPE_14__* %165 to i8*
  %174 = bitcast %struct.TYPE_14__* %172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %173, i8* align 8 %174, i64 8, i1 false)
  br label %175

175:                                              ; preds = %155, %133, %123
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %117

179:                                              ; preds = %117
  %180 = load i32, i32* %5, align 4
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %179, %44
  store i64 28, i64* %11, align 8
  %184 = load i32*, i32** @fd, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = load i64, i64* %11, align 8
  %188 = call i64 @write(i32 %186, %struct.TYPE_13__* %0, i64 %187)
  %189 = load i64, i64* %11, align 8
  %190 = icmp eq i64 %188, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = mul i64 4, %196
  store i64 %197, i64* %12, align 8
  %198 = load i32*, i32** @fd, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %202, align 8
  %204 = load i64, i64* %12, align 8
  %205 = call i64 @write(i32 %200, %struct.TYPE_13__* %203, i64 %204)
  %206 = load i64, i64* %12, align 8
  %207 = icmp eq i64 %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @assert(i32 %208)
  %210 = load i32, i32* %6, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %183
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %214 = call i32 @qhtbl_free(%struct.TYPE_12__* %213)
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %216 = call i32 @qfree(%struct.TYPE_12__* %215, i32 16)
  %217 = load i32, i32* %4, align 4
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %3, align 4
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %212, %183
  %224 = load i64, i64* %11, align 8
  %225 = load i64, i64* %12, align 8
  %226 = add nsw i64 %224, %225
  ret i64 %226
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_12__* @qmalloc0(i32) #1

declare dso_local i32 @qhtbl_init(%struct.TYPE_12__*) #1

declare dso_local i32 @qhtbl_set_size(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_14__* @qhtbl_add(%struct.TYPE_12__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @write(i32, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @qhtbl_free(%struct.TYPE_12__*) #1

declare dso_local i32 @qfree(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
