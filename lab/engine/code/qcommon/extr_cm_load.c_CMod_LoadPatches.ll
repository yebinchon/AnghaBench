; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_load.c_CMod_LoadPatches.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_load.c_CMod_LoadPatches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_13__** }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }

@MAX_PATCH_VERTS = common dso_local global i32 0, align 4
@cmod_base = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MOD_LoadBmodel: funny lump size\00", align 1
@cm = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@h_high = common dso_local global i32 0, align 4
@MST_PATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ParseMesh: MAX_PATCH_VERTS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CMod_LoadPatches(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %18 = load i32, i32* @MAX_PATCH_VERTS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i32*, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i64, i64* @cmod_base, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %7, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = urem i64 %32, 20
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @ERR_DROP, align 4
  %37 = call i32 @Com_Error(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 20
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cm, i32 0, i32 0), align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cm, i32 0, i32 0), align 8
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @h_high, align 4
  %50 = call i8* @Hunk_Alloc(i32 %48, i32 %49)
  %51 = bitcast i8* %50 to %struct.TYPE_13__**
  store %struct.TYPE_13__** %51, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cm, i32 0, i32 2), align 8
  %52 = load i64, i64* @cmod_base, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = inttoptr i64 %56 to i8*
  %58 = bitcast i8* %57 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %5, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = urem i64 %62, 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %38
  %66 = load i32, i32* @ERR_DROP, align 4
  %67 = call i32 @Com_Error(i32 %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %38
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %183, %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %188

73:                                               ; preds = %69
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @LittleLong(i32 %76)
  %78 = load i32, i32* @MST_PATCH, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %183

81:                                               ; preds = %73
  %82 = load i32, i32* @h_high, align 4
  %83 = call i8* @Hunk_Alloc(i32 12, i32 %82)
  %84 = bitcast i8* %83 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %12, align 8
  %85 = load %struct.TYPE_13__**, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cm, i32 0, i32 2), align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %85, i64 %87
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @LittleLong(i32 %91)
  store i32 %92, i32* %15, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @LittleLong(i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = mul nsw i32 %97, %98
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @MAX_PATCH_VERTS, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %81
  %104 = load i32, i32* @ERR_DROP, align 4
  %105 = call i32 @Com_Error(i32 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %81
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @LittleLong(i32 %110)
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i64 %112
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %6, align 8
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %152, %106
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %157

118:                                              ; preds = %114
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @LittleFloat(i32 %123)
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %21, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %124, i32* %129, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @LittleFloat(i32 %134)
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %21, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 %135, i32* %140, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @LittleFloat(i32 %145)
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %21, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  store i32 %146, i32* %151, align 4
  br label %152

152:                                              ; preds = %118
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 1
  store %struct.TYPE_12__* %156, %struct.TYPE_12__** %6, align 8
  br label %114

157:                                              ; preds = %114
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @LittleLong(i32 %160)
  store i32 %161, i32* %17, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cm, i32 0, i32 1), align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cm, i32 0, i32 1), align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* %16, align 4
  %180 = call i32 @CM_GeneratePatchCollide(i32 %178, i32 %179, i32** %21)
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %157, %80
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 1
  store %struct.TYPE_11__* %187, %struct.TYPE_11__** %7, align 8
  br label %69

188:                                              ; preds = %69
  %189 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %189)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Error(i32, i8*) #2

declare dso_local i8* @Hunk_Alloc(i32, i32) #2

declare dso_local i32 @LittleLong(i32) #2

declare dso_local i32 @LittleFloat(i32) #2

declare dso_local i32 @CM_GeneratePatchCollide(i32, i32, i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
