; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_ui.c_LAN_GetServerInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_ui.c_LAN_GetServerInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@MAX_OTHER_SERVERS = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAX_GLOBAL_SERVERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"clients\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"minping\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"maxping\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"game\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"gametype\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"nettype\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"punkbuster\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"g_needpass\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"g_humanplayers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @LAN_GetServerInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LAN_GetServerInfo(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @MAX_STRING_CHARS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %11, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %16, align 16
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %57 [
    i32 129, label %18
    i32 128, label %31
    i32 130, label %31
    i32 131, label %44
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 2), align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %11, align 8
  br label %30

30:                                               ; preds = %25, %21, %18
  br label %57

31:                                               ; preds = %4, %4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MAX_GLOBAL_SERVERS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 1), align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %11, align 8
  br label %43

43:                                               ; preds = %38, %34, %31
  br label %57

44:                                               ; preds = %4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0), align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  store %struct.TYPE_3__* %55, %struct.TYPE_3__** %11, align 8
  br label %56

56:                                               ; preds = %51, %47, %44
  br label %57

57:                                               ; preds = %4, %56, %43, %30
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %59 = icmp ne %struct.TYPE_3__* %58, null
  br i1 %59, label %60, label %136

60:                                               ; preds = %57
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %136

63:                                               ; preds = %60
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 0, i8* %65, align 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 13
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %106)
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @NET_AdrToStringwPort(i32 %115)
  %117 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  %122 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %121)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %126)
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %131)
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @Q_strncpyz(i8* %133, i8* %15, i32 %134)
  br label %143

136:                                              ; preds = %60, %57
  %137 = load i8*, i8** %7, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i8*, i8** %7, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  store i8 0, i8* %141, align 1
  br label %142

142:                                              ; preds = %139, %136
  br label %143

143:                                              ; preds = %142, %63
  %144 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %144)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i32) #2

declare dso_local i32 @va(i8*, i32) #2

declare dso_local i32 @NET_AdrToStringwPort(i32) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
