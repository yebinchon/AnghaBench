; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_ListModified_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_ListModified_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32, i32, i32, %struct.TYPE_3__* }

@cvar_vars = common dso_local global %struct.TYPE_3__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@CVAR_SERVERINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@CVAR_SYSTEMINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@CVAR_USERINFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@CVAR_ROM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@CVAR_INIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@CVAR_LATCH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@CVAR_CHEAT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@CVAR_USER_CREATED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c" %s \22%s\22, default \22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\0A%i total modified cvars\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cvar_ListModified_f() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = call i32 (...) @Cmd_Argc()
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i8* @Cmd_Argv(i32 1)
  store i8* %8, i8** %4, align 8
  br label %10

9:                                                ; preds = %0
  store i8* null, i8** %4, align 8
  br label %10

10:                                               ; preds = %9, %7
  store i32 0, i32* %2, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cvar_vars, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %1, align 8
  br label %12

12:                                               ; preds = %170, %10
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %174

15:                                               ; preds = %12
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %15
  br label %170

26:                                               ; preds = %20
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  br label %39

35:                                               ; preds = %26
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i8* [ %34, %31 ], [ %38, %35 ]
  store i8* %40, i8** %3, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strcmp(i8* %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %170

48:                                               ; preds = %39
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @qfalse, align 4
  %59 = call i32 @Com_Filter(i8* %54, i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %170

62:                                               ; preds = %53, %48
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CVAR_SERVERINFO, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %73

71:                                               ; preds = %62
  %72 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %69
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %84

82:                                               ; preds = %73
  %83 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %80
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @CVAR_USERINFO, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %95

93:                                               ; preds = %84
  %94 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %91
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CVAR_ROM, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %106

104:                                              ; preds = %95
  %105 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %102
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @CVAR_INIT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %117

115:                                              ; preds = %106
  %116 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %113
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @CVAR_ARCHIVE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %128

126:                                              ; preds = %117
  %127 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %124
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @CVAR_LATCH, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %139

137:                                              ; preds = %128
  %138 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %135
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @CVAR_CHEAT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %150

148:                                              ; preds = %139
  %149 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %146
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @CVAR_USER_CREATED, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %161

159:                                              ; preds = %150
  %160 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %157
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load i8*, i8** %3, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %164, i8* %165, i32 %168)
  br label %170

170:                                              ; preds = %161, %61, %47, %25
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 6
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  store %struct.TYPE_3__* %173, %struct.TYPE_3__** %1, align 8
  br label %12

174:                                              ; preds = %12
  %175 = load i32, i32* %2, align 4
  %176 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %175)
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @Com_Filter(i8*, i32, i32) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
