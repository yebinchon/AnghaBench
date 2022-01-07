; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_CIN_UploadCinematic.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_CIN_UploadCinematic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i8*, i32* }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32, i32*, i32, i8*)* }
%struct.TYPE_5__ = type { i64 }

@MAX_VIDEO_HANDLES = common dso_local global i32 0, align 4
@cinTable = common dso_local global %struct.TYPE_6__* null, align 8
@qfalse = common dso_local global i8* null, align 8
@re = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@qtrue = common dso_local global i8* null, align 8
@cl_inGameVideo = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CIN_UploadCinematic(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %226

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @MAX_VIDEO_HANDLES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %226

10:                                               ; preds = %6
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  br label %226

19:                                               ; preds = %10
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %19
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 5
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %72

35:                                               ; preds = %27
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  br label %71

49:                                               ; preds = %35
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 -2, i32* %62, align 8
  br label %70

63:                                               ; preds = %49
  %64 = load i8*, i8** @qfalse, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 5
  store i8* %64, i8** %69, align 8
  br label %70

70:                                               ; preds = %63, %57
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71, %27, %19
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %138

80:                                               ; preds = %72
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %86, %92
  br i1 %93, label %108, label %94

94:                                               ; preds = %80
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %102 = load i32, i32* %2, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %100, %106
  br i1 %107, label %108, label %138

108:                                              ; preds = %94, %80
  %109 = call i32* @Hunk_AllocateTempMemory(i32 262144)
  store i32* %109, i32** %3, align 8
  %110 = load i32, i32* %2, align 4
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @CIN_ResampleCinematic(i32 %110, i32* %111)
  %113 = load i32 (i32, i32, i32, i32, i32*, i32, i8*)*, i32 (i32, i32, i32, i32, i32*, i32, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @re, i32 0, i32 0), align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %121 = load i32, i32* %2, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %3, align 8
  %127 = load i32, i32* %2, align 4
  %128 = load i8*, i8** @qtrue, align 8
  %129 = call i32 %113(i32 %119, i32 %125, i32 256, i32 256, i32* %126, i32 %127, i8* %128)
  %130 = load i8*, i8** @qfalse, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %132 = load i32, i32* %2, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 5
  store i8* %130, i8** %135, align 8
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @Hunk_FreeTempMemory(i32* %136)
  br label %184

138:                                              ; preds = %94, %72
  %139 = load i32 (i32, i32, i32, i32, i32*, i32, i8*)*, i32 (i32, i32, i32, i32, i32*, i32, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @re, i32 0, i32 0), align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %141 = load i32, i32* %2, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %147 = load i32, i32* %2, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %153 = load i32, i32* %2, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %159 = load i32, i32* %2, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %165 = load i32, i32* %2, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 6
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %2, align 4
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 5
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 %139(i32 %145, i32 %151, i32 %157, i32 %163, i32* %169, i32 %170, i8* %176)
  %178 = load i8*, i8** @qfalse, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %180 = load i32, i32* %2, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 5
  store i8* %178, i8** %183, align 8
  br label %184

184:                                              ; preds = %138, %108
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cl_inGameVideo, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %205

189:                                              ; preds = %184
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %191 = load i32, i32* %2, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %205

197:                                              ; preds = %189
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %199 = load i32, i32* %2, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %202, align 8
  br label %225

205:                                              ; preds = %189, %184
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cl_inGameVideo, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %205
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %212 = load i32, i32* %2, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 1
  br i1 %217, label %218, label %224

218:                                              ; preds = %210
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %220 = load i32, i32* %2, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  store i32 1, i32* %223, align 8
  br label %224

224:                                              ; preds = %218, %210, %205
  br label %225

225:                                              ; preds = %224, %197
  br label %226

226:                                              ; preds = %18, %225, %6, %1
  ret void
}

declare dso_local i32* @Hunk_AllocateTempMemory(i32) #1

declare dso_local i32 @CIN_ResampleCinematic(i32, i32*) #1

declare dso_local i32 @Hunk_FreeTempMemory(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
