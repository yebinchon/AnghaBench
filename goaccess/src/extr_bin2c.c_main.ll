; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_bin2c.c_main.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_bin2c.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Usage: %s binary_file output_file array_name\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: can't open %s for reading\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to malloc bin2c.c buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: can't open %s for writing\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"const char %s[%u] = {\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"0x%.2x\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"\0A};\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"const int %s_length = %u;\0A\00", align 1
@BZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32*
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 -1, i32* %3, align 4
  br label %136

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load i32, i32* @stderr, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %36, i8* %39)
  store i32 -1, i32* %3, align 4
  br label %136

41:                                               ; preds = %23
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* @SEEK_END, align 4
  %44 = call i32 @fseek(i32* %42, i32 0, i32 %43)
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @ftell(i32* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* @SEEK_SET, align 4
  %49 = call i32 @fseek(i32* %47, i32 0, i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i8* @malloc(i32 %50)
  store i8* %51, i8** %6, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %41
  %54 = load i32, i32* @stderr, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @fclose(i32* %58)
  store i32 -1, i32* %3, align 4
  br label %136

60:                                               ; preds = %41
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @fread(i8* %61, i32 %62, i32 1, i32* %63)
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @fclose(i32* %65)
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32* @fopen(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %70, i32** %12, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %60
  %74 = load i32, i32* @stderr, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i32*
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %79, i8* %82)
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @free(i8* %84)
  store i32 -1, i32* %3, align 4
  br label %136

86:                                               ; preds = %60
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 3
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %91, i32 %92)
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %122, %86
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %125

98:                                               ; preds = %94
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %105

104:                                              ; preds = %98
  store i32 1, i32* %10, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i32, i32* %8, align 4
  %107 = urem i32 %106, 11
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 (i32*, i8*, ...) @fprintf(i32* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %105
  %113 = load i32*, i32** %12, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = load i32, i32* %8, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = and i32 %119, 255
  %121 = call i32 (i32*, i8*, ...) @fprintf(i32* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %112
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %94

125:                                              ; preds = %94
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 (i32*, i8*, ...) @fprintf(i32* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %128 = load i32*, i32** %12, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 (i32*, i8*, ...) @fprintf(i32* %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8* %129, i32 %130)
  %132 = load i32*, i32** %12, align 8
  %133 = call i32 @fclose(i32* %132)
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @free(i8* %134)
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %125, %73, %53, %30, %15
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
