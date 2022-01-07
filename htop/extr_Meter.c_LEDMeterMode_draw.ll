; ModuleID = '/home/carl/AnghaBench/htop/extr_Meter.c_LEDMeterMode_draw.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Meter.c_LEDMeterMode_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@LEDMeterMode_digitsAscii = common dso_local global i32 0, align 4
@LEDMeterMode_digits = common dso_local global i32 0, align 4
@METER_BUFFER_LEN = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@CRT_colors = common dso_local global i32* null, align 8
@LED_COLOR = common dso_local global i64 0, align 8
@RESET_COLOR = common dso_local global i64 0, align 8
@CRT_utf8 = common dso_local global i64 0, align 8
@LEDMeterMode_digitsUtf8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32)* @LEDMeterMode_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LEDMeterMode_draw(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @LEDMeterMode_digitsAscii, align 4
  store i32 %17, i32* @LEDMeterMode_digits, align 4
  %18 = load i32, i32* @METER_BUFFER_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = load i32, i32* @METER_BUFFER_LEN, align 4
  %24 = sub nsw i32 %23, 1
  %25 = call i32 @Meter_updateValues(%struct.TYPE_5__* %22, i8* %21, i32 %24)
  %26 = load i32, i32* @out, align 4
  %27 = call i32 @RichString_begin(i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = call i32 @Meter_displayBuffer(%struct.TYPE_5__* %28, i8* %21, i32* @out)
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %11, align 4
  %32 = load i32*, i32** @CRT_colors, align 8
  %33 = load i64, i64* @LED_COLOR, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @attrset(i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mvaddstr(i32 %37, i32 %38, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strlen(i32 %46)
  %48 = add nsw i32 %43, %47
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* @out, align 4
  %50 = call i32 @RichString_sizeVal(i32 %49)
  store i32 %50, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %84, %4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %51
  %56 = load i32, i32* @out, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call signext i8 @RichString_getCharVal(i32 %56, i32 %57)
  store i8 %58, i8* %15, align 1
  %59 = load i8, i8* %15, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sge i32 %60, 48
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = load i8, i8* %15, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sle i32 %64, 57
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i8, i8* %15, align 1
  %70 = sext i8 %69 to i32
  %71 = sub nsw i32 %70, 48
  %72 = trunc i32 %71 to i8
  %73 = call i32 @LEDMeterMode_drawDigit(i32 %67, i32 %68, i8 signext %72)
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 4
  store i32 %75, i32* %12, align 4
  br label %83

76:                                               ; preds = %62, %55
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i8, i8* %15, align 1
  %80 = call i32 @mvaddch(i32 %77, i32 %78, i8 signext %79)
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %76, %66
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %51

87:                                               ; preds = %51
  %88 = load i32*, i32** @CRT_colors, align 8
  %89 = load i64, i64* @RESET_COLOR, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @attrset(i32 %91)
  %93 = load i32, i32* @out, align 4
  %94 = call i32 @RichString_end(i32 %93)
  %95 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %95)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Meter_updateValues(%struct.TYPE_5__*, i8*, i32) #2

declare dso_local i32 @RichString_begin(i32) #2

declare dso_local i32 @Meter_displayBuffer(%struct.TYPE_5__*, i8*, i32*) #2

declare dso_local i32 @attrset(i32) #2

declare dso_local i32 @mvaddstr(i32, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @RichString_sizeVal(i32) #2

declare dso_local signext i8 @RichString_getCharVal(i32, i32) #2

declare dso_local i32 @LEDMeterMode_drawDigit(i32, i32, i8 signext) #2

declare dso_local i32 @mvaddch(i32, i32, i8 signext) #2

declare dso_local i32 @RichString_end(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
