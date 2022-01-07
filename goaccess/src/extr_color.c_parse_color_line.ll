; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_color.c_parse_color_line.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_color.c_parse_color_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Malformed color key at line: %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to find color key: %s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Malformed color value at line: %s\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Invalid bg/fg color pairs at: %s %s\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Invalid color attrs at: %s %s\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Invalid color module at: %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i8*)* @parse_color_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_color_line(i32* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strcspn(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %11, i64* %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i8*, i8*, ...) @FATAL(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 0, i8* %22, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @get_color_item_enum(i8* %23)
  store i32 %24, i32* %8, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i8*, i8*, ...) @FATAL(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strspn(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %35, i64* %9, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (i8*, i8*, ...) @FATAL(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %29
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %7, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @parse_bg_fg_color(i32* %47, i8* %48)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 (i8*, i8*, ...) @FATAL(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %52, i8* %53)
  br label %55

55:                                               ; preds = %51, %43
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @parse_attr_color(%struct.TYPE_5__* %56, i8* %57)
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 (i8*, i8*, ...) @FATAL(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %60, %55
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @parse_module_color(%struct.TYPE_5__* %65, i8* %66)
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 (i8*, i8*, ...) @FATAL(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %70, i8* %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  ret void
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @FATAL(i8*, i8*, ...) #1

declare dso_local i32 @get_color_item_enum(i8*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @parse_bg_fg_color(i32*, i8*) #1

declare dso_local i32 @parse_attr_color(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @parse_module_color(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
