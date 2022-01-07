; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mksercommfw.c_bufferFile.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mksercommfw.c_bufferFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid pointer provided!\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Opening file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Error opening file: %s\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Error getting filesize: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Filesize: %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Error reading file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"File: read successful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_info*)* @bufferFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bufferFile(%struct.file_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.file_info* %0, %struct.file_info** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %6 = load %struct.file_info*, %struct.file_info** %3, align 8
  %7 = icmp ne %struct.file_info* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.file_info*, %struct.file_info** %3, align 8
  %10 = getelementptr inbounds %struct.file_info, %struct.file_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8, %1
  %14 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %84

15:                                               ; preds = %8
  %16 = load %struct.file_info*, %struct.file_info** %3, align 8
  %17 = getelementptr inbounds %struct.file_info, %struct.file_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.file_info*, %struct.file_info** %3, align 8
  %21 = getelementptr inbounds %struct.file_info, %struct.file_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @fopen(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %23, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %15
  %26 = load %struct.file_info*, %struct.file_info** %3, align 8
  %27 = getelementptr inbounds %struct.file_info, %struct.file_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  store i32 -1, i32* %2, align 4
  br label %84

30:                                               ; preds = %15
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @rewind(i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @SEEK_END, align 4
  %35 = call i32 @fseek(i32* %33, i64 0, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @ftell(i32* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @rewind(i32* %38)
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load %struct.file_info*, %struct.file_info** %3, align 8
  %44 = getelementptr inbounds %struct.file_info, %struct.file_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @fclose(i32* %47)
  store i32 -1, i32* %2, align 4
  br label %84

49:                                               ; preds = %30
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.file_info*, %struct.file_info** %3, align 8
  %54 = getelementptr inbounds %struct.file_info, %struct.file_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @malloc(i32 %55)
  %57 = load %struct.file_info*, %struct.file_info** %3, align 8
  %58 = getelementptr inbounds %struct.file_info, %struct.file_info* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = icmp ne i32 %56, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %49
  %61 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @fclose(i32* %62)
  store i32 -1, i32* %2, align 4
  br label %84

64:                                               ; preds = %49
  %65 = load %struct.file_info*, %struct.file_info** %3, align 8
  %66 = getelementptr inbounds %struct.file_info, %struct.file_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @fread(i32 %67, i32 1, i32 %68, i32* %69)
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load %struct.file_info*, %struct.file_info** %3, align 8
  %75 = getelementptr inbounds %struct.file_info, %struct.file_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @fclose(i32* %78)
  store i32 -1, i32* %2, align 4
  br label %84

80:                                               ; preds = %64
  %81 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @fclose(i32* %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %73, %60, %42, %25, %13
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @fread(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
