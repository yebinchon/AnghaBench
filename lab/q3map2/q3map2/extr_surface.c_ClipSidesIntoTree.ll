; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_ClipSidesIntoTree.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_ClipSidesIntoTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32, i32*, i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, i64, i64 }
%struct.TYPE_14__ = type { i32 }

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"--- ClipSidesIntoTree ---\0A\00", align 1
@C_NODRAW = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@C_FOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClipSidesIntoTree(%struct.TYPE_17__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = call i32 @CullSides(%struct.TYPE_17__* %11)
  %13 = load i32, i32* @SYS_VRB, align 4
  %14 = call i32 @Sys_FPrintf(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %5, align 8
  br label %18

18:                                               ; preds = %138, %2
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = icmp ne %struct.TYPE_18__* %19, null
  br i1 %20, label %21, label %142

21:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %134, %21
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %137

28:                                               ; preds = %22
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i64 %33
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %8, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %134

40:                                               ; preds = %28
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32* @CopyWinding(i32* %43)
  store i32* %44, i32** %7, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ClipSideIntoTree_r(i32* %47, %struct.TYPE_15__* %48, i32 %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %7, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  br label %134

59:                                               ; preds = %40
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %10, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %64 = icmp eq %struct.TYPE_16__* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %134

66:                                               ; preds = %59
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @C_NODRAW, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @qfalse, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @C_FOG, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %134

87:                                               ; preds = %79, %73, %66
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92, %87
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  store i32* %100, i32** %7, align 8
  br label %101

101:                                              ; preds = %97, %92
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @DrawSurfaceForSide(%struct.TYPE_17__* %102, %struct.TYPE_18__* %103, %struct.TYPE_15__* %104, i32* %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @C_FOG, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %101
  br label %134

114:                                              ; preds = %101
  %115 = load i32*, i32** %7, align 8
  %116 = call i32* @ReverseWinding(i32* %115)
  store i32* %116, i32** %7, align 8
  %117 = call %struct.TYPE_15__* @safe_malloc(i32 32)
  store %struct.TYPE_15__* %117, %struct.TYPE_15__** %9, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %120 = bitcast %struct.TYPE_15__* %118 to i8*
  %121 = bitcast %struct.TYPE_15__* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 32, i1 false)
  %122 = load i32*, i32** %7, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  store i32* %122, i32** %124, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = xor i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @DrawSurfaceForSide(%struct.TYPE_17__* %129, %struct.TYPE_18__* %130, %struct.TYPE_15__* %131, i32* %132)
  br label %134

134:                                              ; preds = %114, %113, %86, %65, %58, %39
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %22

137:                                              ; preds = %22
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %140, align 8
  store %struct.TYPE_18__* %141, %struct.TYPE_18__** %5, align 8
  br label %18

142:                                              ; preds = %18
  ret void
}

declare dso_local i32 @CullSides(%struct.TYPE_17__*) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*) #1

declare dso_local i32* @CopyWinding(i32*) #1

declare dso_local i32 @ClipSideIntoTree_r(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @DrawSurfaceForSide(%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32* @ReverseWinding(i32*) #1

declare dso_local %struct.TYPE_15__* @safe_malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
