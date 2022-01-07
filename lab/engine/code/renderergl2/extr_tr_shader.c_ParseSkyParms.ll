; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_ParseSkyParms.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_ParseSkyParms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i8**, i8** }
%struct.TYPE_6__ = type { i8* }

@ParseSkyParms.suf = internal global [6 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"bk\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"lf\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ft\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"dn\00", align 1
@MAX_QPATH = common dso_local global i32 0, align 4
@IMGFLAG_MIPMAP = common dso_local global i32 0, align 4
@IMGFLAG_PICMIP = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"WARNING: 'skyParms' missing parameter in shader '%s'\0A\00", align 1
@shader = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%s_%s.tga\00", align 1
@IMGTYPE_COLORALPHA = common dso_local global i32 0, align 4
@IMGFLAG_CLAMPTOEDGE = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @ParseSkyParms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseSkyParms(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %9 = load i32, i32* @MAX_QPATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @IMGFLAG_MIPMAP, align 4
  %14 = load i32, i32* @IMGFLAG_PICMIP, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i8**, i8*** %2, align 8
  %17 = load i32, i32* @qfalse, align 4
  %18 = call i8* @COM_ParseExt(i8** %16, i32 %17)
  store i8* %18, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %26 = load i32, i32* @PRINT_WARNING, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 2), align 8
  %28 = call i32 %25(i32 %26, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %27)
  store i32 1, i32* %8, align 4
  br label %149

29:                                               ; preds = %1
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %67, %33
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 6
  br i1 %36, label %37, label %70

37:                                               ; preds = %34
  %38 = trunc i64 %10 to i32
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [6 x i8*], [6 x i8*]* @ParseSkyParms.suf, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @Com_sprintf(i8* %12, i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %39, i8* %43)
  %45 = load i32, i32* @IMGTYPE_COLORALPHA, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @IMGFLAG_CLAMPTOEDGE, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @R_FindImageFile(i8* %12, i32 %45, i32 %48)
  %50 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 2), align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* %49, i8** %53, align 8
  %54 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 2), align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %37
  %61 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  %62 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 2), align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %61, i8** %65, align 8
  br label %66

66:                                               ; preds = %60, %37
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %34

70:                                               ; preds = %34
  br label %71

71:                                               ; preds = %70, %29
  %72 = load i8**, i8*** %2, align 8
  %73 = load i32, i32* @qfalse, align 4
  %74 = call i8* @COM_ParseExt(i8** %72, i32 %73)
  store i8* %74, i8** %3, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %82 = load i32, i32* @PRINT_WARNING, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 2), align 8
  %84 = call i32 %81(i32 %82, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %83)
  store i32 1, i32* %8, align 4
  br label %149

85:                                               ; preds = %71
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 @atof(i8* %86)
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 0), align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 0), align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  store i32 512, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 0), align 8
  br label %91

91:                                               ; preds = %90, %85
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 0), align 8
  %93 = call i32 @R_InitSkyTexCoords(i32 %92)
  %94 = load i8**, i8*** %2, align 8
  %95 = load i32, i32* @qfalse, align 4
  %96 = call i8* @COM_ParseExt(i8** %94, i32 %95)
  store i8* %96, i8** %3, align 8
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %104 = load i32, i32* @PRINT_WARNING, align 4
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 2), align 8
  %106 = call i32 %103(i32 %104, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  store i32 1, i32* %8, align 4
  br label %149

107:                                              ; preds = %91
  %108 = load i8*, i8** %3, align 8
  %109 = call i64 @strcmp(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %147

111:                                              ; preds = %107
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %143, %111
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %113, 6
  br i1 %114, label %115, label %146

115:                                              ; preds = %112
  %116 = trunc i64 %10 to i32
  %117 = load i8*, i8** %3, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [6 x i8*], [6 x i8*]* @ParseSkyParms.suf, i64 0, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @Com_sprintf(i8* %12, i32 %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %117, i8* %121)
  %123 = load i32, i32* @IMGTYPE_COLORALPHA, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i8* @R_FindImageFile(i8* %12, i32 %123, i32 %124)
  %126 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 1), align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8* %125, i8** %129, align 8
  %130 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 1), align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %142, label %136

136:                                              ; preds = %115
  %137 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  %138 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 1), align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  store i8* %137, i8** %141, align 8
  br label %142

142:                                              ; preds = %136, %115
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %112

146:                                              ; preds = %112
  br label %147

147:                                              ; preds = %146, %107
  %148 = load i32, i32* @qtrue, align 4
  store i32 %148, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 0), align 8
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %147, %102, %80, %24
  %150 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %8, align 4
  switch i32 %151, label %153 [
    i32 0, label %152
    i32 1, label %152
  ]

152:                                              ; preds = %149, %149
  ret void

153:                                              ; preds = %149
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @COM_ParseExt(i8**, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @R_FindImageFile(i8*, i32, i32) #2

declare dso_local i32 @atof(i8*) #2

declare dso_local i32 @R_InitSkyTexCoords(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
