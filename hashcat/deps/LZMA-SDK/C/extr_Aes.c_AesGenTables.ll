; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Aes.c_AesGenTables.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Aes.c_AesGenTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvS = common dso_local global i32* null, align 8
@Sbox = common dso_local global i64* null, align 8
@AesCbc_Encode = common dso_local global i32 0, align 4
@g_AesCbc_Encode = common dso_local global i32 0, align 4
@AesCbc_Decode = common dso_local global i32 0, align 4
@g_AesCbc_Decode = common dso_local global i32 0, align 4
@AesCtr_Code = common dso_local global i32 0, align 4
@g_AesCtr_Code = common dso_local global i32 0, align 4
@AesCbc_Decode_Intel = common dso_local global i32 0, align 4
@AesCbc_Encode_Intel = common dso_local global i32 0, align 4
@AesCtr_Code_Intel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AesGenTables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %25, %0
  %14 = load i32, i32* %1, align 4
  %15 = icmp ult i32 %14, 256
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i32, i32* %1, align 4
  %18 = load i32*, i32** @InvS, align 8
  %19 = load i64*, i64** @Sbox, align 8
  %20 = load i32, i32* %1, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  store i32 %17, i32* %24, align 4
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %1, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %13

28:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %145, %28
  %30 = load i32, i32* %1, align 4
  %31 = icmp ult i32 %30, 256
  br i1 %31, label %32, label %148

32:                                               ; preds = %29
  %33 = load i64*, i64** @Sbox, align 8
  %34 = load i32, i32* %1, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @xtime(i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %2, align 4
  %43 = xor i32 %41, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i8* @Ui32(i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = call i8** @TT(i32 0)
  %50 = load i32, i32* %1, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  store i8* %48, i8** %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* %2, align 4
  %57 = call i8* @Ui32(i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = call i8** @TT(i32 1)
  %59 = load i32, i32* %1, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  store i8* %57, i8** %61, align 8
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %2, align 4
  %66 = call i8* @Ui32(i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = call i8** @TT(i32 2)
  %68 = load i32, i32* %1, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  store i8* %66, i8** %70, align 8
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i8* @Ui32(i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = call i8** @TT(i32 3)
  %77 = load i32, i32* %1, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  store i8* %75, i8** %79, align 8
  %80 = load i32*, i32** @InvS, align 8
  %81 = load i32, i32* %1, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @xtime(i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @xtime(i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @xtime(i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %5, align 4
  %93 = xor i32 %91, %92
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %6, align 4
  %96 = xor i32 %94, %95
  %97 = load i32, i32* %5, align 4
  %98 = xor i32 %96, %97
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %7, align 4
  %101 = xor i32 %99, %100
  %102 = load i32, i32* %5, align 4
  %103 = xor i32 %101, %102
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %7, align 4
  %106 = xor i32 %104, %105
  %107 = load i32, i32* %6, align 4
  %108 = xor i32 %106, %107
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i8* @Ui32(i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = call i8** @DD(i32 0)
  %115 = load i32, i32* %1, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  store i8* %113, i8** %117, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i8* @Ui32(i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = call i8** @DD(i32 1)
  %124 = load i32, i32* %1, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  store i8* %122, i8** %126, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i8* @Ui32(i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = call i8** @DD(i32 2)
  %133 = load i32, i32* %1, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* %131, i8** %135, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i8* @Ui32(i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = call i8** @DD(i32 3)
  %142 = load i32, i32* %1, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  store i8* %140, i8** %144, align 8
  br label %145

145:                                              ; preds = %32
  %146 = load i32, i32* %1, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %1, align 4
  br label %29

148:                                              ; preds = %29
  %149 = load i32, i32* @AesCbc_Encode, align 4
  store i32 %149, i32* @g_AesCbc_Encode, align 4
  %150 = load i32, i32* @AesCbc_Decode, align 4
  store i32 %150, i32* @g_AesCbc_Decode, align 4
  %151 = load i32, i32* @AesCtr_Code, align 4
  store i32 %151, i32* @g_AesCtr_Code, align 4
  ret void
}

declare dso_local i32 @xtime(i32) #1

declare dso_local i8* @Ui32(i32, i32, i32, i32) #1

declare dso_local i8** @TT(i32) #1

declare dso_local i8** @DD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
