; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xutils.c_xdl_emit_diffrec.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xutils.c_xdl_emit_diffrec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (i32, %struct.TYPE_6__*, i32)*, i32 }
%struct.TYPE_6__ = type { i8*, i64 }

@.str = private unnamed_addr constant [30 x i8] c"\0A\\ No newline at end of file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdl_emit_diffrec(i8* %0, i64 %1, i8* %2, i64 %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [3 x %struct.TYPE_6__], align 16
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  store i32 2, i32* %12, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %13, i64 0, i64 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 16
  %17 = load i64, i64* %10, align 8
  %18 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %13, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %13, i64 0, i64 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 16
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %13, i64 0, i64 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %5
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = sub nsw i64 %30, 1
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 10
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %13, i64 0, i64 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %38, align 16
  %39 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %13, i64 0, i64 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 16
  %42 = call i64 @strlen(i8* %41)
  %43 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %13, i64 0, i64 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %36, %28, %5
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64 (i32, %struct.TYPE_6__*, i32)*, i64 (i32, %struct.TYPE_6__*, i32)** %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %13, i64 0, i64 0
  %55 = load i32, i32* %12, align 4
  %56 = call i64 %50(i32 %53, %struct.TYPE_6__* %54, i32 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i32 -1, i32* %6, align 4
  br label %60

59:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
