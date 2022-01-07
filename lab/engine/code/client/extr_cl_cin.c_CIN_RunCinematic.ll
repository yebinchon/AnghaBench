; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_CIN_RunCinematic.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_CIN_RunCinematic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@MAX_VIDEO_HANDLES = common dso_local global i32 0, align 4
@cinTable = common dso_local global %struct.TYPE_5__* null, align 8
@FMV_EOF = common dso_local global i64 0, align 8
@cin = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@currentHandle = common dso_local global i64 0, align 8
@clc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CA_CINEMATIC = common dso_local global i64 0, align 8
@FMV_IDLE = common dso_local global i64 0, align 8
@FMV_PLAY = common dso_local global i64 0, align 8
@FMV_LOOPED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CIN_RunCinematic(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MAX_VIDEO_HANDLES, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FMV_EOF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %12, %8, %1
  %22 = load i64, i64* @FMV_EOF, align 8
  store i64 %22, i64* %2, align 8
  br label %235

23:                                               ; preds = %12
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* @currentHandle, align 8
  %30 = load i64, i64* @currentHandle, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 4
  %32 = load i64, i64* @FMV_EOF, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %34 = load i64, i64* @currentHandle, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i64 %32, i64* %36, align 8
  %37 = call i32 (...) @RoQReset()
  br label %38

38:                                               ; preds = %27, %23
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, -1
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %2, align 8
  br label %235

53:                                               ; preds = %38
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* @currentHandle, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %57 = load i64, i64* @currentHandle, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %53
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %64 = load i64, i64* @CA_CINEMATIC, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %68 = load i64, i64* @currentHandle, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %2, align 8
  br label %235

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %53
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %75 = load i64, i64* @currentHandle, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FMV_IDLE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %83 = load i64, i64* @currentHandle, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %2, align 8
  br label %235

87:                                               ; preds = %73
  %88 = call i32 (...) @CL_ScaledMilliseconds()
  store i32 %88, i32* %5, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %90 = load i64, i64* @currentHandle, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %87
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %98 = load i64, i64* @currentHandle, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %96, %101
  %103 = call i32 @abs(i32 %102) #3
  %104 = icmp sgt i32 %103, 100
  br i1 %104, label %105, label %119

105:                                              ; preds = %95
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %108 = load i64, i64* @currentHandle, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %106, %111
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %114 = load i64, i64* @currentHandle, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, %112
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %105, %95, %87
  %120 = call i32 (...) @CL_ScaledMilliseconds()
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %122 = load i64, i64* @currentHandle, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %120, %125
  %127 = mul nsw i32 %126, 3
  %128 = sdiv i32 %127, 100
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %130 = load i64, i64* @currentHandle, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 4
  store i32 %128, i32* %132, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %134 = load i64, i64* @currentHandle, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %188, %119
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %140 = load i64, i64* @currentHandle, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %145 = load i64, i64* @currentHandle, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %143, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %138
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %152 = load i64, i64* @currentHandle, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @FMV_PLAY, align 8
  %157 = icmp eq i64 %155, %156
  br label %158

158:                                              ; preds = %150, %138
  %159 = phi i1 [ false, %138 ], [ %157, %150 ]
  br i1 %159, label %160, label %189

160:                                              ; preds = %158
  %161 = call i32 (...) @RoQInterrupt()
  %162 = load i32, i32* %4, align 4
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %164 = load i64, i64* @currentHandle, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %162, %167
  br i1 %168, label %169, label %188

169:                                              ; preds = %160
  %170 = call i32 (...) @CL_ScaledMilliseconds()
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %172 = load i64, i64* @currentHandle, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = sub nsw i32 %170, %175
  %177 = mul nsw i32 %176, 3
  %178 = sdiv i32 %177, 100
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %180 = load i64, i64* @currentHandle, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 4
  store i32 %178, i32* %182, align 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %184 = load i64, i64* @currentHandle, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %169, %160
  br label %138

189:                                              ; preds = %158
  %190 = load i32, i32* %5, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %192 = load i64, i64* @currentHandle, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  store i32 %190, i32* %194, align 4
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %196 = load i64, i64* @currentHandle, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @FMV_LOOPED, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %189
  %203 = load i64, i64* @FMV_PLAY, align 8
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %205 = load i64, i64* @currentHandle, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  store i64 %203, i64* %207, align 8
  br label %208

208:                                              ; preds = %202, %189
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %210 = load i64, i64* @currentHandle, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @FMV_EOF, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %229

216:                                              ; preds = %208
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %218 = load i64, i64* @currentHandle, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 6
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %216
  %224 = call i32 (...) @RoQReset()
  br label %228

225:                                              ; preds = %216
  %226 = call i32 (...) @RoQShutdown()
  %227 = load i64, i64* @FMV_EOF, align 8
  store i64 %227, i64* %2, align 8
  br label %235

228:                                              ; preds = %223
  br label %229

229:                                              ; preds = %228, %208
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %231 = load i64, i64* @currentHandle, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %2, align 8
  br label %235

235:                                              ; preds = %229, %225, %81, %66, %46, %21
  %236 = load i64, i64* %2, align 8
  ret i64 %236
}

declare dso_local i32 @RoQReset(...) #1

declare dso_local i32 @CL_ScaledMilliseconds(...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @RoQInterrupt(...) #1

declare dso_local i32 @RoQShutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
