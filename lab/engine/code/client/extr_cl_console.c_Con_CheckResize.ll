; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_CheckResize.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_CheckResize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32 }

@CON_TEXTSIZE = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@con = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DEFAULT_CONSOLE_WIDTH = common dso_local global i32 0, align 4
@COLOR_WHITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Con_CheckResize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = load i32, i32* @CON_TEXTSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i16, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @SCREEN_WIDTH, align 4
  %16 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %17 = sdiv i32 %15, %16
  %18 = sub nsw i32 %17, 2
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 0), align 8
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  store i32 1, i32* %10, align 4
  br label %142

23:                                               ; preds = %0
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load i32, i32* @DEFAULT_CONSOLE_WIDTH, align 4
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 0), align 8
  %29 = load i32, i32* @CON_TEXTSIZE, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 0), align 8
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 1), align 4
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %45, %26
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @CON_TEXTSIZE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i32, i32* @COLOR_WHITE, align 4
  %38 = call i32 @ColorIndex(i32 %37)
  %39 = shl i32 %38, 8
  %40 = or i32 %39, 32
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 2), align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %32

48:                                               ; preds = %32
  br label %138

49:                                               ; preds = %23
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 0), align 8
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 0), align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 1), align 4
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @CON_TEXTSIZE, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 0), align 8
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 1), align 4
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 1), align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 1), align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %49
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 0), align 8
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 0), align 8
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 2), align 8
  %71 = load i32, i32* @CON_TEXTSIZE, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 2
  %74 = trunc i64 %73 to i32
  %75 = call i32 @Com_Memcpy(i16* %14, i32* %70, i32 %74)
  store i32 0, i32* %1, align 4
  br label %76

76:                                               ; preds = %89, %69
  %77 = load i32, i32* %1, align 4
  %78 = load i32, i32* @CON_TEXTSIZE, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load i32, i32* @COLOR_WHITE, align 4
  %82 = call i32 @ColorIndex(i32 %81)
  %83 = shl i32 %82, 8
  %84 = or i32 %83, 32
  %85 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 2), align 8
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %84, i32* %88, align 4
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %1, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %1, align 4
  br label %76

92:                                               ; preds = %76
  store i32 0, i32* %1, align 4
  br label %93

93:                                               ; preds = %133, %92
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %136

97:                                               ; preds = %93
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %129, %97
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %132

102:                                              ; preds = %98
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %104 = load i32, i32* %1, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* %5, align 4
  %109 = srem i32 %107, %108
  %110 = load i32, i32* %4, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32, i32* %2, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i16, i16* %14, i64 %114
  %116 = load i16, i16* %115, align 2
  %117 = sext i16 %116 to i32
  %118 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 2), align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 1), align 4
  %120 = sub nsw i32 %119, 1
  %121 = load i32, i32* %1, align 4
  %122 = sub nsw i32 %120, %121
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 0), align 8
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* %2, align 4
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %118, i64 %127
  store i32 %117, i32* %128, align 4
  br label %129

129:                                              ; preds = %102
  %130 = load i32, i32* %2, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %2, align 4
  br label %98

132:                                              ; preds = %98
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %1, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %1, align 4
  br label %93

136:                                              ; preds = %93
  %137 = call i32 (...) @Con_ClearNotify()
  br label %138

138:                                              ; preds = %136, %48
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 1), align 4
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 4), align 4
  store i32 0, i32* %10, align 4
  br label %142

142:                                              ; preds = %138, %22
  %143 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %10, align 4
  switch i32 %144, label %146 [
    i32 0, label %145
    i32 1, label %145
  ]

145:                                              ; preds = %142, %142
  ret void

146:                                              ; preds = %142
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ColorIndex(i32) #2

declare dso_local i32 @Com_Memcpy(i16*, i32*, i32) #2

declare dso_local i32 @Con_ClearNotify(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
