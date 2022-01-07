; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map.c_LoadMapFromBSP.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map.c_LoadMapFromBSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quakefile_s = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@QL_BSP_IDENT = common dso_local global i32 0, align 4
@QL_BSP_VERSION = common dso_local global i64 0, align 8
@QF_BSP_IDENT = common dso_local global i32 0, align 4
@QF_BSP_VERSION = common dso_local global i64 0, align 8
@Q3_BSP_IDENT = common dso_local global i32 0, align 4
@Q3_BSP_VERSION = common dso_local global i64 0, align 8
@Q2_BSPHEADER = common dso_local global i32 0, align 4
@Q2_BSPVERSION = common dso_local global i64 0, align 8
@SIN_BSPHEADER = common dso_local global i32 0, align 4
@SIN_BSPVERSION = common dso_local global i64 0, align 8
@SINGAME_BSPHEADER = common dso_local global i32 0, align 4
@SINGAME_BSPVERSION = common dso_local global i64 0, align 8
@Q1_BSPVERSION = common dso_local global i32 0, align 4
@HL_BSPVERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unknown BSP format %c%c%c%c, version %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadMapFromBSP(%struct.quakefile_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.quakefile_s*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  store %struct.quakefile_s* %0, %struct.quakefile_s** %3, align 8
  %5 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %6 = call i32 @ReadQuakeFile(%struct.quakefile_s* %5, %struct.TYPE_3__* %4, i32 0, i32 8)
  %7 = sext i32 %6 to i64
  %8 = icmp ne i64 %7, 8
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %194

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @LittleLong(i32 %12)
  %14 = ptrtoint i8* %13 to i32
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @LittleLong(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @QL_BSP_IDENT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @QL_BSP_VERSION, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = call i32 (...) @ResetMapLoading()
  %33 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %34 = call i32 @Q3_LoadMapFromBSP(%struct.quakefile_s* %33)
  %35 = call i32 (...) @Q3_FreeMaxBSP()
  br label %193

36:                                               ; preds = %25, %10
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @QF_BSP_IDENT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @QF_BSP_VERSION, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = call i32 (...) @ResetMapLoading()
  %49 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %50 = call i32 @Q3_LoadMapFromBSP(%struct.quakefile_s* %49)
  %51 = call i32 (...) @Q3_FreeMaxBSP()
  br label %192

52:                                               ; preds = %41, %36
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @Q3_BSP_IDENT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @Q3_BSP_VERSION, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = call i32 (...) @ResetMapLoading()
  %65 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %66 = call i32 @Q3_LoadMapFromBSP(%struct.quakefile_s* %65)
  %67 = call i32 (...) @Q3_FreeMaxBSP()
  br label %191

68:                                               ; preds = %57, %52
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @Q2_BSPHEADER, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @Q2_BSPVERSION, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = call i32 (...) @ResetMapLoading()
  %81 = call i32 (...) @Q2_AllocMaxBSP()
  %82 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %83 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %86 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %89 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @Q2_LoadMapFromBSP(i32 %84, i32 %87, i32 %90)
  %92 = call i32 (...) @Q2_FreeMaxBSP()
  br label %190

93:                                               ; preds = %73, %68
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SIN_BSPHEADER, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @SIN_BSPVERSION, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %115, label %104

104:                                              ; preds = %98, %93
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SINGAME_BSPHEADER, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* @SINGAME_BSPVERSION, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %109, %98
  %116 = call i32 (...) @ResetMapLoading()
  %117 = call i32 (...) @Sin_AllocMaxBSP()
  %118 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %119 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %122 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %125 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @Sin_LoadMapFromBSP(i32 %120, i32 %123, i32 %126)
  %128 = call i32 (...) @Sin_FreeMaxBSP()
  br label %189

129:                                              ; preds = %109, %104
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @Q1_BSPVERSION, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %129
  %135 = call i32 (...) @ResetMapLoading()
  %136 = call i32 (...) @Q1_AllocMaxBSP()
  %137 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %138 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %141 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %144 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @Q1_LoadMapFromBSP(i32 %139, i32 %142, i32 %145)
  %147 = call i32 (...) @Q1_FreeMaxBSP()
  br label %188

148:                                              ; preds = %129
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @HL_BSPVERSION, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %148
  %154 = call i32 (...) @ResetMapLoading()
  %155 = call i32 (...) @HL_AllocMaxBSP()
  %156 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %157 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %160 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.quakefile_s*, %struct.quakefile_s** %3, align 8
  %163 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @HL_LoadMapFromBSP(i32 %158, i32 %161, i32 %164)
  %166 = call i32 (...) @HL_FreeMaxBSP()
  br label %187

167:                                              ; preds = %148
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 255
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 8
  %174 = and i32 %173, 255
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = ashr i32 %176, 16
  %178 = and i32 %177, 255
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = ashr i32 %180, 24
  %182 = and i32 %181, 255
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = call i32 @Error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %170, i32 %174, i32 %178, i32 %182, i64 %185)
  store i32 0, i32* %2, align 4
  br label %194

187:                                              ; preds = %153
  br label %188

188:                                              ; preds = %187, %134
  br label %189

189:                                              ; preds = %188, %115
  br label %190

190:                                              ; preds = %189, %79
  br label %191

191:                                              ; preds = %190, %63
  br label %192

192:                                              ; preds = %191, %47
  br label %193

193:                                              ; preds = %192, %31
  store i32 1, i32* %2, align 4
  br label %194

194:                                              ; preds = %193, %167, %9
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @ReadQuakeFile(%struct.quakefile_s*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i8* @LittleLong(i32) #1

declare dso_local i32 @ResetMapLoading(...) #1

declare dso_local i32 @Q3_LoadMapFromBSP(%struct.quakefile_s*) #1

declare dso_local i32 @Q3_FreeMaxBSP(...) #1

declare dso_local i32 @Q2_AllocMaxBSP(...) #1

declare dso_local i32 @Q2_LoadMapFromBSP(i32, i32, i32) #1

declare dso_local i32 @Q2_FreeMaxBSP(...) #1

declare dso_local i32 @Sin_AllocMaxBSP(...) #1

declare dso_local i32 @Sin_LoadMapFromBSP(i32, i32, i32) #1

declare dso_local i32 @Sin_FreeMaxBSP(...) #1

declare dso_local i32 @Q1_AllocMaxBSP(...) #1

declare dso_local i32 @Q1_LoadMapFromBSP(i32, i32, i32) #1

declare dso_local i32 @Q1_FreeMaxBSP(...) #1

declare dso_local i32 @HL_AllocMaxBSP(...) #1

declare dso_local i32 @HL_LoadMapFromBSP(i32, i32, i32) #1

declare dso_local i32 @HL_FreeMaxBSP(...) #1

declare dso_local i32 @Error(i8*, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
