; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktitanimg.c_cs_calc_sum.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktitanimg.c_cs_calc_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFLEN = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@crctab = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs_calc_sum(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @BUFLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @SEEK_SET, align 4
  %21 = call i32 @fseek(i32* %19, i32 0, i32 %20)
  br label %22

22:                                               ; preds = %68, %3
  %23 = load i32, i32* @BUFLEN, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @fread(i8* %18, i32 1, i32 %23, i32* %24)
  store i64 %25, i64* %12, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %69

27:                                               ; preds = %22
  store i8* %18, i8** %13, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = add i64 %28, %29
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %99

34:                                               ; preds = %27
  %35 = load i64, i64* %12, align 8
  %36 = load i32, i32* @BUFLEN, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* %12, align 8
  %44 = sub i64 %43, 8
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %42, %39, %34
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %11, align 8
  br label %49

49:                                               ; preds = %53, %45
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %12, align 8
  %52 = icmp ne i64 %50, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load i64, i64* %10, align 8
  %55 = shl i64 %54, 8
  %56 = load i64*, i64** @crctab, align 8
  %57 = load i64, i64* %10, align 8
  %58 = lshr i64 %57, 24
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %13, align 8
  %61 = load i8, i8* %59, align 1
  %62 = zext i8 %61 to i64
  %63 = xor i64 %58, %62
  %64 = and i64 %63, 255
  %65 = getelementptr inbounds i64, i64* %56, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = xor i64 %55, %66
  store i64 %67, i64* %10, align 8
  br label %49

68:                                               ; preds = %49
  br label %22

69:                                               ; preds = %22
  %70 = load i32*, i32** %5, align 8
  %71 = call i64 @ferror(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %99

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %90, %74
  %76 = load i64, i64* %11, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load i64, i64* %10, align 8
  %80 = shl i64 %79, 8
  %81 = load i64*, i64** @crctab, align 8
  %82 = load i64, i64* %10, align 8
  %83 = lshr i64 %82, 24
  %84 = load i64, i64* %11, align 8
  %85 = xor i64 %83, %84
  %86 = and i64 %85, 255
  %87 = getelementptr inbounds i64, i64* %81, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = xor i64 %80, %88
  store i64 %89, i64* %10, align 8
  br label %90

90:                                               ; preds = %78
  %91 = load i64, i64* %11, align 8
  %92 = lshr i64 %91, 8
  store i64 %92, i64* %11, align 8
  br label %75

93:                                               ; preds = %75
  %94 = load i64, i64* %10, align 8
  %95 = xor i64 %94, -1
  %96 = and i64 %95, 4294967295
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64*, i64** %6, align 8
  store i64 %97, i64* %98, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %99

99:                                               ; preds = %93, %73, %33
  %100 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @ferror(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
