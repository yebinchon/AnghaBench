; ModuleID = '/home/carl/AnghaBench/i3/src/extr_window.c_window_update_name.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_window.c_window_update_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [42 x i8] c"_NET_WM_NAME not specified, not changing\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"_NET_WM_NAME changed to \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @window_update_name(%struct.TYPE_6__* %0, i8* %1) #0 {
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
  %16 = call i32 @DLOG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @FREE(i8* %17)
  br label %70

19:                                               ; preds = %11
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @i3string_free(i32* %22)
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @xcb_get_property_value_length(i8* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @xcb_get_property_value(i8* %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i8* @sstrndup(i32 %27, i32 %28)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32* @i3string_from_utf8(i8* %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_7__* @con_by_window_id(i32 %38)
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %7, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = icmp ne %struct.TYPE_7__* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %19
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = call i32* @con_parse_title_format(%struct.TYPE_7__* %48)
  store i32* %49, i32** %8, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @i3string_as_utf8(i32* %53)
  %55 = call i32 @ewmh_update_visible_name(i32 %52, i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @I3STRING_FREE(i32* %56)
  br label %58

58:                                               ; preds = %47, %42, %19
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @i3string_as_utf8(i32* %63)
  %65 = call i32 @LOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @free(i8* %68)
  br label %70

70:                                               ; preds = %58, %15
  ret void
}

declare dso_local i32 @xcb_get_property_value_length(i8*) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @FREE(i8*) #1

declare dso_local i32 @i3string_free(i32*) #1

declare dso_local i8* @sstrndup(i32, i32) #1

declare dso_local i32 @xcb_get_property_value(i8*) #1

declare dso_local i32* @i3string_from_utf8(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_7__* @con_by_window_id(i32) #1

declare dso_local i32* @con_parse_title_format(%struct.TYPE_7__*) #1

declare dso_local i32 @ewmh_update_visible_name(i32, i32) #1

declare dso_local i32 @i3string_as_utf8(i32*) #1

declare dso_local i32 @I3STRING_FREE(i32*) #1

declare dso_local i32 @LOG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
