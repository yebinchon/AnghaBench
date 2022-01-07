; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_util.c_escape_str.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_util.c_escape_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @escape_str(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store i8* null, i8** %2, align 8
  br label %101

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = mul nsw i32 %18, 4
  %20 = add nsw i32 %19, 1
  %21 = call i8* @xmalloc(i32 %20)
  store i8* %21, i8** %4, align 8
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %95, %15
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %98

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  switch i32 %29, label %50 [
    i32 92, label %30
    i32 10, label %35
    i32 13, label %40
    i32 9, label %45
  ]

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  store i8 92, i8* %31, align 1
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %5, align 8
  store i8 92, i8* %33, align 1
  br label %95

35:                                               ; preds = %26
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  store i8 92, i8* %36, align 1
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  store i8 110, i8* %38, align 1
  br label %95

40:                                               ; preds = %26
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %5, align 8
  store i8 92, i8* %41, align 1
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 8
  store i8 114, i8* %43, align 1
  br label %95

45:                                               ; preds = %26
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  store i8 92, i8* %46, align 1
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %5, align 8
  store i8 116, i8* %48, align 1
  br label %95

50:                                               ; preds = %26
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp slt i32 %53, 32
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp sge i32 %58, 127
  br i1 %59, label %60, label %89

60:                                               ; preds = %55, %50
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  store i8 92, i8* %61, align 1
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = ashr i32 %65, 6
  %67 = and i32 %66, 7
  %68 = add nsw i32 48, %67
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %5, align 8
  store i8 %69, i8* %70, align 1
  %72 = load i8*, i8** %6, align 8
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = ashr i32 %74, 3
  %76 = and i32 %75, 7
  %77 = add nsw i32 48, %76
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %5, align 8
  store i8 %78, i8* %79, align 1
  %81 = load i8*, i8** %6, align 8
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 7
  %85 = add nsw i32 48, %84
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %5, align 8
  store i8 %86, i8* %87, align 1
  br label %94

89:                                               ; preds = %55
  %90 = load i8*, i8** %6, align 8
  %91 = load i8, i8* %90, align 1
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %5, align 8
  store i8 %91, i8* %92, align 1
  br label %94

94:                                               ; preds = %89, %60
  br label %95

95:                                               ; preds = %94, %45, %40, %35, %30
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %6, align 8
  br label %22

98:                                               ; preds = %22
  %99 = load i8*, i8** %5, align 8
  store i8 0, i8* %99, align 1
  %100 = load i8*, i8** %4, align 8
  store i8* %100, i8** %2, align 8
  br label %101

101:                                              ; preds = %98, %14
  %102 = load i8*, i8** %2, align 8
  ret i8* %102
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
