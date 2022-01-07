; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/cpp/extr_hideset.c_newhideset.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/cpp/extr_hideset.c_newhideset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HSSIZ = common dso_local global i32 0, align 4
@hidesets = common dso_local global i32*** null, align 8
@nhidesets = common dso_local global i32 0, align 4
@maxhidesets = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Out of memory from realloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @newhideset(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %13 = load i32, i32* @HSSIZ, align 4
  %14 = add nsw i32 %13, 3
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32*, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32***, i32**** @hidesets, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32**, i32*** %18, i64 %20
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @inserths(i32** %17, i32** %22, i32* %23)
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %54, %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @nhidesets, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  store i32** %17, i32*** %10, align 8
  %30 = load i32***, i32**** @hidesets, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32**, i32*** %30, i64 %32
  %34 = load i32**, i32*** %33, align 8
  store i32** %34, i32*** %11, align 8
  br label %35

35:                                               ; preds = %48, %29
  %36 = load i32**, i32*** %10, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = load i32**, i32*** %11, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %37, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load i32**, i32*** %10, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %105

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47
  %49 = load i32**, i32*** %10, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i32 1
  store i32** %50, i32*** %10, align 8
  %51 = load i32**, i32*** %11, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i32 1
  store i32** %52, i32*** %11, align 8
  br label %35

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %25

57:                                               ; preds = %25
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @HSSIZ, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %105

63:                                               ; preds = %57
  %64 = load i32, i32* @nhidesets, align 4
  %65 = load i32, i32* @maxhidesets, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  %68 = load i32, i32* @maxhidesets, align 4
  %69 = mul nsw i32 3, %68
  %70 = sdiv i32 %69, 2
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @maxhidesets, align 4
  %72 = load i32***, i32**** @hidesets, align 8
  %73 = load i32, i32* @maxhidesets, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 8, %74
  %76 = trunc i64 %75 to i32
  %77 = call i64 @realloc(i32*** %72, i32 %76)
  %78 = inttoptr i64 %77 to i32***
  store i32*** %78, i32**** @hidesets, align 8
  %79 = load i32***, i32**** @hidesets, align 8
  %80 = icmp eq i32*** %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %67
  %82 = load i32, i32* @FATAL, align 4
  %83 = call i32 @error(i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %67
  br label %85

85:                                               ; preds = %84, %63
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 8
  %89 = trunc i64 %88 to i32
  %90 = call i64 @domalloc(i32 %89)
  %91 = inttoptr i64 %90 to i32**
  store i32** %91, i32*** %10, align 8
  %92 = load i32**, i32*** %10, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memmove(i32** %92, i32** %17, i32 %96)
  %98 = load i32**, i32*** %10, align 8
  %99 = load i32***, i32**** @hidesets, align 8
  %100 = load i32, i32* @nhidesets, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32**, i32*** %99, i64 %101
  store i32** %98, i32*** %102, align 8
  %103 = load i32, i32* @nhidesets, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @nhidesets, align 4
  store i32 %103, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %105

105:                                              ; preds = %85, %61, %45
  %106 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @inserths(i32**, i32**, i32*) #2

declare dso_local i64 @realloc(i32***, i32) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i64 @domalloc(i32) #2

declare dso_local i32 @memmove(i32**, i32**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
