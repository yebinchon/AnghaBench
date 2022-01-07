; ModuleID = '/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_BMK_benchFiles.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_BMK_benchFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Pb opening %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"\0AError: not enough memory!\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\0DLoading %s...        \0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"\0AError: problem reading file '%s' !!    \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32)* @BMK_benchFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BMK_benchFiles(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %86, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %89

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %27, i32** %11, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @BMK_selectBenchedSize(i8* %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = add i64 %30, 16
  %32 = add i64 %31, 3
  %33 = call i64 @calloc(i64 %32, i32 1)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 15
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 15
  %39 = ptrtoint i8* %38 to i64
  %40 = and i64 %39, 15
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i8, i8* %36, i64 %41
  store i8* %42, i8** %14, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %20
  %46 = load i8*, i8** %10, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45, %20
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @free(i8* %51)
  store i32 11, i32* %4, align 4
  br label %91

53:                                               ; preds = %45
  %54 = load i8*, i8** %13, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @fclose(i32* %58)
  store i32 12, i32* %4, align 4
  br label %91

60:                                               ; preds = %53
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = load i8*, i8** %14, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i64 @fread(i8* %63, i32 1, i64 %64, i32* %65)
  store i64 %66, i64* %15, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @fclose(i32* %67)
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* %12, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %60
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 @free(i8* %75)
  store i32 13, i32* %4, align 4
  br label %91

77:                                               ; preds = %60
  %78 = load i8*, i8** %14, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @BMK_benchMem(i8* %78, i64 %79, i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @free(i8* %84)
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %16

89:                                               ; preds = %16
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %72, %56, %48
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @BMK_selectBenchedSize(i8*) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @BMK_benchMem(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
