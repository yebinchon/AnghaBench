; ModuleID = '/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_getLine.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_getLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GetLine_ok = common dso_local global i32 0, align 4
@DEFAULT_LINE_LENGTH = common dso_local global i32 0, align 4
@GetLine_outOfMemory = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@GetLine_eof = common dso_local global i32 0, align 4
@MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@GetLine_exceedMaxLineLength = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32*)* @getLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getLine(i8** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @GetLine_ok, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %38

21:                                               ; preds = %17, %3
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @free(i8* %23)
  %25 = load i32*, i32** %6, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @DEFAULT_LINE_LENGTH, align 4
  %27 = call i64 @malloc(i32 %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = load i8**, i8*** %5, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* @GetLine_outOfMemory, align 4
  store i32 %34, i32* %4, align 4
  br label %112

35:                                               ; preds = %21
  %36 = load i32, i32* @DEFAULT_LINE_LENGTH, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %17
  br label %39

39:                                               ; preds = %96, %38
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @fgetc(i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @EOF, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @GetLine_eof, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %45
  br label %105

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %53, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %51
  store i8* null, i8** %11, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sdiv i32 %60, 2
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i32, i32* @MAX_LINE_LENGTH, align 4
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %68, %57
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %12, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @GetLine_exceedMaxLineLength, align 4
  store i32 %76, i32* %4, align 4
  br label %112

77:                                               ; preds = %70
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i64 @realloc(i8* %79, i32 %80)
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %11, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @GetLine_outOfMemory, align 4
  store i32 %86, i32* %4, align 4
  br label %112

87:                                               ; preds = %77
  %88 = load i8*, i8** %11, align 8
  %89 = load i8**, i8*** %5, align 8
  store i8* %88, i8** %89, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %51
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 10
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %105

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = trunc i32 %97 to i8
  %99 = load i8**, i8*** %5, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 %98, i8* %104, align 1
  br label %39

105:                                              ; preds = %95, %50
  %106 = load i8**, i8*** %5, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  store i8 0, i8* %110, align 1
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %105, %85, %75, %33
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i64 @realloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
