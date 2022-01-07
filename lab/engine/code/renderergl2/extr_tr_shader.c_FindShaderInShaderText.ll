; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_FindShaderInShaderText.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_FindShaderInShaderText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SHADERTEXT_HASH = common dso_local global i32 0, align 4
@shaderTextHashTable = common dso_local global i8*** null, align 8
@qtrue = common dso_local global i32 0, align 4
@s_shaderText = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @FindShaderInShaderText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @FindShaderInShaderText(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @MAX_SHADERTEXT_HASH, align 4
  %10 = call i32 @generateHashValue(i8* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i8***, i8**** @shaderTextHashTable, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8**, i8*** %11, i64 %13
  %15 = load i8**, i8*** %14, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %17, label %52

17:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %48, %17
  %19 = load i8***, i8**** @shaderTextHashTable, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8**, i8*** %19, i64 %21
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %18
  %30 = load i8***, i8**** @shaderTextHashTable, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8**, i8*** %30, i64 %32
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %5, align 8
  %39 = load i32, i32* @qtrue, align 4
  %40 = call i8* @COM_ParseExt(i8** %5, i32 %39)
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @Q_stricmp(i8* %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %29
  %46 = load i8*, i8** %5, align 8
  store i8* %46, i8** %2, align 8
  br label %78

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %18

51:                                               ; preds = %18
  br label %52

52:                                               ; preds = %51, %1
  %53 = load i8*, i8** @s_shaderText, align 8
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i8* null, i8** %2, align 8
  br label %78

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %76
  %59 = load i32, i32* @qtrue, align 4
  %60 = call i8* @COM_ParseExt(i8** %5, i32 %59)
  store i8* %60, i8** %4, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %77

67:                                               ; preds = %58
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @Q_stricmp(i8* %68, i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %5, align 8
  store i8* %73, i8** %2, align 8
  br label %78

74:                                               ; preds = %67
  %75 = call i32 @SkipBracedSection(i8** %5, i32 0)
  br label %76

76:                                               ; preds = %74
  br label %58

77:                                               ; preds = %66
  store i8* null, i8** %2, align 8
  br label %78

78:                                               ; preds = %77, %72, %56, %45
  %79 = load i8*, i8** %2, align 8
  ret i8* %79
}

declare dso_local i32 @generateHashValue(i8*, i32) #1

declare dso_local i8* @COM_ParseExt(i8**, i32) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @SkipBracedSection(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
