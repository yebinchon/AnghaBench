; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_GeneratePatchCollide.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_GeneratePatchCollide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patchCollide_s = type { i32** }
%struct.TYPE_7__ = type { i32, i32, i32**, i8*, i8* }

@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"CM_GeneratePatchFacets: bad parameters: (%i, %i, %p)\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"CM_GeneratePatchFacets: even sizes are invalid for quadratic meshes\00", align 1
@MAX_GRID_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"CM_GeneratePatchFacets: source is > MAX_GRID_SIZE\00", align 1
@qfalse = common dso_local global i8* null, align 8
@h_high = common dso_local global i32 0, align 4
@c_totalPatchBlocks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.patchCollide_s* @CM_GeneratePatchCollide(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.patchCollide_s*, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %11, 2
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 2
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %16, %13, %3
  %20 = load i32, i32* @ERR_DROP, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = call i32 (i32, i8*, ...) @Com_Error(i32 %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i8* %24)
  br label %26

26:                                               ; preds = %19, %16
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* @ERR_DROP, align 4
  %36 = call i32 (i32, i8*, ...) @Com_Error(i32 %35, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @MAX_GRID_SIZE, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @MAX_GRID_SIZE, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %37
  %46 = load i32, i32* @ERR_DROP, align 4
  %47 = call i32 (i32, i8*, ...) @Com_Error(i32 %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* %4, align 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i8*, i8** @qfalse, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** @qfalse, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  store i8* %55, i8** %56, align 8
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %91, %48
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %94

61:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %87, %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %62
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %4, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %67, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @VectorCopy(i32 %75, i32 %85)
  br label %87

87:                                               ; preds = %66
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %62

90:                                               ; preds = %62
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %57

94:                                               ; preds = %57
  %95 = call i32 @CM_SetGridWrapWidth(%struct.TYPE_7__* %8)
  %96 = call i32 @CM_SubdivideGridColumns(%struct.TYPE_7__* %8)
  %97 = call i32 @CM_RemoveDegenerateColumns(%struct.TYPE_7__* %8)
  %98 = call i32 @CM_TransposeGrid(%struct.TYPE_7__* %8)
  %99 = call i32 @CM_SetGridWrapWidth(%struct.TYPE_7__* %8)
  %100 = call i32 @CM_SubdivideGridColumns(%struct.TYPE_7__* %8)
  %101 = call i32 @CM_RemoveDegenerateColumns(%struct.TYPE_7__* %8)
  %102 = load i32, i32* @h_high, align 4
  %103 = call %struct.patchCollide_s* @Hunk_Alloc(i32 8, i32 %102)
  store %struct.patchCollide_s* %103, %struct.patchCollide_s** %7, align 8
  %104 = load %struct.patchCollide_s*, %struct.patchCollide_s** %7, align 8
  %105 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 0
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.patchCollide_s*, %struct.patchCollide_s** %7, align 8
  %110 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %109, i32 0, i32 0
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @ClearBounds(i32* %108, i32* %113)
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %152, %94
  %116 = load i32, i32* %9, align 4
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %155

120:                                              ; preds = %115
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %148, %120
  %122 = load i32, i32* %10, align 4
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %151

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.patchCollide_s*, %struct.patchCollide_s** %7, align 8
  %138 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %137, i32 0, i32 0
  %139 = load i32**, i32*** %138, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 0
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.patchCollide_s*, %struct.patchCollide_s** %7, align 8
  %143 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %142, i32 0, i32 0
  %144 = load i32**, i32*** %143, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i64 1
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @AddPointToBounds(i32 %136, i32* %141, i32* %146)
  br label %148

148:                                              ; preds = %126
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %121

151:                                              ; preds = %121
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %115

155:                                              ; preds = %115
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, 1
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, 1
  %162 = mul nsw i32 %158, %161
  %163 = load i32, i32* @c_totalPatchBlocks, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* @c_totalPatchBlocks, align 4
  %165 = load %struct.patchCollide_s*, %struct.patchCollide_s** %7, align 8
  %166 = call i32 @CM_PatchCollideFromGrid(%struct.TYPE_7__* %8, %struct.patchCollide_s* %165)
  %167 = load %struct.patchCollide_s*, %struct.patchCollide_s** %7, align 8
  %168 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %167, i32 0, i32 0
  %169 = load i32**, i32*** %168, align 8
  %170 = getelementptr inbounds i32*, i32** %169, i64 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  %175 = load %struct.patchCollide_s*, %struct.patchCollide_s** %7, align 8
  %176 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %175, i32 0, i32 0
  %177 = load i32**, i32*** %176, align 8
  %178 = getelementptr inbounds i32*, i32** %177, i64 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = load %struct.patchCollide_s*, %struct.patchCollide_s** %7, align 8
  %184 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %183, i32 0, i32 0
  %185 = load i32**, i32*** %184, align 8
  %186 = getelementptr inbounds i32*, i32** %185, i64 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  %191 = load %struct.patchCollide_s*, %struct.patchCollide_s** %7, align 8
  %192 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %191, i32 0, i32 0
  %193 = load i32**, i32*** %192, align 8
  %194 = getelementptr inbounds i32*, i32** %193, i64 1
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  %199 = load %struct.patchCollide_s*, %struct.patchCollide_s** %7, align 8
  %200 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %199, i32 0, i32 0
  %201 = load i32**, i32*** %200, align 8
  %202 = getelementptr inbounds i32*, i32** %201, i64 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  %207 = load %struct.patchCollide_s*, %struct.patchCollide_s** %7, align 8
  %208 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %207, i32 0, i32 0
  %209 = load i32**, i32*** %208, align 8
  %210 = getelementptr inbounds i32*, i32** %209, i64 1
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 2
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 4
  %215 = load %struct.patchCollide_s*, %struct.patchCollide_s** %7, align 8
  ret %struct.patchCollide_s* %215
}

declare dso_local i32 @Com_Error(i32, i8*, ...) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @CM_SetGridWrapWidth(%struct.TYPE_7__*) #1

declare dso_local i32 @CM_SubdivideGridColumns(%struct.TYPE_7__*) #1

declare dso_local i32 @CM_RemoveDegenerateColumns(%struct.TYPE_7__*) #1

declare dso_local i32 @CM_TransposeGrid(%struct.TYPE_7__*) #1

declare dso_local %struct.patchCollide_s* @Hunk_Alloc(i32, i32) #1

declare dso_local i32 @ClearBounds(i32*, i32*) #1

declare dso_local i32 @AddPointToBounds(i32, i32*, i32*) #1

declare dso_local i32 @CM_PatchCollideFromGrid(%struct.TYPE_7__*, %struct.patchCollide_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
