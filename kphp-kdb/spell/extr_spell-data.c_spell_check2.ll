; ModuleID = '/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-data.c_spell_check2.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-data.c_spell_check2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@spellers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s (%s)\0A\00", align 1
@SC = common dso_local global %struct.TYPE_5__** null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%.*s (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"words = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spell_check2(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_4__, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dyn_mark(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 3
  %28 = call i8* @zmalloc(i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 3
  %31 = call i8* @zmalloc(i32 %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @strcpy(i8* %32, i8* %33)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %126, %2
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @spellers, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %129

39:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @SC, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %41, i64 %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %47)
  %49 = load i8*, i8** %9, align 8
  store i8* %49, i8** %12, align 8
  %50 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @SC, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %50, i64 %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32* @new_aspell_document_checker(i32 %56)
  store i32* %57, i32** %13, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call i64 @aspell_error(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %39
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @aspell_error_message(i32* %62)
  %64 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  store i32 -1, i32* %3, align 4
  br label %138

65:                                               ; preds = %39
  %66 = load i32*, i32** %13, align 8
  %67 = call i32* @to_aspell_document_checker(i32* %66)
  store i32* %67, i32** %14, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @aspell_document_checker_process(i32* %68, i8* %69, i32 -1)
  br label %71

71:                                               ; preds = %65, %79
  %72 = load i32*, i32** %14, align 8
  %73 = call i64 @aspell_document_checker_next_misspelling(i32* %72)
  %74 = bitcast %struct.TYPE_4__* %15 to i64*
  store i64 %73, i64* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  br label %113

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @SC, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %87, i64 %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %81, i8* %86, i32 %93)
  %95 = load i8*, i8** %12, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @memcpy(i8* %95, i8* %100, i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %12, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %12, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %12, align 8
  store i8 32, i8* %109, align 1
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %71

113:                                              ; preds = %78
  %114 = load i32, i32* %11, align 4
  %115 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** %12, align 8
  store i8 0, i8* %116, align 1
  %117 = load i8*, i8** %8, align 8
  store i8* %117, i8** %12, align 8
  %118 = load i8*, i8** %9, align 8
  store i8* %118, i8** %8, align 8
  %119 = load i8*, i8** %12, align 8
  store i8* %119, i8** %9, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = call i32 @delete_aspell_document_checker(i32* %120)
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %113
  br label %129

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %35

129:                                              ; preds = %124, %35
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @dyn_release(i32 %130)
  %132 = load i32, i32* %6, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32*, i32** %5, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 %135, i32* %137, align 4
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %129, %61
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dyn_mark(i32) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32* @new_aspell_document_checker(i32) #1

declare dso_local i64 @aspell_error(i32*) #1

declare dso_local i32 @aspell_error_message(i32*) #1

declare dso_local i32* @to_aspell_document_checker(i32*) #1

declare dso_local i32 @aspell_document_checker_process(i32*, i8*, i32) #1

declare dso_local i64 @aspell_document_checker_next_misspelling(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @delete_aspell_document_checker(i32*) #1

declare dso_local i32 @dyn_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
