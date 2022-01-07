; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_nb_advance_process.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_nb_advance_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nb_advance_process(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 0
  br label %21

21:                                               ; preds = %18, %2
  %22 = phi i1 [ false, %2 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  br label %25

25:                                               ; preds = %90, %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br label %36

36:                                               ; preds = %28, %25
  %37 = phi i1 [ true, %25 ], [ %35, %28 ]
  br i1 %37, label %38, label %91

38:                                               ; preds = %36
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %38
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %55, %52
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %68
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %7, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = icmp eq %struct.TYPE_4__* %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  br label %91

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %68
  br label %25

91:                                               ; preds = %83, %36
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = icmp eq %struct.TYPE_4__* %102, %105
  br i1 %106, label %107, label %142

107:                                              ; preds = %91
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %109
  store i64 %113, i64* %111, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %107
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  br label %131

131:                                              ; preds = %123, %107
  %132 = phi i1 [ false, %107 ], [ %130, %123 ]
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %137, %140
  store i32 %141, i32* %3, align 4
  br label %247

142:                                              ; preds = %91
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %144 = icmp ne %struct.TYPE_4__* %143, null
  br i1 %144, label %166, label %145

145:                                              ; preds = %142
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 5
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 4
  store %struct.TYPE_4__* %155, %struct.TYPE_4__** %157, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  store i64 0, i64* %159, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  store i64 0, i64* %161, align 8
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  store i32 0, i32* %163, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  store i32 0, i32* %165, align 4
  store i32 0, i32* %3, align 4
  br label %247

166:                                              ; preds = %142
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 4
  store %struct.TYPE_4__* %167, %struct.TYPE_4__** %169, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %177, %180
  %182 = trunc i64 %181 to i32
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = icmp sgt i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 4
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  store %struct.TYPE_4__* %193, %struct.TYPE_4__** %7, align 8
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %196 = icmp eq %struct.TYPE_4__* %194, %195
  br i1 %196, label %205, label %197

197:                                              ; preds = %166
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %200, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %197, %166
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 3
  store i64 0, i64* %207, align 8
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  store i32 0, i32* %209, align 4
  br label %226

210:                                              ; preds = %197
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 3
  store i64 %213, i64* %215, align 8
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = sub nsw i64 %218, %221
  %223 = trunc i64 %222 to i32
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %210, %205
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %229, %232
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = icmp sle i32 %233, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %242, %245
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %226, %145, %131
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
