; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_CompletePlayerName.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_CompletePlayerName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32* }
%struct.TYPE_5__ = type { i32 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@cl = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CS_SERVERINFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@clc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@CS_PLAYERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@Com_strCompare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @CL_CompletePlayerName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CL_CompletePlayerName(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %102

16:                                               ; preds = %2
  %17 = load i32, i32* @MAX_CLIENTS, align 4
  %18 = zext i32 %17 to i64
  %19 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %5, align 8
  %22 = mul nuw i64 %18, %20
  %23 = alloca i8, i64 %22, align 16
  store i64 %18, i64* %6, align 8
  store i64 %20, i64* %7, align 8
  %24 = load i32, i32* @MAX_CLIENTS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8*, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 0, i32 0), align 8
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 0, i32 1), align 8
  %29 = load i64, i64* @CS_SERVERINFO, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %27, i64 %32
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i8* @Info_ValueForKey(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @atoi(i8* %35)
  store i32 %36, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %91, %16
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %94

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @clc, i32 0, i32 0), align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %91

46:                                               ; preds = %41
  %47 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 0, i32 0), align 8
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 0, i32 1), align 8
  %49 = load i32, i32* @CS_PLAYERS, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %47, i64 %55
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = call i8* @Info_ValueForKey(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %58, i8** %13, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  br label %91

65:                                               ; preds = %46
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %67, %20
  %69 = getelementptr inbounds i8, i8* %23, i64 %68
  %70 = load i8*, i8** %13, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %72, %20
  %74 = getelementptr inbounds i8, i8* %23, i64 %73
  %75 = trunc i64 %20 to i32
  %76 = call i32 @Q_strncpyz(i8* %69, i8* %70, i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 %78, %20
  %80 = getelementptr inbounds i8, i8* %23, i64 %79
  %81 = call i32 @Q_CleanStr(i8* %80)
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = mul nsw i64 %83, %20
  %85 = getelementptr inbounds i8, i8* %23, i64 %84
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %26, i64 %87
  store i8* %85, i8** %88, align 8
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %65, %64, %45
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %37

94:                                               ; preds = %37
  %95 = bitcast i8** %26 to i8*
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @Com_strCompare, align 4
  %98 = call i32 @qsort(i8* %95, i32 %96, i32 8, i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @Field_CompletePlayerName(i8** %26, i32 %99)
  %101 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %101)
  br label %102

102:                                              ; preds = %94, %2
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atoi(i8*) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @Q_CleanStr(i8*) #2

declare dso_local i32 @qsort(i8*, i32, i32, i32) #2

declare dso_local i32 @Field_CompletePlayerName(i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
