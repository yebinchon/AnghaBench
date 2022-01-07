; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_ExecuteClientMessage.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_ExecuteClientMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32, i8*, i8*, i32, i32*, i8*, i8* }

@.str = private unnamed_addr constant [32 x i8] c"DEBUG: illegible client message\00", align 1
@MAX_RELIABLE_COMMANDS = common dso_local global i8* null, align 8
@sv = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"nextdl\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"%s : ignoring pre map_restart / outdated client message\0A\00", align 1
@CS_ACTIVE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"%s : dropped gamestate, resending\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s acknowledged gamestate\0A\00", align 1
@clc_EOF = common dso_local global i32 0, align 4
@clc_clientCommand = common dso_local global i32 0, align 4
@CS_ZOMBIE = common dso_local global i64 0, align 8
@clc_voipSpeex = common dso_local global i32 0, align 4
@clc_voipOpus = common dso_local global i32 0, align 4
@clc_move = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@clc_moveNoDelta = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"WARNING: bad command byte for client %i\0A\00", align 1
@svs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_ExecuteClientMessage(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @MSG_Bitstream(i32* %7)
  %9 = load i32*, i32** %4, align 8
  %10 = call i8* @MSG_ReadLong(i32* %9)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @MSG_ReadLong(i32* %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ult i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = call i32 @SV_DropClient(%struct.TYPE_10__* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %186

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i8* @MSG_ReadLong(i32* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 8
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 8
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 7
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** @MAX_RELIABLE_COMMANDS, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = inttoptr i64 %37 to i8*
  %39 = icmp ult i8* %30, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %23
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = call i32 @SV_DropClient(%struct.TYPE_10__* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 7
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 8
  store i8* %45, i8** %47, align 8
  br label %186

48:                                               ; preds = %23
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 0), align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %99

52:                                               ; preds = %48
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %99, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @strstr(i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %99, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 1), align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 0), align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %186

77:                                               ; preds = %68, %64
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CS_ACTIVE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ugt i8* %86, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = call i32 @SV_SendClientGameState(%struct.TYPE_10__* %96)
  br label %98

98:                                               ; preds = %91, %83, %77
  br label %186

99:                                               ; preds = %58, %52, %48
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 0), align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %108, %104, %99
  br label %116

116:                                              ; preds = %142, %115
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @MSG_ReadByte(i32* %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @clc_EOF, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %143

123:                                              ; preds = %116
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @clc_clientCommand, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %143

128:                                              ; preds = %123
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 @SV_ClientCommand(%struct.TYPE_10__* %129, i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  br label %186

134:                                              ; preds = %128
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @CS_ZOMBIE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %186

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141
  br i1 true, label %116, label %143

143:                                              ; preds = %142, %127, %122
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @clc_voipSpeex, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %148

148:                                              ; preds = %147, %143
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @clc_voipOpus, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %153

153:                                              ; preds = %152, %148
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @clc_move, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* @qtrue, align 4
  %161 = call i32 @SV_UserMove(%struct.TYPE_10__* %158, i32* %159, i32 %160)
  br label %186

162:                                              ; preds = %153
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @clc_moveNoDelta, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %168 = load i32*, i32** %4, align 8
  %169 = load i32, i32* @qfalse, align 4
  %170 = call i32 @SV_UserMove(%struct.TYPE_10__* %167, i32* %168, i32 %169)
  br label %185

171:                                              ; preds = %162
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @clc_EOF, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %171
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 0), align 8
  %178 = ptrtoint %struct.TYPE_10__* %176 to i64
  %179 = ptrtoint %struct.TYPE_10__* %177 to i64
  %180 = sub i64 %178, %179
  %181 = sdiv exact i64 %180, 72
  %182 = trunc i64 %181 to i32
  %183 = call i32 @Com_Printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %175, %171
  br label %185

185:                                              ; preds = %184, %166
  br label %186

186:                                              ; preds = %20, %40, %72, %98, %133, %140, %185, %157
  ret void
}

declare dso_local i32 @MSG_Bitstream(i32*) #1

declare dso_local i8* @MSG_ReadLong(i32*) #1

declare dso_local i32 @SV_DropClient(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @strstr(i32, i8*) #1

declare dso_local i32 @Com_DPrintf(i8*, i32) #1

declare dso_local i32 @SV_SendClientGameState(%struct.TYPE_10__*) #1

declare dso_local i32 @MSG_ReadByte(i32*) #1

declare dso_local i32 @SV_ClientCommand(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @SV_UserMove(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
