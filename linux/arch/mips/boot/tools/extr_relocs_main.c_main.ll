; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/boot/tools/extr_relocs_main.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/boot/tools/extr_relocs_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EI_NIDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"--reloc-info\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--text\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"--bin\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"--keep\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Cannot open %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Cannot read %s: %s\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@ELFCLASS64 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @EI_NIDENT, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i32 1, i32* %12, align 4
  br label %20

20:                                               ; preds = %63, %2
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %20
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %15, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 45
  br i1 %33, label %34, label %55

34:                                               ; preds = %24
  %35 = load i8*, i8** %15, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %63

39:                                               ; preds = %34
  %40 = load i8*, i8** %15, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %63

44:                                               ; preds = %39
  %45 = load i8*, i8** %15, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %8, align 4
  br label %63

49:                                               ; preds = %44
  %50 = load i8*, i8** %15, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %9, align 4
  br label %63

54:                                               ; preds = %49
  br label %61

55:                                               ; preds = %24
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %15, align 8
  store i8* %59, i8** %10, align 8
  br label %63

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %54
  %62 = call i32 (...) @usage()
  br label %63

63:                                               ; preds = %61, %58, %53, %48, %43, %38
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %20

66:                                               ; preds = %20
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = call i32 (...) @usage()
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i8*, i8** %10, align 8
  %73 = call i32* @fopen(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %73, i32** %11, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* @errno, align 4
  %79 = call i32 @strerror(i32 %78)
  %80 = call i32 @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %77, i32 %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = bitcast i8* %19 to i8**
  %83 = load i32, i32* @EI_NIDENT, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @fread(i8** %82, i32 1, i32 %83, i32* %84)
  %86 = load i32, i32* @EI_NIDENT, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* @errno, align 4
  %91 = call i32 @strerror(i32 %90)
  %92 = call i32 @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %89, i32 %91)
  br label %93

93:                                               ; preds = %88, %81
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @rewind(i32* %94)
  %96 = load i64, i64* @EI_CLASS, align 8
  %97 = getelementptr inbounds i8, i8* %19, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8, i8* @ELFCLASS64, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %93
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @process_64(i32* %104, i32 %105, i32 %106, i32 %107, i32 %108)
  br label %117

110:                                              ; preds = %93
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @process_32(i32* %111, i32 %112, i32 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %110, %103
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @fclose(i32* %118)
  store i32 0, i32* %3, align 4
  %120 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @die(i8*, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @fread(i8**, i32, i32, i32*) #2

declare dso_local i32 @rewind(i32*) #2

declare dso_local i32 @process_64(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @process_32(i32*, i32, i32, i32, i32) #2

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
