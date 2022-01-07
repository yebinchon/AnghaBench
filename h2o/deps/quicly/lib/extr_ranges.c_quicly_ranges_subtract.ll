; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_ranges.c_quicly_ranges_subtract.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_ranges.c_quicly_ranges_subtract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicly_ranges_subtract(%struct.TYPE_7__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp sle i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %246

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %246

25:                                               ; preds = %19
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %26, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %246

35:                                               ; preds = %25
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %246

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  store i64 0, i64* %9, align 8
  br label %53

53:                                               ; preds = %64, %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %53

67:                                               ; preds = %53
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sle i64 %68, %75
  br i1 %76, label %77, label %171

77:                                               ; preds = %67
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sle i64 %78, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %246

88:                                               ; preds = %77
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sle i64 %89, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %88
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i64 %99, i64* %105, align 8
  br label %148

106:                                              ; preds = %88
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %107, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %106
  %117 = load i64, i64* %6, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  store i64 %117, i64* %123, align 8
  br label %147

124:                                              ; preds = %106
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %9, align 8
  %135 = add i64 %134, 1
  %136 = call i64 @insert_at(%struct.TYPE_7__* %125, i64 %126, i64 %133, i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %124
  store i32 -1, i32* %4, align 4
  br label %246

139:                                              ; preds = %124
  %140 = load i64, i64* %6, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i64, i64* %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  store i64 %140, i64* %146, align 8
  store i32 0, i32* %4, align 4
  br label %246

147:                                              ; preds = %116
  br label %148

148:                                              ; preds = %147, %98
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load i64, i64* %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = load i64, i64* %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %155, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %148
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %166 = load i64, i64* %9, align 8
  %167 = load i64, i64* %9, align 8
  %168 = add i64 %167, 1
  %169 = call i32 @quicly_ranges_shrink(%struct.TYPE_7__* %165, i64 %166, i64 %168)
  br label %170

170:                                              ; preds = %164, %148
  store i32 0, i32* %4, align 4
  br label %246

171:                                              ; preds = %67
  %172 = load i64, i64* %6, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = load i64, i64* %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp sle i64 %172, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %171
  %182 = load i64, i64* %9, align 8
  store i64 %182, i64* %8, align 8
  br label %193

183:                                              ; preds = %171
  %184 = load i64, i64* %6, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = load i64, i64* %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  store i64 %184, i64* %190, align 8
  %191 = load i64, i64* %9, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %8, align 8
  br label %193

193:                                              ; preds = %183, %181
  %194 = load i64, i64* %9, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %9, align 8
  br label %196

196:                                              ; preds = %233, %193
  %197 = load i64, i64* %9, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = icmp ne i64 %197, %201
  br i1 %202, label %203, label %236

203:                                              ; preds = %196
  %204 = load i64, i64* %7, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = load i64, i64* %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp sle i64 %204, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %203
  br label %236

214:                                              ; preds = %203
  %215 = load i64, i64* %7, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = load i64, i64* %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp slt i64 %215, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %214
  %225 = load i64, i64* %7, align 8
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = load i64, i64* %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  store i64 %225, i64* %231, align 8
  br label %236

232:                                              ; preds = %214
  br label %233

233:                                              ; preds = %232
  %234 = load i64, i64* %9, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %9, align 8
  br label %196

236:                                              ; preds = %224, %213, %196
  %237 = load i64, i64* %8, align 8
  %238 = load i64, i64* %9, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %236
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %242 = load i64, i64* %8, align 8
  %243 = load i64, i64* %9, align 8
  %244 = call i32 @quicly_ranges_shrink(%struct.TYPE_7__* %241, i64 %242, i64 %243)
  br label %245

245:                                              ; preds = %240, %236
  store i32 0, i32* %4, align 4
  br label %246

246:                                              ; preds = %245, %170, %139, %138, %87, %49, %34, %24, %18
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @insert_at(%struct.TYPE_7__*, i64, i64, i64) #1

declare dso_local i32 @quicly_ranges_shrink(%struct.TYPE_7__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
