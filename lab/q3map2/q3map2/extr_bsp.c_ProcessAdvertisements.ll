; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bsp.c_ProcessAdvertisements.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bsp.c_ProcessAdvertisements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"--- ProcessAdvertisements ---\0A\00", align 1
@numEntities = common dso_local global i32 0, align 4
@entities = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"advertisement\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@MAX_QPATH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"Model Key for entity exceeds ad struct string length.\00", align 1
@numBSPAds = common dso_local global i64 0, align 8
@MAX_MAP_ADVERTISEMENTS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"cellId\00", align 1
@bspAds = common dso_local global %struct.TYPE_10__* null, align 8
@bspModels = common dso_local global %struct.TYPE_7__* null, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"Ad cell id %d has more than one surface.\00", align 1
@bspDrawSurfaces = common dso_local global %struct.TYPE_8__* null, align 8
@bspDrawVerts = common dso_local global %struct.TYPE_9__* null, align 8
@MST_PATCH = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [47 x i8] c"Ad cell %d has an unsupported Ad Surface type.\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Maximum number of map advertisements exceeded.\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"%9d in-game advertisements\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ProcessAdvertisements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProcessAdvertisements() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @SYS_VRB, align 4
  %12 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %213, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @numEntities, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %216

17:                                               ; preds = %13
  %18 = load i32*, i32** @entities, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i8* @ValueForKey(i32* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %2, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @Q_stricmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %212, label %26

26:                                               ; preds = %17
  %27 = load i32*, i32** @entities, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i8* @ValueForKey(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %31, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = load i32, i32* @MAX_QPATH, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %211

39:                                               ; preds = %26
  %40 = load i64, i64* @numBSPAds, align 8
  %41 = load i64, i64* @MAX_MAP_ADVERTISEMENTS, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %208

43:                                               ; preds = %39
  %44 = load i32*, i32** @entities, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @IntForKey(i32* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspAds, align 8
  %50 = load i64, i64* @numBSPAds, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspAds, align 8
  %54 = load i64, i64* @numBSPAds, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @strncpy(i32 %57, i8* %58, i32 4)
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %3, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @atoi(i8* %62)
  store i32 %63, i32* %4, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bspModels, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %5, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %79

72:                                               ; preds = %43
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspAds, align 8
  %74 = load i64, i64* @numBSPAds, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %72, %43
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bspDrawSurfaces, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %83
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %6, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bspDrawVerts, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspAds, align 8
  %93 = load i64, i64* @numBSPAds, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @VectorCopy(i32 %91, i32 %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MST_PATCH, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %198

103:                                              ; preds = %79
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = add i64 %106, %110
  %112 = sub i64 %111, 1
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %7, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = add i64 %116, %120
  %122 = sub i64 %121, 1
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %8, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 %126, %130
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = sub i64 %131, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %9, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %10, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bspDrawVerts, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspAds, align 8
  %149 = load i64, i64* @numBSPAds, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @VectorCopy(i32 %147, i32 %154)
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bspDrawVerts, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspAds, align 8
  %163 = load i64, i64* @numBSPAds, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @VectorCopy(i32 %161, i32 %168)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bspDrawVerts, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspAds, align 8
  %177 = load i64, i64* @numBSPAds, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @VectorCopy(i32 %175, i32 %182)
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bspDrawVerts, align 8
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspAds, align 8
  %191 = load i64, i64* @numBSPAds, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @VectorCopy(i32 %189, i32 %196)
  br label %205

198:                                              ; preds = %79
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspAds, align 8
  %200 = load i64, i64* @numBSPAds, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %198, %103
  %206 = load i64, i64* @numBSPAds, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* @numBSPAds, align 8
  br label %210

208:                                              ; preds = %39
  %209 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %210

210:                                              ; preds = %208, %205
  br label %211

211:                                              ; preds = %210, %37
  br label %212

212:                                              ; preds = %211, %17
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %1, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %1, align 4
  br label %13

216:                                              ; preds = %13
  %217 = load i32, i32* @SYS_VRB, align 4
  %218 = load i64, i64* @numBSPAds, align 8
  %219 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %217, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i64 %218)
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i8* @ValueForKey(i32*, i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i32 @IntForKey(i32*, i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
