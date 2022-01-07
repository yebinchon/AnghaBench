; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotMatch_CheckPoint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotMatch_CheckPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_11__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_10__ = type { i32* }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@POSITION = common dso_local global i32 0, align 4
@NETNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"checkpoint_invalid\00", align 1
@CHAT_TELL = common dso_local global i32 0, align 4
@NAME = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"%1.0f %1.0f %1.0f\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"checkpoint_confirm\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotMatch_CheckPoint(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %20 = call i32 (...) @TeamPlayIsOn()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %172

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @POSITION, align 4
  %26 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %27 = call i32 @trap_BotMatchVariable(i32* %24, i32 %25, i8* %16, i32 %26)
  %28 = load double*, double** %10, align 8
  %29 = call i32 @VectorClear(double* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @NETNAME, align 4
  %32 = trunc i64 %18 to i32
  %33 = call i32 @trap_BotMatchVariable(i32* %30, i32 %31, i8* %19, i32 %32)
  %34 = call i32 @ClientFromName(i8* %19)
  store i32 %34, i32* %6, align 4
  %35 = load double*, double** %10, align 8
  %36 = getelementptr inbounds double, double* %35, i64 0
  %37 = load double*, double** %10, align 8
  %38 = getelementptr inbounds double, double* %37, i64 1
  %39 = load double*, double** %10, align 8
  %40 = getelementptr inbounds double, double* %39, i64 2
  %41 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double* %36, double* %38, double* %40)
  %42 = load double*, double** %10, align 8
  %43 = getelementptr inbounds double, double* %42, i64 2
  %44 = load double, double* %43, align 8
  %45 = fadd double %44, 5.000000e-01
  store double %45, double* %43, align 8
  %46 = load double*, double** %10, align 8
  %47 = call i32 @BotPointAreaNum(double* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %23
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i64 @BotAddressedToBot(%struct.TYPE_12__* %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_12__* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @CHAT_TELL, align 4
  %63 = call i32 @trap_BotEnterChat(i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %55, %50
  store i32 1, i32* %12, align 4
  br label %172

65:                                               ; preds = %23
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @NAME, align 4
  %68 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %69 = call i32 @trap_BotMatchVariable(i32* %66, i32 %67, i8* %16, i32 %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = call %struct.TYPE_11__* @BotFindWayPoint(%struct.TYPE_11__* %72, i8* %16)
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %11, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %75 = icmp ne %struct.TYPE_11__* %74, null
  br i1 %75, label %76, label %112

76:                                               ; preds = %65
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = icmp ne %struct.TYPE_11__* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %88, align 8
  br label %89

89:                                               ; preds = %81, %76
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = icmp ne %struct.TYPE_11__* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 3
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %101, align 8
  br label %108

102:                                              ; preds = %89
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  store %struct.TYPE_11__* %105, %struct.TYPE_11__** %107, align 8
  br label %108

108:                                              ; preds = %102, %94
  %109 = load i32, i32* @qfalse, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %108, %65
  %113 = load double*, double** %10, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call %struct.TYPE_11__* @BotCreateWayPoint(i8* %16, double* %113, i32 %114)
  store %struct.TYPE_11__* %115, %struct.TYPE_11__** %11, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  store %struct.TYPE_11__* %118, %struct.TYPE_11__** %120, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = icmp ne %struct.TYPE_11__* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %112
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  store %struct.TYPE_11__* %126, %struct.TYPE_11__** %130, align 8
  br label %131

131:                                              ; preds = %125, %112
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %134, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %136 = load i32*, i32** %4, align 8
  %137 = call i64 @BotAddressedToBot(%struct.TYPE_12__* %135, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %171

139:                                              ; preds = %131
  %140 = trunc i64 %14 to i32
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @Com_sprintf(i8* %16, i32 %140, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %146, i32 %152, i32 %158)
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_12__* %160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %163, i8* %16, i8* null)
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @CHAT_TELL, align 4
  %170 = call i32 @trap_BotEnterChat(i32 %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %139, %131
  store i32 0, i32* %12, align 4
  br label %172

172:                                              ; preds = %171, %64, %22
  %173 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %12, align 4
  switch i32 %174, label %176 [
    i32 0, label %175
    i32 1, label %175
  ]

175:                                              ; preds = %172, %172
  ret void

176:                                              ; preds = %172
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TeamPlayIsOn(...) #2

declare dso_local i32 @trap_BotMatchVariable(i32*, i32, i8*, i32) #2

declare dso_local i32 @VectorClear(double*) #2

declare dso_local i32 @ClientFromName(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, double*, double*, double*) #2

declare dso_local i32 @BotPointAreaNum(double*) #2

declare dso_local i64 @BotAddressedToBot(%struct.TYPE_12__*, i32*) #2

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_12__*, i8*, i32, ...) #2

declare dso_local i32 @trap_BotEnterChat(i32, i32, i32) #2

declare dso_local %struct.TYPE_11__* @BotFindWayPoint(%struct.TYPE_11__*, i8*) #2

declare dso_local %struct.TYPE_11__* @BotCreateWayPoint(i8*, double*, i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
