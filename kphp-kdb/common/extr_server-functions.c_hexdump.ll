; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_hexdump.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c%02x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%c  \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hexdump(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %5, align 8
  br label %10

10:                                               ; preds = %97, %2
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %14, label %102

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = ptrtoint i8* %15 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 16
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 16, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %14
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = trunc i32 %31 to i8
  %33 = call i32 (i32, i8*, i8, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %32)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %62, %24
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 16
  br i1 %36, label %37, label %65

37:                                               ; preds = %34
  store i8 32, i8* %6, align 1
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 8
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @fputc(i8 signext 32, i32 %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8, i8* %6, align 1
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = call i32 (i32, i8*, i8, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8 signext %49, i32 %55)
  br label %61

57:                                               ; preds = %43
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8, i8* %6, align 1
  %60 = call i32 (i32, i8*, i8, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8 signext %59)
  br label %61

61:                                               ; preds = %57, %47
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %34

65:                                               ; preds = %34
  store i8 32, i8* %6, align 1
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8, i8* %6, align 1
  %68 = call i32 (i32, i8*, i8, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8 signext %67)
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %94, %65
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp slt i32 %79, 32
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %89

82:                                               ; preds = %73
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  br label %89

89:                                               ; preds = %82, %81
  %90 = phi i32 [ 46, %81 ], [ %88, %82 ]
  %91 = trunc i32 %90 to i8
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 @putc(i8 signext %91, i32 %92)
  br label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %69

97:                                               ; preds = %69
  %98 = load i32, i32* @stderr, align 4
  %99 = call i32 @putc(i8 signext 10, i32 %98)
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 16
  store i8* %101, i8** %5, align 8
  br label %10

102:                                              ; preds = %10
  %103 = load i8*, i8** %4, align 8
  %104 = load i8*, i8** %3, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  ret i32 %108
}

declare dso_local i32 @fprintf(i32, i8*, i8 signext, ...) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
