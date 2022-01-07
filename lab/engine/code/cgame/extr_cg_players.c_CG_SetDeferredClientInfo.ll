; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_SetDeferredClientInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_SetDeferredClientInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i8*, i32, i32, i32 }

@cgs = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@qtrue = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"CG_SetDeferredClientInfo: no valid clients!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*)* @CG_SetDeferredClientInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_SetDeferredClientInfo(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %61, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 0), align 8
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %64

11:                                               ; preds = %7
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 2), align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i64 %14
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %11
  br label %61

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @Q_stricmp(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %26
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @Q_stricmp(i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %35
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 1), align 8
  %46 = load i64, i64* @GT_TEAM, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48, %35, %26
  br label %61

57:                                               ; preds = %48, %44
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = call i32 @CG_LoadClientInfo(i32 %58, %struct.TYPE_7__* %59)
  br label %154

61:                                               ; preds = %56, %25
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %7

64:                                               ; preds = %7
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 1), align 8
  %66 = load i64, i64* @GT_TEAM, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %124

68:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %117, %68
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 0), align 8
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %120

73:                                               ; preds = %69
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 2), align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %6, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %73
  br label %117

88:                                               ; preds = %82
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @Q_stricmp(i32 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %88
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 1), align 8
  %99 = load i64, i64* @GT_TEAM, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101, %88
  br label %117

110:                                              ; preds = %101, %97
  %111 = load i8*, i8** @qtrue, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = call i32 @CG_CopyClientInfoModel(%struct.TYPE_7__* %114, %struct.TYPE_7__* %115)
  br label %154

117:                                              ; preds = %109, %87
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %69

120:                                              ; preds = %69
  %121 = load i32, i32* %3, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = call i32 @CG_LoadClientInfo(i32 %121, %struct.TYPE_7__* %122)
  br label %154

124:                                              ; preds = %64
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %146, %124
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 0), align 8
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %149

129:                                              ; preds = %125
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 2), align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %132
  store %struct.TYPE_7__* %133, %struct.TYPE_7__** %6, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %129
  br label %146

139:                                              ; preds = %129
  %140 = load i8*, i8** @qtrue, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = call i32 @CG_CopyClientInfoModel(%struct.TYPE_7__* %143, %struct.TYPE_7__* %144)
  br label %154

146:                                              ; preds = %138
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %125

149:                                              ; preds = %125
  %150 = call i32 @CG_Printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %151 = load i32, i32* %3, align 4
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %153 = call i32 @CG_LoadClientInfo(i32 %151, %struct.TYPE_7__* %152)
  br label %154

154:                                              ; preds = %149, %139, %120, %110, %57
  ret void
}

declare dso_local i64 @Q_stricmp(i32, i32) #1

declare dso_local i32 @CG_LoadClientInfo(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @CG_CopyClientInfoModel(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @CG_Printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
