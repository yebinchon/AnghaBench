; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_AddToTeamChat.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_AddToTeamChat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i8**, i32* }
%struct.TYPE_8__ = type { i32 }

@cg_teamChatHeight = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@TEAMCHAT_HEIGHT = common dso_local global i32 0, align 4
@cg_teamChatTime = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@cgs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TEAMCHAT_WIDTH = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@Q_COLOR_ESCAPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @CG_AddToTeamChat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_AddToTeamChat(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_teamChatHeight, i32 0, i32 0), align 4
  %9 = load i32, i32* @TEAMCHAT_HEIGHT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_teamChatHeight, i32 0, i32 0), align 4
  store i32 %12, i32* %7, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @TEAMCHAT_HEIGHT, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32, i32* %7, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg_teamChatTime, i32 0, i32 0), align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  br label %142

22:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  %23 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 2), align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %25 = load i32, i32* %7, align 4
  %26 = srem i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %23, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  store i8 0, i8* %30, align 1
  store i32 55, i32* %6, align 4
  store i8* null, i8** %5, align 8
  br label %31

31:                                               ; preds = %114, %93, %22
  %32 = load i8*, i8** %2, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %122

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @TEAMCHAT_WIDTH, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %89

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = load i8*, i8** %2, align 8
  %50 = sub i64 0, %48
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %2, align 8
  %52 = load i8*, i8** %2, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %2, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = load i8*, i8** %4, align 8
  %60 = sub i64 0, %58
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %4, align 8
  br label %62

62:                                               ; preds = %43, %40
  %63 = load i8*, i8** %4, align 8
  store i8 0, i8* %63, align 1
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 4
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 3), align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %67 = load i32, i32* %7, align 4
  %68 = srem i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %73 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 2), align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %75 = load i32, i32* %7, align 4
  %76 = srem i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %73, i64 %77
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %4, align 8
  %80 = load i8*, i8** %4, align 8
  store i8 0, i8* %80, align 1
  %81 = load i32, i32* @Q_COLOR_ESCAPE, align 4
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %4, align 8
  store i8 %82, i8* %83, align 1
  %85 = load i32, i32* %6, align 4
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %4, align 8
  store i8 %86, i8* %87, align 1
  store i32 0, i32* %3, align 4
  store i8* null, i8** %5, align 8
  br label %89

89:                                               ; preds = %62, %35
  %90 = load i8*, i8** %2, align 8
  %91 = call i64 @Q_IsColorString(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i8*, i8** %2, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %2, align 8
  %96 = load i8, i8* %94, align 1
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %4, align 8
  store i8 %96, i8* %97, align 1
  %99 = load i8*, i8** %2, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  store i32 %101, i32* %6, align 4
  %102 = load i8*, i8** %2, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %2, align 8
  %104 = load i8, i8* %102, align 1
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %4, align 8
  store i8 %104, i8* %105, align 1
  br label %31

107:                                              ; preds = %89
  %108 = load i8*, i8** %2, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 32
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i8*, i8** %4, align 8
  store i8* %113, i8** %5, align 8
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i8*, i8** %2, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %2, align 8
  %117 = load i8, i8* %115, align 1
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %4, align 8
  store i8 %117, i8* %118, align 1
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %3, align 4
  br label %31

122:                                              ; preds = %31
  %123 = load i8*, i8** %4, align 8
  store i8 0, i8* %123, align 1
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 4
  %125 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 3), align 8
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %127 = load i32, i32* %7, align 4
  %128 = srem i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  store i32 %124, i32* %130, align 4
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 1), align 4
  %135 = sub nsw i32 %133, %134
  %136 = load i32, i32* %7, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %122
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 %139, %140
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 1), align 4
  br label %142

142:                                              ; preds = %21, %138, %122
  ret void
}

declare dso_local i64 @Q_IsColorString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
