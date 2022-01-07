; ModuleID = '/home/carl/AnghaBench/i3/i3-config-wizard/extr_main.c_handle_expose.c'
source_filename = "/home/carl/AnghaBench/i3/i3-config-wizard/extr_main.c_handle_expose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"#000000\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"#FFFFFF\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"#00FF00\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"#FF0000\00", align 1
@surface = common dso_local global i32 0, align 4
@font = common dso_local global i32 0, align 4
@current_step = common dso_local global i64 0, align 8
@STEP_WELCOME = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"You have not configured i3 yet.\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Do you want me to generate a config at\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s?\00", align 1
@config_path = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Yes, generate the config\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"No, I will use the defaults\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"<Enter>\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"<ESC>\00", align 1
@STEP_GENERATE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"Please choose either:\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Win as default modifier\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Alt as default modifier\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Afterwards, press\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"to write the config\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"to abort\00", align 1
@modifier = common dso_local global i64 0, align 8
@MOD_Mod4 = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"<Alt>\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"<Win>\00", align 1
@bold_font = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"-> <Win>\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"-> <Alt>\00", align 1
@conn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @handle_expose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_expose() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = call i32 @draw_util_hex_to_color(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %1, align 4
  %7 = call i32 @draw_util_hex_to_color(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %7, i32* %2, align 4
  %8 = call i32 @draw_util_hex_to_color(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %8, i32* %3, align 4
  %9 = call i32 @draw_util_hex_to_color(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @draw_util_clear_surface(i32* @surface, i32 %10)
  %12 = call i32 @set_font(i32* @font)
  %13 = load i64, i64* @current_step, align 8
  %14 = load i64, i64* @STEP_WELCOME, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @txt(i32 2, i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @txt(i32 2, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* @config_path, align 4
  %24 = call i32 @sasprintf(i8** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @txt(i32 2, i32 4, i8* %25, i32 %26, i32 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @txt(i32 13, i32 6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @txt(i32 13, i32 8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @txt(i32 4, i32 6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @txt(i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %16, %0
  %44 = load i64, i64* @current_step, align 8
  %45 = load i64, i64* @STEP_GENERATE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %98

47:                                               ; preds = %43
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @txt(i32 2, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @txt(i32 13, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @txt(i32 13, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %1, align 4
  %59 = call i32 @txt(i32 2, i32 7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* %1, align 4
  %62 = call i32 @txt(i32 13, i32 9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* %1, align 4
  %65 = call i32 @txt(i32 13, i32 10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i64, i64* @modifier, align 8
  %67 = load i64, i64* @MOD_Mod4, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %47
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @txt(i32 5, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %70, i32 %71)
  br label %77

73:                                               ; preds = %47
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* %1, align 4
  %76 = call i32 @txt(i32 5, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %69
  %78 = call i32 @set_font(i32* @bold_font)
  %79 = load i64, i64* @modifier, align 8
  %80 = load i64, i64* @MOD_Mod4, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @txt(i32 2, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %83, i32 %84)
  br label %90

86:                                               ; preds = %77
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* %1, align 4
  %89 = call i32 @txt(i32 2, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %82
  %91 = call i32 @set_font(i32* @font)
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %1, align 4
  %94 = call i32 @txt(i32 4, i32 9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %1, align 4
  %97 = call i32 @txt(i32 5, i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %90, %43
  %99 = load i32, i32* @conn, align 4
  %100 = call i32 @xcb_flush(i32 %99)
  ret i32 1
}

declare dso_local i32 @draw_util_hex_to_color(i8*) #1

declare dso_local i32 @draw_util_clear_surface(i32*, i32) #1

declare dso_local i32 @set_font(i32*) #1

declare dso_local i32 @txt(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @sasprintf(i8**, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @xcb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
