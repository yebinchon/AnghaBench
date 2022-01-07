; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mksercommfw.c_writeFile.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mksercommfw.c_writeFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid pointer provided!\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Opening file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Error opening file: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Writing file: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Wanted to write, but something went wrong!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_info*)* @writeFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeFile(%struct.file_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file_info*, align 8
  %4 = alloca i32*, align 8
  store %struct.file_info* %0, %struct.file_info** %3, align 8
  %5 = load %struct.file_info*, %struct.file_info** %3, align 8
  %6 = icmp ne %struct.file_info* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.file_info*, %struct.file_info** %3, align 8
  %9 = getelementptr inbounds %struct.file_info, %struct.file_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7, %1
  %13 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %53

14:                                               ; preds = %7
  %15 = load %struct.file_info*, %struct.file_info** %3, align 8
  %16 = getelementptr inbounds %struct.file_info, %struct.file_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.file_info*, %struct.file_info** %3, align 8
  %20 = getelementptr inbounds %struct.file_info, %struct.file_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @fopen(i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %22, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = load %struct.file_info*, %struct.file_info** %3, align 8
  %26 = getelementptr inbounds %struct.file_info, %struct.file_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  store i32 -1, i32* %2, align 4
  br label %53

29:                                               ; preds = %14
  %30 = load %struct.file_info*, %struct.file_info** %3, align 8
  %31 = getelementptr inbounds %struct.file_info, %struct.file_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  %34 = load %struct.file_info*, %struct.file_info** %3, align 8
  %35 = getelementptr inbounds %struct.file_info, %struct.file_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.file_info*, %struct.file_info** %3, align 8
  %38 = getelementptr inbounds %struct.file_info, %struct.file_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @fwrite(i32 %36, i32 1, i64 %39, i32* %40)
  %42 = load %struct.file_info*, %struct.file_info** %3, align 8
  %43 = getelementptr inbounds %struct.file_info, %struct.file_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %29
  %47 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @fclose(i32* %48)
  store i32 -1, i32* %2, align 4
  br label %53

50:                                               ; preds = %29
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @fclose(i32* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %46, %24, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i64 @fwrite(i32, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
