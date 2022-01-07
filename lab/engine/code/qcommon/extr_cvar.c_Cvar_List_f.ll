; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_List_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_List_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, %struct.TYPE_3__* }

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
@.str.10 = private unnamed_addr constant [10 x i8] c" %s \22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"\0A%i total cvars\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"%i cvar indexes\0A\00", align 1
@cvar_numIndexes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cvar_List_f() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = call i32 (...) @Cmd_Argc()
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i8* @Cmd_Argv(i32 1)
  store i8* %7, i8** %3, align 8
  br label %9

8:                                                ; preds = %0
  store i8* null, i8** %3, align 8
  br label %9

9:                                                ; preds = %8, %6
  store i32 0, i32* %2, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cvar_vars, align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %1, align 8
  br label %11

11:                                               ; preds = %138, %9
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %144

14:                                               ; preds = %11
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @qfalse, align 4
  %28 = call i32 @Com_Filter(i8* %23, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22, %14
  br label %138

31:                                               ; preds = %22, %19
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CVAR_SERVERINFO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %42

40:                                               ; preds = %31
  %41 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %38
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %53

51:                                               ; preds = %42
  %52 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %49
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CVAR_USERINFO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %64

62:                                               ; preds = %53
  %63 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %60
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @CVAR_ROM, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %75

73:                                               ; preds = %64
  %74 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %71
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CVAR_INIT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %86

84:                                               ; preds = %75
  %85 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %82
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CVAR_ARCHIVE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %97

95:                                               ; preds = %86
  %96 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %93
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CVAR_LATCH, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %108

106:                                              ; preds = %97
  %107 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %104
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @CVAR_CHEAT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %119

117:                                              ; preds = %108
  %118 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %115
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @CVAR_USER_CREATED, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %130

128:                                              ; preds = %119
  %129 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %126
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %130, %30
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  store %struct.TYPE_3__* %141, %struct.TYPE_3__** %1, align 8
  %142 = load i32, i32* %2, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %2, align 4
  br label %11

144:                                              ; preds = %11
  %145 = load i32, i32* %2, align 4
  %146 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @cvar_numIndexes, align 4
  %148 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %147)
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @Com_Filter(i8*, i32, i32) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
