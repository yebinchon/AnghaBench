; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Delta.c_Delta_Encode.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Delta.c_Delta_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DELTA_STATE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Delta_Encode(i64* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* @DELTA_STATE_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i64*, i64** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @MyMemCpy(i64* %17, i64* %18, i32 %19)
  store i64 0, i64* %12, align 8
  br label %21

21:                                               ; preds = %59, %4
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %54, %25
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %31, %32
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %59

36:                                               ; preds = %34
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %17, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %41, %45
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %17, i64 %52
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %36
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %12, align 8
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %26

59:                                               ; preds = %34
  br label %21

60:                                               ; preds = %21
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = load i64*, i64** %5, align 8
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %17, i64 %68
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub i32 %70, %71
  %73 = call i32 @MyMemCpy(i64* %66, i64* %69, i32 %72)
  %74 = load i64*, i64** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = sub i64 0, %79
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @MyMemCpy(i64* %81, i64* %17, i32 %82)
  %84 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %84)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MyMemCpy(i64*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
