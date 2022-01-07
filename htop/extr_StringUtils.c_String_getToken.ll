; ModuleID = '/home/carl/AnghaBench/htop/extr_StringUtils.c_String_getToken.c'
source_filename = "/home/carl/AnghaBench/htop/extr_StringUtils.c_String_getToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @String_getToken(i8* %0, i16 zeroext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca [50 x i8], align 16
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i16 %1, i16* %4, align 2
  %12 = load i8*, i8** %3, align 8
  %13 = call zeroext i16 @strlen(i8* %12)
  store i16 %13, i16* %5, align 2
  store i8 0, i8* %6, align 1
  store i16 0, i16* %7, align 2
  store i16 0, i16* %9, align 2
  store i16 0, i16* %10, align 2
  br label %14

14:                                               ; preds = %100, %2
  %15 = load i16, i16* %10, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* %5, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %103

20:                                               ; preds = %14
  %21 = load i8, i8* %6, align 1
  store i8 %21, i8* %11, align 1
  %22 = load i8*, i8** %3, align 8
  %23 = load i16, i16* %10, align 2
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 32
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 0, i32 1
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %6, align 1
  %32 = load i8, i8* %11, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %20
  %36 = load i8, i8* %6, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i16, i16* %7, align 2
  %41 = add i16 %40, 1
  store i16 %41, i16* %7, align 2
  br label %42

42:                                               ; preds = %39, %35, %20
  %43 = load i8, i8* %6, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %99

46:                                               ; preds = %42
  %47 = load i16, i16* %7, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, i16* %4, align 2
  %50 = zext i16 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %98

52:                                               ; preds = %46
  %53 = load i8*, i8** %3, align 8
  %54 = load i16, i16* %10, align 2
  %55 = zext i16 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 32
  br i1 %59, label %60, label %98

60:                                               ; preds = %52
  %61 = load i8*, i8** %3, align 8
  %62 = load i16, i16* %10, align 2
  %63 = zext i16 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %60
  %69 = load i8*, i8** %3, align 8
  %70 = load i16, i16* %10, align 2
  %71 = zext i16 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 10
  br i1 %75, label %76, label %98

76:                                               ; preds = %68
  %77 = load i8*, i8** %3, align 8
  %78 = load i16, i16* %10, align 2
  %79 = zext i16 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = load i64, i64* @EOF, align 8
  %84 = trunc i64 %83 to i8
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %76
  %88 = load i8*, i8** %3, align 8
  %89 = load i16, i16* %10, align 2
  %90 = zext i16 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = load i16, i16* %9, align 2
  %94 = zext i16 %93 to i64
  %95 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 %94
  store i8 %92, i8* %95, align 1
  %96 = load i16, i16* %9, align 2
  %97 = add i16 %96, 1
  store i16 %97, i16* %9, align 2
  br label %98

98:                                               ; preds = %87, %76, %68, %60, %52, %46
  br label %99

99:                                               ; preds = %98, %42
  br label %100

100:                                              ; preds = %99
  %101 = load i16, i16* %10, align 2
  %102 = add i16 %101, 1
  store i16 %102, i16* %10, align 2
  br label %14

103:                                              ; preds = %14
  %104 = load i16, i16* %9, align 2
  %105 = zext i16 %104 to i64
  %106 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 %105
  store i8 0, i8* %106, align 1
  %107 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %108 = call i64 @xStrdup(i8* %107)
  %109 = inttoptr i64 %108 to i8*
  ret i8* %109
}

declare dso_local zeroext i16 @strlen(i8*) #1

declare dso_local i64 @xStrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
