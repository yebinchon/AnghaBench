; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_spw303v.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_spw303v.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@IMAGETAG_CRC_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"i:o:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"illegal arg \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"can not open \22%s\22 for reading\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"can not open \22%s\22 for writing\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"fread error\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"fwrite error\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = load i32*, i32** @stdin, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** @stdout, align 8
  store i32* %19, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 1, i32* %16, align 4
  %20 = load i32, i32* @IMAGETAG_CRC_START, align 4
  store i32 %20, i32* %17, align 4
  br label %21

21:                                               ; preds = %35, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %11, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %33 [
    i32 105, label %28
    i32 111, label %30
    i32 104, label %32
  ]

28:                                               ; preds = %26
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %9, align 8
  br label %35

30:                                               ; preds = %26
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** %10, align 8
  br label %35

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %26, %32
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %30, %28
  br label %21

36:                                               ; preds = %21
  %37 = load i32, i32* @optind, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @optind, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %40, %36
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* @optind, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = call i32 (...) @usage()
  br label %52

52:                                               ; preds = %43, %40
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i8*, i8** %9, align 8
  %57 = call i32* @fopen(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %57, i32** %7, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @stderr, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = call i32 (...) @usage()
  br label %64

64:                                               ; preds = %59, %55, %52
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load i8*, i8** %10, align 8
  %69 = call i32* @fopen(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %69, i32** %8, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  %75 = call i32 (...) @usage()
  br label %76

76:                                               ; preds = %71, %67, %64
  br label %77

77:                                               ; preds = %119, %76
  %78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %79 = load i32*, i32** %7, align 8
  %80 = call i64 @fread(i8* %78, i32 1, i32 1024, i32* %79)
  store i64 %80, i64* %15, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %120

82:                                               ; preds = %77
  %83 = load i64, i64* %15, align 8
  %84 = icmp ult i64 %83, 1024
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i32*, i32** %7, align 8
  %87 = call i64 @ferror(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %124, %89
  %91 = load i32, i32* @stderr, align 4
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %93, i32* %3, align 4
  br label %136

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %82
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i64, i64* %15, align 8
  %100 = icmp uge i64 %99, 256
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %103 = call i32 @fix_header(i8* %102)
  store i32 0, i32* %16, align 4
  br label %104

104:                                              ; preds = %101, %98, %95
  %105 = load i32, i32* %17, align 4
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %107 = load i64, i64* %15, align 8
  %108 = call i32 @crc32(i32 %105, i8* %106, i64 %107)
  store i32 %108, i32* %17, align 4
  %109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %110 = load i64, i64* %15, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @fwrite(i8* %109, i64 %110, i32 1, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %129, %114
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %118 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %118, i32* %3, align 4
  br label %136

119:                                              ; preds = %104
  br label %77

120:                                              ; preds = %77
  %121 = load i32*, i32** %7, align 8
  %122 = call i64 @ferror(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %90

125:                                              ; preds = %120
  %126 = load i32*, i32** %8, align 8
  %127 = call i64 @fflush(i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %115

130:                                              ; preds = %125
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @fclose(i32* %131)
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @fclose(i32* %133)
  %135 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %130, %115, %90
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fix_header(i8*) #1

declare dso_local i32 @crc32(i32, i8*, i64) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #1

declare dso_local i64 @fflush(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
