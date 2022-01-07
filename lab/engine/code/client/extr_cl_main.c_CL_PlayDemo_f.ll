; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_PlayDemo_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_PlayDemo_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i64, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32 }

@MAX_OSPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"demo <demoname>\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"sv_killserver\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@qtrue = common dso_local global i8* null, align 8
@DEMOEXT = common dso_local global i8* null, align 8
@demo_protocols = common dso_local global i32* null, align 8
@com_protocol = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"demos/%s\00", align 1
@clc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Protocol %d not supported for demos\0A\00", align 1
@ERR_DROP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"couldn't open %s\00", align 1
@CA_CONNECTED = common dso_local global i64 0, align 8
@CA_PRIMED = common dso_local global i64 0, align 8
@qfalse = common dso_local global i8* null, align 8
@com_legacyprotocol = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_PlayDemo_f() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_OSPATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %1, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %2, align 8
  %14 = load i32, i32* @MAX_OSPATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %3, align 8
  %17 = load i32, i32* @MAX_OSPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %20 = call i32 (...) @Cmd_Argc()
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %141

24:                                               ; preds = %0
  %25 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i8* @Cmd_Argv(i32 1)
  %27 = trunc i64 %15 to i32
  %28 = call i32 @Q_strncpyz(i8* %16, i8* %26, i32 %27)
  %29 = load i8*, i8** @qtrue, align 8
  %30 = call i32 @CL_Disconnect(i8* %29)
  %31 = call i8* @strrchr(i8* %16, i8 signext 46)
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %111

34:                                               ; preds = %24
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8*, i8** @DEMOEXT, align 8
  %38 = load i8*, i8** @DEMOEXT, align 8
  %39 = call i32 @ARRAY_LEN(i8* %38)
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @Q_stricmpn(i8* %36, i8* %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %111, label %43

43:                                               ; preds = %34
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** @DEMOEXT, align 8
  %46 = call i32 @ARRAY_LEN(i8* %45)
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = call i32 @atoi(i8* %48)
  store i32 %49, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %67, %43
  %51 = load i32*, i32** @demo_protocols, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = load i32*, i32** @demo_protocols, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %70

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %50

70:                                               ; preds = %65, %50
  %71 = load i32*, i32** @demo_protocols, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_protocol, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %77, %70
  %84 = trunc i64 %11 to i32
  %85 = call i32 @Com_sprintf(i8* %13, i32 %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %16)
  %86 = load i8*, i8** @qtrue, align 8
  %87 = call i32 @FS_FOpenFileRead(i8* %13, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 6), i8* %86)
  br label %110

88:                                               ; preds = %77
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i8*, i8** %4, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = ptrtoint i8* %16 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @ARRAY_LEN(i8* %19)
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = call i32 @ARRAY_LEN(i8* %19)
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %99, %88
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  %105 = call i32 @Q_strncpyz(i8* %19, i8* %16, i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %19, i64 %107
  store i8 0, i8* %108, align 1
  %109 = call i32 @CL_WalkDemoExt(i8* %19, i8* %13, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 6))
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %102, %83
  br label %113

111:                                              ; preds = %34, %24
  %112 = call i32 @CL_WalkDemoExt(i8* %16, i8* %13, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 6))
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %110
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 6), align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* @ERR_DROP, align 4
  %118 = call i32 @Com_Error(i32 %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %13)
  store i32 1, i32* %8, align 4
  br label %141

119:                                              ; preds = %113
  %120 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 0), align 8
  %121 = call i32 @Q_strncpyz(i8* %120, i8* %16, i32 8)
  %122 = call i32 (...) @Con_Close()
  %123 = load i64, i64* @CA_CONNECTED, align 8
  store i64 %123, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 1), align 8
  %124 = load i8*, i8** @qtrue, align 8
  store i8* %124, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 5), align 8
  %125 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 2), align 8
  %126 = call i32 @Q_strncpyz(i8* %125, i8* %16, i32 8)
  br label %127

127:                                              ; preds = %137, %119
  %128 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 1), align 8
  %129 = load i64, i64* @CA_CONNECTED, align 8
  %130 = icmp sge i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 1), align 8
  %133 = load i64, i64* @CA_PRIMED, align 8
  %134 = icmp slt i64 %132, %133
  br label %135

135:                                              ; preds = %131, %127
  %136 = phi i1 [ false, %127 ], [ %134, %131 ]
  br i1 %136, label %137, label %139

137:                                              ; preds = %135
  %138 = call i32 (...) @CL_ReadDemoMessage()
  br label %127

139:                                              ; preds = %135
  %140 = load i8*, i8** @qfalse, align 8
  store i8* %140, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 3), align 8
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %139, %116, %22
  %142 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %8, align 4
  switch i32 %143, label %145 [
    i32 0, label %144
    i32 1, label %144
  ]

144:                                              ; preds = %141, %141
  ret void

145:                                              ; preds = %141
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Cmd_Argc(...) #2

declare dso_local i32 @Com_Printf(i8*, ...) #2

declare dso_local i32 @Cvar_Set(i8*, i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i8* @Cmd_Argv(i32) #2

declare dso_local i32 @CL_Disconnect(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @Q_stricmpn(i8*, i8*, i32) #2

declare dso_local i32 @ARRAY_LEN(i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @FS_FOpenFileRead(i8*, i32*, i8*) #2

declare dso_local i32 @CL_WalkDemoExt(i8*, i8*, i32*) #2

declare dso_local i32 @Com_Error(i32, i8*, i8*) #2

declare dso_local i32 @Con_Close(...) #2

declare dso_local i32 @CL_ReadDemoMessage(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
