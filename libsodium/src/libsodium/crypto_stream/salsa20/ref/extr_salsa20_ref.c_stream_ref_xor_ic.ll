; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_stream/salsa20/ref/extr_salsa20_ref.c_stream_ref_xor_ic.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_stream/salsa20/ref/extr_salsa20_ref.c_stream_ref_xor_ic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i32, i8*)* @stream_ref_xor_ic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_ref_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca [16 x i8], align 16
  %15 = alloca [64 x i8], align 16
  %16 = alloca [32 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %172

22:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i32, i32* %17, align 4
  %25 = icmp ult i32 %24, 32
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i8*, i8** %13, align 8
  %28 = load i32, i32* %17, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = load i32, i32* %17, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 %33
  store i8 %31, i8* %34, align 1
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %17, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %17, align 4
  br label %23

38:                                               ; preds = %23
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i32, i32* %17, align 4
  %41 = icmp ult i32 %40, 8
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %17, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load i32, i32* %17, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 %49
  store i8 %47, i8* %50, align 1
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %17, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %17, align 4
  br label %39

54:                                               ; preds = %39
  store i32 8, i32* %17, align 4
  br label %55

55:                                               ; preds = %67, %54
  %56 = load i32, i32* %17, align 4
  %57 = icmp ult i32 %56, 16
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, 255
  %61 = trunc i32 %60 to i8
  %62 = load i32, i32* %17, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 %63
  store i8 %61, i8* %64, align 1
  %65 = load i32, i32* %12, align 4
  %66 = ashr i32 %65, 8
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %17, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %17, align 4
  br label %55

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %125, %70
  %72 = load i64, i64* %10, align 8
  %73 = icmp uge i64 %72, 64
  br i1 %73, label %74, label %132

74:                                               ; preds = %71
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %78 = call i32 @crypto_core_salsa20(i8* %75, i8* %76, i8* %77, i32* null)
  store i32 0, i32* %17, align 4
  br label %79

79:                                               ; preds = %100, %74
  %80 = load i32, i32* %17, align 4
  %81 = icmp ult i32 %80, 64
  br i1 %81, label %82, label %103

82:                                               ; preds = %79
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %17, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, i32* %17, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = xor i32 %88, %93
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %17, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  store i8 %95, i8* %99, align 1
  br label %100

100:                                              ; preds = %82
  %101 = load i32, i32* %17, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %17, align 4
  br label %79

103:                                              ; preds = %79
  store i32 1, i32* %18, align 4
  store i32 8, i32* %17, align 4
  br label %104

104:                                              ; preds = %122, %103
  %105 = load i32, i32* %17, align 4
  %106 = icmp ult i32 %105, 16
  br i1 %106, label %107, label %125

107:                                              ; preds = %104
  %108 = load i32, i32* %17, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i32, i32* %18, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %18, align 4
  %116 = trunc i32 %115 to i8
  %117 = load i32, i32* %17, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 %118
  store i8 %116, i8* %119, align 1
  %120 = load i32, i32* %18, align 4
  %121 = lshr i32 %120, 8
  store i32 %121, i32* %18, align 4
  br label %122

122:                                              ; preds = %107
  %123 = load i32, i32* %17, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %17, align 4
  br label %104

125:                                              ; preds = %104
  %126 = load i64, i64* %10, align 8
  %127 = sub i64 %126, 64
  store i64 %127, i64* %10, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 64
  store i8* %129, i8** %8, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 64
  store i8* %131, i8** %9, align 8
  br label %71

132:                                              ; preds = %71
  %133 = load i64, i64* %10, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %167

135:                                              ; preds = %132
  %136 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %137 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %138 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %139 = call i32 @crypto_core_salsa20(i8* %136, i8* %137, i8* %138, i32* null)
  store i32 0, i32* %17, align 4
  br label %140

140:                                              ; preds = %163, %135
  %141 = load i32, i32* %17, align 4
  %142 = load i64, i64* %10, align 8
  %143 = trunc i64 %142 to i32
  %144 = icmp ult i32 %141, %143
  br i1 %144, label %145, label %166

145:                                              ; preds = %140
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* %17, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = load i32, i32* %17, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = xor i32 %151, %156
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %8, align 8
  %160 = load i32, i32* %17, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  store i8 %158, i8* %162, align 1
  br label %163

163:                                              ; preds = %145
  %164 = load i32, i32* %17, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %17, align 4
  br label %140

166:                                              ; preds = %140
  br label %167

167:                                              ; preds = %166, %132
  %168 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %169 = call i32 @sodium_memzero(i8* %168, i32 64)
  %170 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %171 = call i32 @sodium_memzero(i8* %170, i32 32)
  store i32 0, i32* %7, align 4
  br label %172

172:                                              ; preds = %167, %21
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local i32 @crypto_core_salsa20(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @sodium_memzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
