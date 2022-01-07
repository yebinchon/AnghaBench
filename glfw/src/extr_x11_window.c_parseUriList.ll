; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c_parseUriList.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c_parseUriList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i32*)* @parseUriList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @parseUriList(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [3 x i8], align 1
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8** null, i8*** %6, align 8
  %10 = load i32*, i32** %4, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %111, %21, %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @strtok(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %13, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %112

15:                                               ; preds = %11
  store i8* null, i8** %3, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 35
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %11

22:                                               ; preds = %15
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = call i64 @strncmp(i8* %23, i8* %24, i64 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 %31
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %39, %29
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 47
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  br label %34

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = add nsw i64 %48, 1
  %50 = call i8* @calloc(i64 %49, i32 1)
  store i8* %50, i8** %8, align 8
  %51 = load i8**, i8*** %6, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = call i8** @realloc(i8** %51, i32 %56)
  store i8** %57, i8*** %6, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i8**, i8*** %6, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %59, i64 %63
  store i8* %58, i8** %64, align 8
  br label %65

65:                                               ; preds = %106, %43
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %111

69:                                               ; preds = %65
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 37
  br i1 %74, label %75, label %102

75:                                               ; preds = %69
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %75
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  store i8 %91, i8* %88, align 1
  %92 = getelementptr inbounds i8, i8* %88, i64 1
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = load i8, i8* %94, align 1
  store i8 %95, i8* %92, align 1
  %96 = getelementptr inbounds i8, i8* %92, i64 1
  store i8 0, i8* %96, align 1
  %97 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %98 = call signext i8 @strtol(i8* %97, i32* null, i32 16)
  %99 = load i8*, i8** %8, align 8
  store i8 %98, i8* %99, align 1
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 2
  store i8* %101, i8** %7, align 8
  br label %106

102:                                              ; preds = %81, %75, %69
  %103 = load i8*, i8** %7, align 8
  %104 = load i8, i8* %103, align 1
  %105 = load i8*, i8** %8, align 8
  store i8 %104, i8* %105, align 1
  br label %106

106:                                              ; preds = %102, %87
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %8, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %7, align 8
  br label %65

111:                                              ; preds = %65
  br label %11

112:                                              ; preds = %11
  %113 = load i8**, i8*** %6, align 8
  ret i8** %113
}

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local signext i8 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
