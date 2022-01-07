; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_WriteMapFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_WriteMapFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32*, %struct.TYPE_3__* }

@MAX_OS_PATH = common dso_local global i32 0, align 4
@outputFilename = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".map\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Writing %s...\0A\00", align 1
@CODESEG = common dso_local global i32 0, align 4
@BSSSEG = common dso_local global i32 0, align 4
@symbols = common dso_local global %struct.TYPE_3__* null, align 8
@segment = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%i %8x %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @WriteMapFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WriteMapFile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_OS_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @outputFilename, align 4
  %11 = call i32 @strcpy(i8* %9, i32 %10)
  %12 = call i32 @StripExtension(i8* %9)
  %13 = call i32 @strcat(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @report(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %15 = call i32* @SafeOpenWrite(i8* %9)
  store i32* %15, i32** %1, align 8
  %16 = load i32, i32* @CODESEG, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %60, %0
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @BSSSEG, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @symbols, align 8
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %2, align 8
  br label %23

23:                                               ; preds = %55, %21
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %59

26:                                               ; preds = %23
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 36
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %55

35:                                               ; preds = %26
  %36 = load i32*, i32** @segment, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %55

45:                                               ; preds = %35
  %46 = load i32*, i32** %1, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @fprintf(i32* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %50, i8* %53)
  br label %55

55:                                               ; preds = %45, %44, %34
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  store %struct.TYPE_3__* %58, %struct.TYPE_3__** %2, align 8
  br label %23

59:                                               ; preds = %23
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %17

63:                                               ; preds = %17
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @fclose(i32* %64)
  %66 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %66)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @StripExtension(i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @report(i8*, i8*) #2

declare dso_local i32* @SafeOpenWrite(i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
