; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs_common.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs_common.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EI_NIDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"--abs-syms\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"--abs-relocs\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"--reloc-info\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"--text\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"--realmode\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Cannot open %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"Cannot read %s: %s\00", align 1
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
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @EI_NIDENT, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i32 1, i32* %13, align 4
  br label %21

21:                                               ; preds = %69, %2
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %72

25:                                               ; preds = %21
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %35, label %61

35:                                               ; preds = %25
  %36 = load i8*, i8** %16, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %6, align 4
  br label %69

40:                                               ; preds = %35
  %41 = load i8*, i8** %16, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %7, align 4
  br label %69

45:                                               ; preds = %40
  %46 = load i8*, i8** %16, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %8, align 4
  br label %69

50:                                               ; preds = %45
  %51 = load i8*, i8** %16, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %9, align 4
  br label %69

55:                                               ; preds = %50
  %56 = load i8*, i8** %16, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  br label %69

60:                                               ; preds = %55
  br label %67

61:                                               ; preds = %25
  %62 = load i8*, i8** %11, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** %16, align 8
  store i8* %65, i8** %11, align 8
  br label %69

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %60
  %68 = call i32 (...) @usage()
  br label %69

69:                                               ; preds = %67, %64, %59, %54, %49, %44, %39
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %21

72:                                               ; preds = %21
  %73 = load i8*, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = call i32 (...) @usage()
  br label %77

77:                                               ; preds = %75, %72
  %78 = load i8*, i8** %11, align 8
  %79 = call i32* @fopen(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %79, i32** %12, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %11, align 8
  %84 = load i32, i32* @errno, align 4
  %85 = call i32 @strerror(i32 %84)
  %86 = call i32 @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %83, i32 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = bitcast i8* %20 to i8**
  %89 = load i32, i32* @EI_NIDENT, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @fread(i8** %88, i32 1, i32 %89, i32* %90)
  %92 = load i32, i32* @EI_NIDENT, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* @errno, align 4
  %97 = call i32 @strerror(i32 %96)
  %98 = call i32 @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %95, i32 %97)
  br label %99

99:                                               ; preds = %94, %87
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @rewind(i32* %100)
  %102 = load i64, i64* @EI_CLASS, align 8
  %103 = getelementptr inbounds i8, i8* %20, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* @ELFCLASS64, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %99
  %110 = load i32*, i32** %12, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @process_64(i32* %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  br label %125

117:                                              ; preds = %99
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @process_32(i32* %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %117, %109
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @fclose(i32* %126)
  store i32 0, i32* %3, align 4
  %128 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %3, align 4
  ret i32 %129
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

declare dso_local i32 @process_64(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @process_32(i32*, i32, i32, i32, i32, i32) #2

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
