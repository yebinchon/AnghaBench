; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bsp_analyze.c_AnalyzeBSPMain.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bsp_analyze.c_AnalyzeBSPMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_6__ = type { i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@qfalse = common dso_local global i64 0, align 8
@AnalyzeBSPMain.lumpTests = internal global [14 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 4, i32 6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 4, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 8, i32 6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 4, i32 6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 4, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 4, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 4, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 104, i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 44, i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 4, i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 49152, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 196608, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 786432, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 0, i32 0 }, %struct.TYPE_5__ zeroinitializer], align 16
@.str = private unnamed_addr constant [17 x i8] c"IBSP LUMP_PLANES\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"IBSP LUMP_BRUSHES\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"IBSP LUMP_BRUSHSIDES\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"RBSP LUMP_BRUSHSIDES\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"IBSP LUMP_MODELS\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"IBSP LUMP_NODES\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"IBSP LUMP_LEAFS\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"IBSP LUMP_DRAWSURFS\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"IBSP LUMP_DRAWVERTS\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"IBSP LUMP_DRAWINDEXES\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"IBSP LUMP_LIGHTMAPS\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"IBSP LUMP_LIGHTMAPS (256 x 256)\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"IBSP LUMP_LIGHTMAPS (512 x 512)\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Usage: q3map -analyze [-lumpswap] [-v] <mapname>\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"-lumpswap\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Swapped lump structs enabled\0A\00", align 1
@qtrue = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"Loading %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Unable to load %s.\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Identity:      %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Version:       %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"---------------------------------------\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Lump:          %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"Offset:        %d bytes\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Length:        %d bytes\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"As hex:        %08X\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"As int:        %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"As float:      %f\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"As string:     %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"Type guess:    IBSP LUMP_ENTITIES\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"textures/\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"Type guess:    IBSP LUMP_SHADERS\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"Type guess:    %s (%d x %d)\0A\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Lump count:    %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"File size:     %d bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AnalyzeBSPMain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [5 x i8], align 1
  %15 = alloca i8*, align 8
  %16 = alloca float, align 4
  %17 = alloca [1024 x i8], align 16
  %18 = alloca [1024 x i8], align 16
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = load i64, i64* @qfalse, align 8
  store i64 %21, i64* %19, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %249

26:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %27

27:                                               ; preds = %44, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  %42 = load i64, i64* @qtrue, align 8
  store i64 %42, i64* %19, align 8
  br label %43

43:                                               ; preds = %40, %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %27

47:                                               ; preds = %27
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @ExpandArg(i8* %53)
  %55 = call i32 @strcpy(i8* %48, i32 %54)
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %57 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* %56)
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %59 = bitcast %struct.TYPE_6__** %6 to i8**
  %60 = call i32 @LoadFile(i8* %58, i8** %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %47
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = icmp eq %struct.TYPE_6__* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63, %47
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %68 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* %67)
  store i32 -1, i32* %3, align 4
  br label %249

69:                                               ; preds = %63
  %70 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @memcpy(i8* %70, i8* %73, i32 4)
  %75 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 4
  store i8 0, i8* %75, align 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @LittleLong(i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %81 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 %82)
  %84 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %240, %69
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 100
  br i1 %87, label %88, label %243

88:                                               ; preds = %85
  %89 = load i64, i64* %19, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %88
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @LittleLong(i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @LittleLong(i32 %108)
  store i32 %109, i32* %11, align 4
  br label %129

110:                                              ; preds = %88
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @LittleLong(i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @LittleLong(i32 %127)
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %110, %91
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %131 = bitcast %struct.TYPE_6__* %130 to i32*
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = bitcast i32* %134 to i8*
  store i8* %135, i8** %15, align 8
  %136 = load i8*, i8** %15, align 8
  %137 = bitcast i8* %136 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @LittleLong(i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load i8*, i8** %15, align 8
  %141 = bitcast i8* %140 to float*
  %142 = load float, float* %141, align 4
  %143 = call float @LittleFloat(float %142)
  store float %143, float* %16, align 4
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %145 = load i8*, i8** %15, align 8
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %146, 1024
  br i1 %147, label %148, label %150

148:                                              ; preds = %129
  %149 = load i32, i32* %11, align 4
  br label %151

150:                                              ; preds = %129
  br label %151

151:                                              ; preds = %150, %148
  %152 = phi i32 [ %149, %148 ], [ 1024, %150 ]
  %153 = call i32 @memcpy(i8* %144, i8* %145, i32 %152)
  %154 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 1023
  store i8 0, i8* %154, align 1
  %155 = load i32, i32* %8, align 4
  %156 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %10, align 4
  %158 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %11, align 4
  %160 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %11, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %231

163:                                              ; preds = %151
  %164 = load i32, i32* %12, align 4
  %165 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %12, align 4
  %167 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 %166)
  %168 = load float, float* %16, align 4
  %169 = fpext float %168 to double
  %170 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), double %169)
  %171 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %172 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i8* %171)
  %173 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %174 = load i8, i8* %173, align 16
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 123
  br i1 %176, label %177, label %184

177:                                              ; preds = %163
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 2
  %179 = load i8, i8* %178, align 2
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 34
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0))
  br label %230

184:                                              ; preds = %177, %163
  %185 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %186 = call i64 @strstr(i8* %185, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i64 0, i64 0))
  br label %229

190:                                              ; preds = %184
  store %struct.TYPE_5__* getelementptr inbounds ([14 x %struct.TYPE_5__], [14 x %struct.TYPE_5__]* @AnalyzeBSPMain.lumpTests, i64 0, i64 0), %struct.TYPE_5__** %20, align 8
  br label %191

191:                                              ; preds = %225, %190
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %228

196:                                              ; preds = %191
  %197 = load i32, i32* %11, align 4
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = srem i32 %197, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  br label %225

204:                                              ; preds = %196
  %205 = load i32, i32* %11, align 4
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = sdiv i32 %205, %208
  store i32 %209, i32* %13, align 4
  %210 = load i32, i32* %13, align 4
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %204
  br label %225

216:                                              ; preds = %204
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %13, align 4
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), i32 %219, i32 %220, i32 %223)
  br label %225

225:                                              ; preds = %216, %215, %203
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 1
  store %struct.TYPE_5__* %227, %struct.TYPE_5__** %20, align 8
  br label %191

228:                                              ; preds = %191
  br label %229

229:                                              ; preds = %228, %188
  br label %230

230:                                              ; preds = %229, %182
  br label %231

231:                                              ; preds = %230, %151
  %232 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %233, %234
  %236 = load i32, i32* %7, align 4
  %237 = icmp sge i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  br label %243

239:                                              ; preds = %231
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %8, align 4
  br label %85

243:                                              ; preds = %238, %85
  %244 = load i32, i32* %8, align 4
  %245 = add nsw i32 %244, 1
  %246 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), i32 %245)
  %247 = load i32, i32* %7, align 4
  %248 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0), i32 %247)
  store i32 0, i32* %3, align 4
  br label %249

249:                                              ; preds = %243, %66, %24
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local i32 @Sys_Printf(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @ExpandArg(i8*) #1

declare dso_local i32 @LoadFile(i8*, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @LittleLong(i32) #1

declare dso_local float @LittleFloat(float) #1

declare dso_local i64 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
