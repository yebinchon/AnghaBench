; ModuleID = '/home/carl/AnghaBench/htop/extr_Meter.c_TextMeterMode_draw.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Meter.c_TextMeterMode_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@METER_BUFFER_LEN = common dso_local global i32 0, align 4
@CRT_colors = common dso_local global i32* null, align 8
@METER_TEXT = common dso_local global i64 0, align 8
@RESET_COLOR = common dso_local global i64 0, align 8
@out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32)* @TextMeterMode_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TextMeterMode_draw(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @METER_BUFFER_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = load i32, i32* @METER_BUFFER_LEN, align 4
  %18 = sub nsw i32 %17, 1
  %19 = call i32 @Meter_updateValues(%struct.TYPE_5__* %16, i8* %15, i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** @CRT_colors, align 8
  %22 = load i64, i64* @METER_TEXT, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @attrset(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mvaddstr(i32 %26, i32 %27, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strlen(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32*, i32** @CRT_colors, align 8
  %40 = load i64, i64* @RESET_COLOR, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @attrset(i32 %42)
  %44 = load i32, i32* @out, align 4
  %45 = call i32 @RichString_begin(i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = call i32 @Meter_displayBuffer(%struct.TYPE_5__* %46, i8* %15, i32* @out)
  %48 = load i32, i32* @out, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @RichString_printVal(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @out, align 4
  %53 = call i32 @RichString_end(i32 %52)
  %54 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Meter_updateValues(%struct.TYPE_5__*, i8*, i32) #2

declare dso_local i32 @attrset(i32) #2

declare dso_local i32 @mvaddstr(i32, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @RichString_begin(i32) #2

declare dso_local i32 @Meter_displayBuffer(%struct.TYPE_5__*, i8*, i32*) #2

declare dso_local i32 @RichString_printVal(i32, i32, i32) #2

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
