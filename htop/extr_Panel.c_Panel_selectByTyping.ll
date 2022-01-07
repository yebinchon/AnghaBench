; ModuleID = '/home/carl/AnghaBench/htop/extr_Panel.c_Panel_selectByTyping.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Panel.c_Panel_selectByTyping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i8* }

@HANDLED = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@BREAK_LOOP = common dso_local global i32 0, align 4
@IGNORED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Panel_selectByTyping(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = call i32 @Panel_size(%struct.TYPE_7__* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = call i8* @xCalloc(i32 100, i32 1)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %105

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 255
  br i1 %30, label %31, label %105

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @isalnum(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %105

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strlen(i8* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 99
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %42, i8* %46, align 1
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 0, i8* %51, align 1
  br label %52

52:                                               ; preds = %40, %35
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %100, %52
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %103

56:                                               ; preds = %53
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strlen(i8* %57)
  store i32 %58, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %90, %56
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %59
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @Panel_get(%struct.TYPE_7__* %64, i32 %65)
  %67 = inttoptr i64 %66 to %struct.TYPE_8__*
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %11, align 8
  br label %70

70:                                               ; preds = %75, %63
  %71 = load i8*, i8** %11, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 32
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %11, align 8
  br label %70

78:                                               ; preds = %70
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @strncasecmp(i8* %79, i8* %80, i32 %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @Panel_setSelected(%struct.TYPE_7__* %85, i32 %86)
  %88 = load i32, i32* @HANDLED, align 4
  store i32 %88, i32* %3, align 4
  br label %120

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %59

93:                                               ; preds = %59
  %94 = load i32, i32* %5, align 4
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  store i8 %95, i8* %97, align 1
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  store i8 0, i8* %99, align 1
  br label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %53

103:                                              ; preds = %53
  %104 = load i32, i32* @HANDLED, align 4
  store i32 %104, i32* %3, align 4
  br label %120

105:                                              ; preds = %31, %28, %22
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @ERR, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  store i8 0, i8* %111, align 1
  br label %112

112:                                              ; preds = %109, %105
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %5, align 4
  %115 = icmp eq i32 %114, 13
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @BREAK_LOOP, align 4
  store i32 %117, i32* %3, align 4
  br label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @IGNORED, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %116, %103, %84
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @Panel_size(%struct.TYPE_7__*) #1

declare dso_local i8* @xCalloc(i32, i32) #1

declare dso_local i64 @isalnum(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @Panel_get(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @Panel_setSelected(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
