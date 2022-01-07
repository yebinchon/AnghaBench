; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_future.c_uiprivLoadFutures.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_future.c_uiprivLoadFutures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTLD_LAZY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pango_attr_font_features_new\00", align 1
@newFeaturesAttr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"pango_attr_foreground_alpha_new\00", align 1
@newFGAlphaAttr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"pango_attr_background_alpha_new\00", align 1
@newBGAlphaAttr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"gtk_widget_path_iter_set_object_name\00", align 1
@gwpIterSetObjectName = common dso_local global i32 0, align 4
@gtk_widget_path_iter_set_object_name = common dso_local global i32 0, align 4
@pango_attr_background_alpha_new = common dso_local global i32 0, align 4
@pango_attr_font_features_new = common dso_local global i32 0, align 4
@pango_attr_foreground_alpha_new = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiprivLoadFutures() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @RTLD_LAZY, align 4
  %3 = call i8* @dlopen(i32* null, i32 %2)
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %26

7:                                                ; preds = %0
  %8 = load i8*, i8** %1, align 8
  %9 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @dlsym to i32 (i8*, i8*, ...)*)(i8* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** bitcast (i32* @newFeaturesAttr to i8**), align 4
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @dlsym to i32 (i8*, i8*, ...)*)(i8* %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** bitcast (i32* @newFGAlphaAttr to i8**), align 4
  %16 = load i8*, i8** %1, align 8
  %17 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @dlsym to i32 (i8*, i8*, ...)*)(i8* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** bitcast (i32* @newBGAlphaAttr to i8**), align 4
  %20 = load i8*, i8** %1, align 8
  %21 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @dlsym to i32 (i8*, i8*, ...)*)(i8* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** bitcast (i32* @gwpIterSetObjectName to i8**), align 4
  %24 = load i8*, i8** %1, align 8
  %25 = call i32 @dlclose(i8* %24)
  br label %26

26:                                               ; preds = %7, %6
  ret void
}

declare dso_local i8* @dlopen(i32*, i32) #1

declare dso_local i32 @dlsym(...) #1

declare dso_local i32 @dlclose(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
