; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_AuthorizeIpPacket.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_AuthorizeIpPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@svs = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [49 x i8] c"SV_AuthorizeIpPacket: not from authorize server\0A\00", align 1
@MAX_CHALLENGES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"SV_AuthorizeIpPacket: challenge not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"demo\00", align 1
@NS_SERVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"print\0AServer is not a demo server\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"challengeResponse %d %d %d\00", align 1
@com_protocol = common dso_local global %struct.TYPE_7__* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"print\0AAwaiting CD key authorization\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"print\0A%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"print\0ASomeone is using this CD Key\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_AuthorizeIpPacket(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @svs, i32 0, i32 2), align 8
  %10 = call i32 @NET_CompareBaseAdr(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @Com_Printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %123

14:                                               ; preds = %1
  %15 = call i8* @Cmd_Argv(i32 1)
  %16 = call i32 @atoi(i8* %15)
  store i32 %16, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %32, %14
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MAX_CHALLENGES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @svs, i32 0, i32 1), align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %35

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %17

35:                                               ; preds = %30, %17
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @MAX_CHALLENGES, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @Com_Printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %123

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @svs, i32 0, i32 1), align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %7, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @svs, i32 0, i32 0), align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = call i8* @Cmd_Argv(i32 2)
  store i8* %49, i8** %5, align 8
  %50 = call i8* @Cmd_Argv(i32 3)
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @Q_stricmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %41
  %55 = load i32, i32* @NS_SERVER, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i32, i8*, ...) @NET_OutOfBandPrint(i32 %55, i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = call i32 @Com_Memset(%struct.TYPE_5__* %60, i32 0, i32 16)
  br label %123

62:                                               ; preds = %41
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @Q_stricmp(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @NS_SERVER, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @com_protocol, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i32, i8*, ...) @NET_OutOfBandPrint(i32 %67, i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %73, i32 %76, i32 %79)
  br label %123

81:                                               ; preds = %62
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @Q_stricmp(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %6, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @NS_SERVER, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i32, i8*, ...) @NET_OutOfBandPrint(i32 %89, i32 %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %101

94:                                               ; preds = %85
  %95 = load i32, i32* @NS_SERVER, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 (i32, i32, i8*, ...) @NET_OutOfBandPrint(i32 %95, i32 %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %94, %88
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %103 = call i32 @Com_Memset(%struct.TYPE_5__* %102, i32 0, i32 16)
  br label %123

104:                                              ; preds = %81
  %105 = load i8*, i8** %6, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* @NS_SERVER, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32, i32, i8*, ...) @NET_OutOfBandPrint(i32 %108, i32 %111, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %120

113:                                              ; preds = %104
  %114 = load i32, i32* @NS_SERVER, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 (i32, i32, i8*, ...) @NET_OutOfBandPrint(i32 %114, i32 %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %113, %107
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %122 = call i32 @Com_Memset(%struct.TYPE_5__* %121, i32 0, i32 16)
  br label %123

123:                                              ; preds = %120, %101, %66, %54, %39, %12
  ret void
}

declare dso_local i32 @NET_CompareBaseAdr(i32, i32) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @NET_OutOfBandPrint(i32, i32, i8*, ...) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
