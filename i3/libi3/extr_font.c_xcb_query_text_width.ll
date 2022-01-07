; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_font.c_xcb_query_text_width.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_font.c_xcb_query_text_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }

@xcb_query_text_width.first_invocation = internal global i32 1, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Using slow code path for text extents\0A\00", align 1
@conn = common dso_local global i32 0, align 4
@savedFont = common dso_local global %struct.TYPE_16__* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not get text extents (X error code %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @xcb_query_text_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcb_query_text_width(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @xcb_query_text_width.first_invocation, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @xcb_query_text_width.first_invocation, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @conn, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** @savedFont, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @xcb_query_text_extents(i32 %16, i32 %21, i64 %22, i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @conn, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.TYPE_15__* @xcb_query_text_extents_reply(i32 %25, i32 %26, %struct.TYPE_15__** %6)
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %8, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %29 = icmp eq %struct.TYPE_15__* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %15
  %31 = load i32, i32* @stderr, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = call i32 @free(%struct.TYPE_15__* %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** @savedFont, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = mul i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %56

49:                                               ; preds = %15
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %54 = call i32 @free(%struct.TYPE_15__* %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %30
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @xcb_query_text_extents(i32, i32, i64, i32*) #1

declare dso_local %struct.TYPE_15__* @xcb_query_text_extents_reply(i32, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
