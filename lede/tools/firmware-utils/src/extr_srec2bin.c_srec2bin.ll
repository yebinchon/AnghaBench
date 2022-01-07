; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_srec2bin.c_srec2bin.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_srec2bin.c_srec2bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"\0AError: <srec2bin <srec input file> <bin output file>\0A\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@BigEndian = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"\0AEndian: %s, Tag is 0x%8X\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"BIG\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"LITTLE\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\0AError: Opening input file, %s.\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@fOut = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"\0AError: Opening Output file, %s.\00", align 1
@RecStart = common dso_local global i8* null, align 8
@AddressCurrent = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"Tag\00", align 1
@inputline = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srec2bin(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  %13 = alloca [256 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -559038910, i32* %14, align 4
  store i32 -17958334, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %122

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 3
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i8*, i8** @TRUE, align 8
  store i8* %25, i8** @BigEndian, align 8
  br label %28

26:                                               ; preds = %21
  %27 = load i8*, i8** @FALSE, align 8
  store i8* %27, i8** @BigEndian, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i8*, i8** @BigEndian, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %16, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %16, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i8*, i8** @BigEndian, align 8
  %40 = icmp ne i8* %39, null
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %43 = load i32, i32* %16, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %35
  %46 = load i8**, i8*** %6, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32* @fopen(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i8**, i8*** %6, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  store i32 0, i32* %4, align 4
  br label %122

57:                                               ; preds = %45
  %58 = load i8**, i8*** %6, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i32* @fopen(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %61, i32** @fOut, align 8
  %62 = load i32*, i32** @fOut, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load i8**, i8*** %6, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %67)
  %69 = load i32*, i32** %11, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @fclose(i32* %72)
  br label %74

74:                                               ; preds = %71, %64
  store i32 0, i32* %4, align 4
  br label %122

75:                                               ; preds = %57
  %76 = load i8*, i8** @FALSE, align 8
  store i8* %76, i8** @RecStart, align 8
  store i32 -1, i32* @AddressCurrent, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @dumpfTell(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @binOut32(i32 %79)
  store i64 0, i64* @inputline, align 8
  %81 = load i8*, i8** @TRUE, align 8
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %10, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %85 = call i32 @readline(i32* %83, i8* %84, i32 256)
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %104, %75
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, -1
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i1 [ false, %86 ], [ %91, %89 ]
  br i1 %93, label %94, label %108

94:                                               ; preds = %92
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %96 = call i64 @strlen(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %100 = call i32 @srecLine(i8* %99)
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = call i32 (...) @WaitDisplay()
  br label %104

104:                                              ; preds = %98, %94
  %105 = load i32*, i32** %11, align 8
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %107 = call i32 @readline(i32* %105, i8* %106, i32 256)
  store i32 %107, i32* %9, align 4
  br label %86

108:                                              ; preds = %92
  %109 = call i32 (...) @binRecEnd()
  %110 = load i32*, i32** %11, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @fclose(i32* %113)
  br label %115

115:                                              ; preds = %112, %108
  %116 = load i32*, i32** @fOut, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32*, i32** @fOut, align 8
  %120 = call i32 @fclose(i32* %119)
  br label %121

121:                                              ; preds = %118, %115
  store i32 1, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %74, %52, %19
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @dumpfTell(i8*, i32) #1

declare dso_local i32 @binOut32(i32) #1

declare dso_local i32 @readline(i32*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @srecLine(i8*) #1

declare dso_local i32 @WaitDisplay(...) #1

declare dso_local i32 @binRecEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
