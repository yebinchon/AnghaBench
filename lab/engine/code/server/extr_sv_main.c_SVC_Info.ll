; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SVC_Info.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SVC_Info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_28__ = type { i8* }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"ui_singlePlayerActive\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"SVC_Info: rate limit from %s exceeded, dropping request\0A\00", align 1
@outboundLeakyBucket = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"SVC_Info: rate limit exceeded, dropping request\0A\00", align 1
@sv_privateClients = common dso_local global %struct.TYPE_30__* null, align 8
@sv_maxclients = common dso_local global %struct.TYPE_32__* null, align 8
@svs = common dso_local global %struct.TYPE_27__ zeroinitializer, align 8
@CS_CONNECTED = common dso_local global i64 0, align 8
@NA_BOT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"challenge\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"gamename\00", align 1
@com_gamename = common dso_local global %struct.TYPE_23__* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@com_protocol = common dso_local global %struct.TYPE_21__* null, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@sv_hostname = common dso_local global %struct.TYPE_19__* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@sv_mapname = common dso_local global %struct.TYPE_18__* null, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"clients\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"g_humanplayers\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"gametype\00", align 1
@sv_gametype = common dso_local global %struct.TYPE_20__* null, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"pure\00", align 1
@sv_pure = common dso_local global %struct.TYPE_29__* null, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"g_needpass\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@sv_minPing = common dso_local global %struct.TYPE_31__* null, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"minPing\00", align 1
@sv_maxPing = common dso_local global %struct.TYPE_17__* null, align 8
@.str.18 = private unnamed_addr constant [8 x i8] c"maxPing\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"fs_game\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"game\00", align 1
@NS_SERVER = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"infoResponse\0A%s\00", align 1
@com_legacyprotocol = common dso_local global %struct.TYPE_22__* null, align 8
@sv_voipProtocol = common dso_local global %struct.TYPE_28__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SVC_Info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @MAX_INFO_STRING, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %1
  store i32 1, i32* %9, align 4
  br label %161

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @SVC_RateLimitAddress(i32 %22, i32 10, i32 1000)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @NET_AdrToString(i32 %26)
  %28 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  store i32 1, i32* %9, align 4
  br label %161

29:                                               ; preds = %21
  %30 = call i64 @SVC_RateLimit(i32* @outboundLeakyBucket, i32 10, i32 100)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %161

34:                                               ; preds = %29
  %35 = call i8* @Cmd_Argv(i32 1)
  %36 = call i32 @strlen(i8* %35)
  %37 = icmp sgt i32 %36, 128
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  br label %161

39:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** @sv_privateClients, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %76, %39
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sv_maxclients, align 8
  %46 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %43
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @svs, i32 0, i32 0), align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CS_CONNECTED, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %49
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @svs, i32 0, i32 0), align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NA_BOT, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %58
  br label %75

75:                                               ; preds = %74, %49
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %43

79:                                               ; preds = %43
  %80 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %80, align 16
  %81 = call i8* @Cmd_Argv(i32 1)
  %82 = call i32 @Info_SetValueForKey(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** @com_gamename, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @Info_SetValueForKey(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %85)
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** @com_protocol, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  %91 = call i32 @Info_SetValueForKey(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %90)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** @sv_hostname, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @Info_SetValueForKey(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %94)
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** @sv_mapname, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @Info_SetValueForKey(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %98)
  %100 = load i32, i32* %4, align 4
  %101 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  %102 = call i32 @Info_SetValueForKey(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %101)
  %103 = load i32, i32* %5, align 4
  %104 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  %105 = call i32 @Info_SetValueForKey(i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %104)
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sv_maxclients, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** @sv_privateClients, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %108, %111
  %113 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %112)
  %114 = call i32 @Info_SetValueForKey(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sv_gametype, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  %119 = call i32 @Info_SetValueForKey(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* %118)
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sv_pure, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %122)
  %124 = call i32 @Info_SetValueForKey(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %123)
  %125 = call i32 @Cvar_VariableIntegerValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %126 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 %125)
  %127 = call i32 @Info_SetValueForKey(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %126)
  %128 = load %struct.TYPE_31__*, %struct.TYPE_31__** @sv_minPing, align 8
  %129 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %79
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** @sv_minPing, align 8
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %135)
  %137 = call i32 @Info_SetValueForKey(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %132, %79
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** @sv_maxPing, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** @sv_maxPing, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %146)
  %148 = call i32 @Info_SetValueForKey(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %143, %138
  %150 = call i8* @Cvar_VariableString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  store i8* %150, i8** %6, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = load i8, i8* %151, align 1
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 @Info_SetValueForKey(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %154, %149
  %158 = load i32, i32* @NS_SERVER, align 4
  %159 = load i32, i32* %2, align 4
  %160 = call i32 @NET_OutOfBandPrint(i32 %158, i32 %159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %13)
  store i32 0, i32* %9, align 4
  br label %161

161:                                              ; preds = %157, %38, %32, %25, %20
  %162 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load i32, i32* %9, align 4
  switch i32 %163, label %165 [
    i32 0, label %164
    i32 1, label %164
  ]

164:                                              ; preds = %161, %161
  ret void

165:                                              ; preds = %161
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @Cvar_VariableValue(i8*) #2

declare dso_local i64 @SVC_RateLimitAddress(i32, i32, i32) #2

declare dso_local i32 @Com_DPrintf(i8*, ...) #2

declare dso_local i32 @NET_AdrToString(i32) #2

declare dso_local i64 @SVC_RateLimit(i32*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @Cmd_Argv(i32) #2

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i8*) #2

declare dso_local i8* @va(i8*, i32) #2

declare dso_local i32 @Cvar_VariableIntegerValue(i8*) #2

declare dso_local i8* @Cvar_VariableString(i8*) #2

declare dso_local i32 @NET_OutOfBandPrint(i32, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
