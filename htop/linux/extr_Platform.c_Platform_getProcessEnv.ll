; ModuleID = '/home/carl/AnghaBench/htop/linux/extr_Platform.c_Platform_getProcessEnv.c'
source_filename = "/home/carl/AnghaBench/htop/linux/extr_Platform.c_Platform_getProcessEnv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"/proc/%d/environ\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Platform_getProcessEnv(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [33 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %9 = getelementptr inbounds [33 x i8], [33 x i8]* %3, i64 0, i64 0
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @xSnprintf(i8* %9, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = getelementptr inbounds [33 x i8], [33 x i8]* %3, i64 0, i64 0
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %13, i32** %4, align 8
  store i8* null, i8** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %83

16:                                               ; preds = %1
  store i64 4096, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i8* @xMalloc(i64 %17)
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %34, %16
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %26, %27
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @fread(i8* %25, i32 1, i64 %28, i32* %29)
  store i64 %30, i64* %8, align 8
  %31 = icmp ugt i64 %30, 0
  br label %32

32:                                               ; preds = %22, %19
  %33 = phi i1 [ false, %19 ], [ %31, %22 ]
  br i1 %33, label %34, label %43

34:                                               ; preds = %32
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = mul i64 %38, 2
  store i64 %39, i64* %6, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i8* @xRealloc(i8* %40, i64 %41)
  store i8* %42, i8** %5, align 8
  br label %19

43:                                               ; preds = %32
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = load i64, i64* %7, align 8
  %47 = icmp ult i64 %46, 2
  br i1 %47, label %64, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %50, 1
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %58, 2
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %56, %48, %43
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, 2
  %67 = load i64, i64* %6, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i8*, i8** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, 2
  %73 = call i8* @xRealloc(i8* %70, i64 %72)
  store i8* %73, i8** %5, align 8
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load i8*, i8** %5, align 8
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, 1
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 0, i8* %81, align 1
  br label %82

82:                                               ; preds = %74, %56
  br label %83

83:                                               ; preds = %82, %1
  %84 = load i8*, i8** %5, align 8
  ret i8* %84
}

declare dso_local i32 @xSnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @xMalloc(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i8* @xRealloc(i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
