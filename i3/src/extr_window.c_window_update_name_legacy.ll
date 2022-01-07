; ModuleID = '/home/carl/AnghaBench/i3/src/extr_window.c_window_update_name_legacy.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_window.c_window_update_name_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i64 }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [58 x i8] c"WM_NAME not set (_NET_WM_NAME is what you want anyways).\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"WM_NAME changed to \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [131 x i8] c"Using legacy window title. Note that in order to get Unicode window titles in i3, the application has to set _NET_WM_NAME (UTF-8)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @window_update_name_legacy(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @xcb_get_property_value_length(i8* %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %2
  %16 = call i32 @DLOG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @FREE(i8* %17)
  br label %77

19:                                               ; preds = %11
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @free(i8* %25)
  br label %77

27:                                               ; preds = %19
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @i3string_free(i32* %30)
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @xcb_get_property_value_length(i8* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @xcb_get_property_value(i8* %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i8* @sstrndup(i32 %35, i32 %36)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32* @i3string_from_utf8(i8* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.TYPE_7__* @con_by_window_id(i32 %46)
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %7, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %27
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = call i32* @con_parse_title_format(%struct.TYPE_7__* %56)
  store i32* %57, i32** %8, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @i3string_as_utf8(i32* %61)
  %63 = call i32 @ewmh_update_visible_name(i32 %60, i32 %62)
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @I3STRING_FREE(i32* %64)
  br label %66

66:                                               ; preds = %55, %50, %27
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @i3string_as_utf8(i32* %69)
  %71 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @free(i8* %75)
  br label %77

77:                                               ; preds = %66, %24, %15
  ret void
}

declare dso_local i32 @xcb_get_property_value_length(i8*) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @FREE(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @i3string_free(i32*) #1

declare dso_local i8* @sstrndup(i32, i32) #1

declare dso_local i32 @xcb_get_property_value(i8*) #1

declare dso_local i32* @i3string_from_utf8(i8*) #1

declare dso_local %struct.TYPE_7__* @con_by_window_id(i32) #1

declare dso_local i32* @con_parse_title_format(%struct.TYPE_7__*) #1

declare dso_local i32 @ewmh_update_visible_name(i32, i32) #1

declare dso_local i32 @i3string_as_utf8(i32*) #1

declare dso_local i32 @I3STRING_FREE(i32*) #1

declare dso_local i32 @LOG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
