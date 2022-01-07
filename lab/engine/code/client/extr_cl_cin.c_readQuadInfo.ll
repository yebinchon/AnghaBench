; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_readQuadInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_readQuadInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@currentHandle = common dso_local global i64 0, align 8
@cinTable = common dso_local global %struct.TYPE_6__* null, align 8
@qfalse = common dso_local global i8* null, align 8
@cls = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GLHW_RAGEPRO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"HACK: approxmimating cinematic for Rage Pro or Voodoo\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @readQuadInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readQuadInfo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* @currentHandle, align 8
  %4 = icmp ult i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %219

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 256
  %14 = add nsw i32 %9, %13
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %16 = load i64, i64* @currentHandle, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 256
  %26 = add nsw i32 %21, %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %28 = load i64, i64* @currentHandle, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 256
  %38 = add nsw i32 %33, %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %40 = load i64, i64* @currentHandle, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32 %38, i32* %42, align 8
  %43 = load i32*, i32** %2, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 6
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 7
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 256
  %50 = add nsw i32 %45, %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %52 = load i64, i64* @currentHandle, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %56 = load i64, i64* @currentHandle, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %61 = load i64, i64* @currentHandle, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  store i32 %59, i32* %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %65 = load i64, i64* @currentHandle, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %70 = load i64, i64* @currentHandle, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 5
  store i32 %68, i32* %72, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %74 = load i64, i64* @currentHandle, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %79 = load i64, i64* @currentHandle, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %77, %82
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %85 = load i64, i64* @currentHandle, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 6
  store i32 %83, i32* %87, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %89 = load i64, i64* @currentHandle, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %94 = load i64, i64* @currentHandle, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %92, %97
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %100 = load i64, i64* @currentHandle, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 8
  store i32 %98, i32* %102, align 8
  %103 = load i8*, i8** @qfalse, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %105 = load i64, i64* @currentHandle, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 17
  store i8* %103, i8** %107, align 8
  %108 = load i8*, i8** @qfalse, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %110 = load i64, i64* @currentHandle, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 16
  store i8* %108, i8** %112, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %114 = load i64, i64* @currentHandle, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 14
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %119 = load i64, i64* @currentHandle, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 15
  store i32 %117, i32* %121, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %123 = load i64, i64* @currentHandle, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 12
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %128 = load i64, i64* @currentHandle, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 13
  store i32 %126, i32* %130, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %132 = load i64, i64* @currentHandle, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %137 = load i64, i64* @currentHandle, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 9
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 %135, i32* %141, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %143 = load i64, i64* @currentHandle, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 0, %146
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %149 = load i64, i64* @currentHandle, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 9
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  store i32 %147, i32* %153, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %155 = load i64, i64* @currentHandle, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %160 = load i64, i64* @currentHandle, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 10
  store i32 %158, i32* %162, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %164 = load i64, i64* @currentHandle, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %169 = load i64, i64* @currentHandle, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 11
  store i32 %167, i32* %171, align 4
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0, i32 0), align 8
  %173 = load i64, i64* @GLHW_RAGEPRO, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %178, label %175

175:                                              ; preds = %6
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0, i32 1), align 8
  %177 = icmp sle i32 %176, 256
  br i1 %177, label %178, label %219

178:                                              ; preds = %175, %6
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %180 = load i64, i64* @currentHandle, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 10
  %183 = load i32, i32* %182, align 8
  %184 = icmp sgt i32 %183, 256
  br i1 %184, label %185, label %190

185:                                              ; preds = %178
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %187 = load i64, i64* @currentHandle, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 10
  store i32 256, i32* %189, align 8
  br label %190

190:                                              ; preds = %185, %178
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %192 = load i64, i64* @currentHandle, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 11
  %195 = load i32, i32* %194, align 4
  %196 = icmp sgt i32 %195, 256
  br i1 %196, label %197, label %202

197:                                              ; preds = %190
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %199 = load i64, i64* @currentHandle, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 11
  store i32 256, i32* %201, align 4
  br label %202

202:                                              ; preds = %197, %190
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %204 = load i64, i64* @currentHandle, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 256
  br i1 %208, label %216, label %209

209:                                              ; preds = %202
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cinTable, align 8
  %211 = load i64, i64* @currentHandle, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 256
  br i1 %215, label %216, label %218

216:                                              ; preds = %209, %202
  %217 = call i32 @Com_Printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %209
  br label %219

219:                                              ; preds = %5, %218, %175
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
