; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_stream/salsa2012/ref/extr_stream_salsa2012_ref.c_crypto_stream_salsa2012.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_stream/salsa2012/ref/extr_stream_salsa2012_ref.c_crypto_stream_salsa2012.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_stream_salsa2012(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca [32 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %127

18:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, i32* %13, align 4
  %21 = icmp ult i32 %20, 32
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %13, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = load i32, i32* %13, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 %29
  store i8 %27, i8* %30, align 1
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %13, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %13, align 4
  br label %19

34:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i32, i32* %13, align 4
  %37 = icmp ult i32 %36, 8
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load i32, i32* %13, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %45
  store i8 %43, i8* %46, align 1
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %13, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %35

50:                                               ; preds = %35
  store i32 8, i32* %13, align 4
  br label %51

51:                                               ; preds = %58, %50
  %52 = load i32, i32* %13, align 4
  %53 = icmp ult i32 %52, 16
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %56
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %13, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %51

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %91, %61
  %63 = load i64, i64* %7, align 8
  %64 = icmp uge i64 %63, 64
  br i1 %64, label %65, label %96

65:                                               ; preds = %62
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %69 = call i32 @crypto_core_salsa2012(i8* %66, i8* %67, i8* %68, i32* null)
  store i32 1, i32* %14, align 4
  store i32 8, i32* %13, align 4
  br label %70

70:                                               ; preds = %88, %65
  %71 = load i32, i32* %13, align 4
  %72 = icmp ult i32 %71, 16
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i32, i32* %14, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = trunc i32 %81 to i8
  %83 = load i32, i32* %13, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %84
  store i8 %82, i8* %85, align 1
  %86 = load i32, i32* %14, align 4
  %87 = lshr i32 %86, 8
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %73
  %89 = load i32, i32* %13, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %70

91:                                               ; preds = %70
  %92 = load i64, i64* %7, align 8
  %93 = sub i64 %92, 64
  store i64 %93, i64* %7, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 64
  store i8* %95, i8** %6, align 8
  br label %62

96:                                               ; preds = %62
  %97 = load i64, i64* %7, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %96
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %101 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %102 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %103 = call i32 @crypto_core_salsa2012(i8* %100, i8* %101, i8* %102, i32* null)
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %118, %99
  %105 = load i32, i32* %13, align 4
  %106 = load i64, i64* %7, align 8
  %107 = trunc i64 %106 to i32
  %108 = icmp ult i32 %105, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %104
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = load i8*, i8** %6, align 8
  %115 = load i32, i32* %13, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 %113, i8* %117, align 1
  br label %118

118:                                              ; preds = %109
  %119 = load i32, i32* %13, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %13, align 4
  br label %104

121:                                              ; preds = %104
  br label %122

122:                                              ; preds = %121, %96
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %124 = call i32 @sodium_memzero(i8* %123, i32 64)
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %126 = call i32 @sodium_memzero(i8* %125, i32 32)
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %122, %17
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @crypto_core_salsa2012(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @sodium_memzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
