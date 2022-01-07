; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_main.c_main_log.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_main.c_main_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i64, i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"\1B[33m\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[31m\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@EOL = common dso_local global i8* null, align 8
@FOREGROUND_INTENSITY = common dso_local global i32 0, align 4
@FOREGROUND_RED = common dso_local global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32)* @main_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_log(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i64, i64* %11, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @main_log_clear_line(i64 %30, i32* %31)
  br label %33

33:                                               ; preds = %29, %3
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  br label %43

39:                                               ; preds = %33
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %55 [
    i32 129, label %45
    i32 128, label %46
    i32 130, label %49
    i32 131, label %52
  ]

45:                                               ; preds = %43
  br label %55

46:                                               ; preds = %43
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5, i32 1, i32* %47)
  br label %55

49:                                               ; preds = %43
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5, i32 1, i32* %50)
  br label %55

52:                                               ; preds = %43
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5, i32 1, i32* %53)
  br label %55

55:                                               ; preds = %43, %52, %49, %46, %45
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @fwrite(i8* %56, i64 %57, i32 1, i32* %58)
  %60 = load i32, i32* %6, align 4
  switch i32 %60, label %71 [
    i32 129, label %61
    i32 128, label %62
    i32 130, label %65
    i32 131, label %68
  ]

61:                                               ; preds = %55
  br label %71

62:                                               ; preds = %55
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4, i32 1, i32* %63)
  br label %71

65:                                               ; preds = %55
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4, i32 1, i32* %66)
  br label %71

68:                                               ; preds = %55
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4, i32 1, i32* %69)
  br label %71

71:                                               ; preds = %55, %68, %65, %62, %61
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = load i8*, i8** @EOL, align 8
  %76 = load i8*, i8** @EOL, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = sext i32 %77 to i64
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @fwrite(i8* %75, i64 %78, i32 1, i32* %79)
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 130
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load i8*, i8** @EOL, align 8
  %85 = load i8*, i8** @EOL, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = sext i32 %86 to i64
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @fwrite(i8* %84, i64 %87, i32 1, i32* %88)
  br label %90

90:                                               ; preds = %83, %74
  br label %91

91:                                               ; preds = %90, %71
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @fflush(i32* %92)
  ret void
}

declare dso_local i32 @main_log_clear_line(i64, i32*) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
