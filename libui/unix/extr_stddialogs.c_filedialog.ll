; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_stddialogs.c_filedialog.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_stddialogs.c_filedialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"_Cancel\00", align 1
@GTK_RESPONSE_CANCEL = common dso_local global i32 0, align 4
@GTK_RESPONSE_ACCEPT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i32*)* @filedialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @filedialog(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @GTK_RESPONSE_CANCEL, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i64, i64* @GTK_RESPONSE_ACCEPT, align 8
  %17 = call i32* @gtk_file_chooser_dialog_new(i32* null, i32* %12, i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14, i32* %15, i64 %16, i32* null)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32* @GTK_FILE_CHOOSER(i32* %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @gtk_file_chooser_set_local_only(i32* %20, i32 %21)
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @gtk_file_chooser_set_select_multiple(i32* %23, i32 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @gtk_file_chooser_set_show_hidden(i32* %26, i32 %27)
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @gtk_file_chooser_set_do_overwrite_confirmation(i32* %29, i32 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @gtk_file_chooser_set_create_folders(i32* %32, i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @GTK_DIALOG(i32* %35)
  %37 = call i64 @gtk_dialog_run(i32 %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @GTK_RESPONSE_ACCEPT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @gtk_widget_destroy(i32* %42)
  store i8* null, i8** %4, align 8
  br label %51

44:                                               ; preds = %3
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @gtk_file_chooser_get_filename(i32* %45)
  %47 = call i8* @uiUnixStrdupText(i32 %46)
  store i8* %47, i8** %11, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @gtk_widget_destroy(i32* %48)
  %50 = load i8*, i8** %11, align 8
  store i8* %50, i8** %4, align 8
  br label %51

51:                                               ; preds = %44, %41
  %52 = load i8*, i8** %4, align 8
  ret i8* %52
}

declare dso_local i32* @gtk_file_chooser_dialog_new(i32*, i32*, i32, i8*, i32, i32*, i64, i32*) #1

declare dso_local i32* @GTK_FILE_CHOOSER(i32*) #1

declare dso_local i32 @gtk_file_chooser_set_local_only(i32*, i32) #1

declare dso_local i32 @gtk_file_chooser_set_select_multiple(i32*, i32) #1

declare dso_local i32 @gtk_file_chooser_set_show_hidden(i32*, i32) #1

declare dso_local i32 @gtk_file_chooser_set_do_overwrite_confirmation(i32*, i32) #1

declare dso_local i32 @gtk_file_chooser_set_create_folders(i32*, i32) #1

declare dso_local i64 @gtk_dialog_run(i32) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

declare dso_local i8* @uiUnixStrdupText(i32) #1

declare dso_local i32 @gtk_file_chooser_get_filename(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
