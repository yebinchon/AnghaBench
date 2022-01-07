; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/extr_mconf.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/extr_mconf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sig_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@silent = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"MENUCONFIG_MODE\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"single_menu\00", align 1
@single_menu_mode = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Your display is too small to run Menuconfig!\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"It must be at least 19 lines by 80 columns.\0A\00", align 1
@conf_message_callback = common dso_local global i32* null, align 8
@rootmenu = common dso_local global i32 0, align 4
@KEY_ESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @LC_ALL, align 4
  %9 = call i32 @setlocale(i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @PACKAGE, align 4
  %11 = load i32, i32* @LOCALEDIR, align 4
  %12 = call i32 @bindtextdomain(i32 %10, i32 %11)
  %13 = load i32, i32* @PACKAGE, align 4
  %14 = call i32 @textdomain(i32 %13)
  %15 = load i32, i32* @SIGINT, align 4
  %16 = load i32, i32* @sig_handler, align 4
  %17 = call i32 @signal(i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  store i32 1, i32* @silent, align 4
  %27 = call i32 @conf_set_message_callback(i32* null)
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %5, align 8
  br label %30

30:                                               ; preds = %26, %20, %2
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @conf_parse(i8* %33)
  %35 = call i32 @conf_read(i32* null)
  %36 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 1, i32* @single_menu_mode, align 4
  br label %44

44:                                               ; preds = %43, %39
  br label %45

45:                                               ; preds = %44, %30
  %46 = call i64 @init_dialog(i32* null)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* @stderr, align 4
  %50 = call i8* @N_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %51 = call i32 @fprintf(i32 %49, i8* %50)
  %52 = load i32, i32* @stderr, align 4
  %53 = call i8* @N_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %54 = call i32 @fprintf(i32 %52, i8* %53)
  store i32 1, i32* %3, align 4
  br label %69

55:                                               ; preds = %45
  %56 = call i32 (...) @conf_get_configname()
  %57 = call i32 @set_config_filename(i32 %56)
  %58 = load i32*, i32** @conf_message_callback, align 8
  %59 = call i32 @conf_set_message_callback(i32* %58)
  br label %60

60:                                               ; preds = %63, %55
  %61 = call i32 @conf(i32* @rootmenu, i32* null)
  %62 = call i32 (...) @handle_exit()
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @KEY_ESC, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %60, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %48
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @conf_set_message_callback(i32*) #1

declare dso_local i32 @conf_parse(i8*) #1

declare dso_local i32 @conf_read(i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @init_dialog(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @N_(i8*) #1

declare dso_local i32 @set_config_filename(i32) #1

declare dso_local i32 @conf_get_configname(...) #1

declare dso_local i32 @conf(i32*, i32*) #1

declare dso_local i32 @handle_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
