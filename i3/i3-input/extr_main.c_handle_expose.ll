; ModuleID = '/home/carl/AnghaBench/i3/i3-input/extr_main.c_handle_expose.c'
source_filename = "/home/carl/AnghaBench/i3/i3-input/extr_main.c_handle_expose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"expose!\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"#FF0000\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"#FFFFFF\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"#000000\00", align 1
@BORDER = common dso_local global i32 0, align 4
@PADDING = common dso_local global i32 0, align 4
@surface = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@prompt = common dso_local global i32* null, align 8
@MAX_WIDTH = common dso_local global i64 0, align 8
@input_position = common dso_local global i64 0, align 8
@glyphs_ucs = common dso_local global i32 0, align 4
@prompt_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @handle_expose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_expose(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @draw_util_hex_to_color(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = call i32 @draw_util_hex_to_color(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %14, i32* %8, align 4
  %15 = call i32 @draw_util_hex_to_color(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @BORDER, align 4
  %17 = load i32, i32* @PADDING, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @surface, i32 0, i32 1), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @surface, i32 0, i32 0), align 8
  %22 = call i32 @draw_util_rectangle(%struct.TYPE_4__* @surface, i32 %19, i32 0, i32 0, i64 %20, i64 %21)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @BORDER, align 4
  %25 = load i32, i32* @BORDER, align 4
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @surface, i32 0, i32 1), align 8
  %27 = load i32, i32* @BORDER, align 4
  %28 = mul nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %26, %29
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @surface, i32 0, i32 0), align 8
  %32 = load i32, i32* @BORDER, align 4
  %33 = mul nsw i32 2, %32
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %31, %34
  %36 = call i32 @draw_util_rectangle(%struct.TYPE_4__* @surface, i32 %23, i32 %24, i32 %25, i64 %30, i64 %35)
  %37 = load i32*, i32** @prompt, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %3
  %40 = load i32*, i32** @prompt, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i64, i64* @MAX_WIDTH, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %45, %47
  %49 = call i32 @draw_util_text(i32* %40, %struct.TYPE_4__* @surface, i32 %41, i32 %42, i32 %43, i32 %44, i64 %48)
  br label %50

50:                                               ; preds = %39, %3
  %51 = load i64, i64* @input_position, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load i32, i32* @glyphs_ucs, align 4
  %55 = load i64, i64* @input_position, align 8
  %56 = call i32* @i3string_from_ucs2(i32 %54, i64 %55)
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @prompt_offset, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = load i64, i64* @MAX_WIDTH, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %64, %66
  %68 = call i32 @draw_util_text(i32* %57, %struct.TYPE_4__* @surface, i32 %58, i32 %59, i32 %62, i32 %63, i64 %67)
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @i3string_free(i32* %69)
  br label %71

71:                                               ; preds = %53, %50
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @xcb_flush(i32* %72)
  ret i32 1
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @draw_util_hex_to_color(i8*) #1

declare dso_local i32 @draw_util_rectangle(%struct.TYPE_4__*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @draw_util_text(i32*, %struct.TYPE_4__*, i32, i32, i32, i32, i64) #1

declare dso_local i32* @i3string_from_ucs2(i32, i64) #1

declare dso_local i32 @i3string_free(i32*) #1

declare dso_local i32 @xcb_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
