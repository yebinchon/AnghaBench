; ModuleID = '/home/carl/AnghaBench/hashcat/deps/zlib/contrib/minizip/extr_crypt.h_crypthead.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/zlib/contrib/minizip/extr_crypt.h_crypthead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RAND_HEAD_LEN = common dso_local global i32 0, align 4
@crypthead.calls = internal global i32 0, align 4
@ZCR_SEED2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64*, i32*, i64)* @crypthead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypthead(i8* %0, i8* %1, i32 %2, i64* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load i32, i32* @RAND_HEAD_LEN, align 4
  %21 = sub nsw i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %17, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %18, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @RAND_HEAD_LEN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %122

29:                                               ; preds = %6
  %30 = load i32, i32* @crypthead.calls, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* @crypthead.calls, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = call i32 @time(i32* null)
  %35 = load i32, i32* @ZCR_SEED2, align 4
  %36 = xor i32 %34, %35
  %37 = call i32 @srand(i32 %36)
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i8*, i8** %8, align 8
  %40 = load i64*, i64** %11, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @init_keys(i8* %39, i64* %40, i32* %41)
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %61, %38
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @RAND_HEAD_LEN, align 4
  %46 = sub nsw i32 %45, 2
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = call i32 (...) @rand()
  %50 = ashr i32 %49, 7
  %51 = and i32 %50, 255
  store i32 %51, i32* %16, align 4
  %52 = load i64*, i64** %11, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i64 @zencode(i64* %52, i32* %53, i32 %54, i32 %55)
  %57 = trunc i64 %56 to i8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %24, i64 %59
  store i8 %57, i8* %60, align 1
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %43

64:                                               ; preds = %43
  %65 = load i8*, i8** %8, align 8
  %66 = load i64*, i64** %11, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @init_keys(i8* %65, i64* %66, i32* %67)
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %89, %64
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @RAND_HEAD_LEN, align 4
  %72 = sub nsw i32 %71, 2
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load i64*, i64** %11, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %24, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i32, i32* %15, align 4
  %83 = call i64 @zencode(i64* %75, i32* %76, i32 %81, i32 %82)
  %84 = trunc i64 %83 to i8
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 %84, i8* %88, align 1
  br label %89

89:                                               ; preds = %74
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %69

92:                                               ; preds = %69
  %93 = load i64*, i64** %11, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load i64, i64* %13, align 8
  %96 = lshr i64 %95, 16
  %97 = trunc i64 %96 to i32
  %98 = and i32 %97, 255
  %99 = load i32, i32* %15, align 4
  %100 = call i64 @zencode(i64* %93, i32* %94, i32 %98, i32 %99)
  %101 = trunc i64 %100 to i8
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  store i8 %101, i8* %106, align 1
  %107 = load i64*, i64** %11, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = load i64, i64* %13, align 8
  %110 = lshr i64 %109, 24
  %111 = trunc i64 %110 to i32
  %112 = and i32 %111, 255
  %113 = load i32, i32* %15, align 4
  %114 = call i64 @zencode(i64* %107, i32* %108, i32 %112, i32 %113)
  %115 = trunc i64 %114 to i8
  %116 = load i8*, i8** %9, align 8
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8 %115, i8* %120, align 1
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %122

122:                                              ; preds = %92, %28
  %123 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @srand(i32) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @init_keys(i8*, i64*, i32*) #2

declare dso_local i32 @rand(...) #2

declare dso_local i64 @zencode(i64*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
