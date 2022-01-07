; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_con_parse_title_format.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_con_parse_title_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i8*, i32* }
%struct.TYPE_7__ = type { i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"i3-frame\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%title\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%class\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%instance\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @con_parse_title_format(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x %struct.TYPE_7__], align 16
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %3, align 8
  %22 = call i32 (...) @font_is_pango()
  store i32 %22, i32* %4, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = call i8* @con_get_tree_representation(%struct.TYPE_9__* %26)
  %28 = call i8* @pango_escape_markup(i8* %27)
  store i8* %28, i8** %5, align 8
  %29 = call i8* @sstrdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %6, align 8
  %30 = call i8* @sstrdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %7, align 8
  br label %72

31:                                               ; preds = %1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %42

37:                                               ; preds = %31
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i8* @i3string_as_utf8(i32* %40)
  br label %42

42:                                               ; preds = %37, %36
  %43 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %36 ], [ %41, %37 ]
  %44 = call i8* @sstrdup(i8* %43)
  %45 = call i8* @pango_escape_markup(i8* %44)
  store i8* %45, i8** %5, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %55

51:                                               ; preds = %42
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %50 ], [ %54, %51 ]
  %57 = call i8* @sstrdup(i8* %56)
  %58 = call i8* @pango_escape_markup(i8* %57)
  store i8* %58, i8** %6, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %68

64:                                               ; preds = %55
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  br label %68

68:                                               ; preds = %64, %63
  %69 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %63 ], [ %67, %64 ]
  %70 = call i8* @sstrdup(i8* %69)
  %71 = call i8* @pango_escape_markup(i8* %70)
  store i8* %71, i8** %7, align 8
  br label %72

72:                                               ; preds = %68, %25
  %73 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %74, align 16
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %76 = load i8*, i8** %5, align 8
  store i8* %76, i8** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %78, align 16
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %80 = load i8*, i8** %6, align 8
  store i8* %80, i8** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %82, align 16
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %84 = load i8*, i8** %7, align 8
  store i8* %84, i8** %83, align 8
  store i64 3, i64* %9, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %89 = call i8* @format_placeholders(i32* %87, %struct.TYPE_7__* %88, i64 3)
  store i8* %89, i8** %10, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = call i32* @i3string_from_utf8(i8* %90)
  store i32* %91, i32** %11, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @i3string_set_markup(i32* %92, i32 %93)
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @FREE(i8* %95)
  store i64 0, i64* %12, align 8
  br label %97

97:                                               ; preds = %106, %72
  %98 = load i64, i64* %12, align 8
  %99 = icmp ult i64 %98, 3
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %8, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @FREE(i8* %104)
  br label %106

106:                                              ; preds = %100
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %12, align 8
  br label %97

109:                                              ; preds = %97
  %110 = load i32*, i32** %11, align 8
  ret i32* %110
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @font_is_pango(...) #1

declare dso_local i8* @pango_escape_markup(i8*) #1

declare dso_local i8* @con_get_tree_representation(%struct.TYPE_9__*) #1

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i8* @i3string_as_utf8(i32*) #1

declare dso_local i8* @format_placeholders(i32*, %struct.TYPE_7__*, i64) #1

declare dso_local i32* @i3string_from_utf8(i8*) #1

declare dso_local i32 @i3string_set_markup(i32*, i32) #1

declare dso_local i32 @FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
