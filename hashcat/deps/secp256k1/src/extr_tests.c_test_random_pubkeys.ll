; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_random_pubkeys.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_random_pubkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_random_pubkeys() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [65 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca [65 x i8], align 16
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = call i64 @secp256k1_rand_bits(i32 2)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 65, i32 33
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = call i64 @secp256k1_rand_bits(i32 2)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i64 @secp256k1_rand_bits(i32 6)
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %16, %0
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %19, 65
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = call i64 @secp256k1_rand_bits(i32 1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %30

25:                                               ; preds = %21
  %26 = call i64 @secp256k1_rand_bits(i32 1)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 6, i32 7
  br label %30

30:                                               ; preds = %25, %24
  %31 = phi i32 [ 4, %24 ], [ %29, %25 ]
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 0
  store i8 %32, i8* %33, align 16
  br label %41

34:                                               ; preds = %18
  %35 = call i64 @secp256k1_rand_bits(i32 1)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 2, i32 3
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 0
  store i8 %39, i8* %40, align 16
  br label %41

41:                                               ; preds = %34, %30
  %42 = call i64 @secp256k1_rand_bits(i32 3)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = call i64 @secp256k1_rand_bits(i32 8)
  %46 = trunc i64 %45 to i8
  %47 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 0
  store i8 %46, i8* %47, align 16
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i64, i64* %4, align 8
  %50 = icmp ugt i64 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 1
  %53 = call i32 @secp256k1_rand256(i8* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i64, i64* %4, align 8
  %56 = icmp ugt i64 %55, 33
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 33
  %59 = call i32 @secp256k1_rand256(i8* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 0
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @secp256k1_eckey_pubkey_parse(i32* %1, i8* %61, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %170

65:                                               ; preds = %60
  %66 = load i64, i64* %4, align 8
  store i64 %66, i64* %8, align 8
  %67 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 0
  %68 = load i8, i8* %67, align 16
  store i8 %68, i8* %6, align 1
  %69 = getelementptr inbounds [65 x i8], [65 x i8]* %5, i64 0, i64 0
  %70 = load i64, i64* %4, align 8
  %71 = icmp eq i64 %70, 33
  %72 = zext i1 %71 to i32
  %73 = call i32 @secp256k1_eckey_pubkey_serialize(i32* %1, i8* %69, i64* %8, i32 %72)
  %74 = call i32 @CHECK(i32 %73)
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %4, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @CHECK(i32 %78)
  %80 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 1
  %81 = getelementptr inbounds [65 x i8], [65 x i8]* %5, i64 0, i64 1
  %82 = load i64, i64* %4, align 8
  %83 = sub i64 %82, 1
  %84 = trunc i64 %83 to i32
  %85 = call i64 @memcmp(i8* %80, i8* %81, i32 %84)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @CHECK(i32 %87)
  %89 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 0
  %90 = load i8, i8* %89, align 16
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 6
  br i1 %92, label %93, label %108

93:                                               ; preds = %65
  %94 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 0
  %95 = load i8, i8* %94, align 16
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %96, 7
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 0
  %100 = load i8, i8* %99, align 16
  %101 = zext i8 %100 to i32
  %102 = getelementptr inbounds [65 x i8], [65 x i8]* %5, i64 0, i64 0
  %103 = load i8, i8* %102, align 16
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %101, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @CHECK(i32 %106)
  br label %108

108:                                              ; preds = %98, %93, %65
  store i64 65, i64* %8, align 8
  %109 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 0
  %110 = call i32 @secp256k1_eckey_pubkey_serialize(i32* %1, i8* %109, i64* %8, i32 0)
  %111 = call i32 @CHECK(i32 %110)
  %112 = load i64, i64* %8, align 8
  %113 = icmp eq i64 %112, 65
  %114 = zext i1 %113 to i32
  %115 = call i32 @CHECK(i32 %114)
  %116 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 0
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @secp256k1_eckey_pubkey_parse(i32* %2, i8* %116, i64 %117)
  %119 = call i32 @CHECK(i32 %118)
  %120 = call i32 @ge_equals_ge(i32* %1, i32* %2)
  %121 = call i64 @secp256k1_rand_bits(i32 1)
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 6, i32 7
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 0
  store i8 %125, i8* %126, align 16
  %127 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 0
  %128 = load i64, i64* %8, align 8
  %129 = call i32 @secp256k1_eckey_pubkey_parse(i32* %2, i8* %127, i64 %128)
  store i32 %129, i32* %7, align 4
  %130 = load i8, i8* %6, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %137, label %133

133:                                              ; preds = %108
  %134 = load i8, i8* %6, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %137, label %155

137:                                              ; preds = %133, %108
  %138 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 0
  %139 = load i8, i8* %138, align 16
  %140 = zext i8 %139 to i32
  %141 = load i8, i8* %6, align 1
  %142 = zext i8 %141 to i32
  %143 = add nsw i32 %142, 4
  %144 = icmp eq i32 %140, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @CHECK(i32 %146)
  br label %154

148:                                              ; preds = %137
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = call i32 @CHECK(i32 %152)
  br label %154

154:                                              ; preds = %148, %145
  br label %155

155:                                              ; preds = %154, %133
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = call i32 @ge_equals_ge(i32* %1, i32* %2)
  %160 = getelementptr inbounds [65 x i8], [65 x i8]* %5, i64 0, i64 0
  %161 = call i32 @secp256k1_eckey_pubkey_serialize(i32* %1, i8* %160, i64* %8, i32 0)
  %162 = call i32 @CHECK(i32 %161)
  %163 = getelementptr inbounds [65 x i8], [65 x i8]* %3, i64 0, i64 1
  %164 = getelementptr inbounds [65 x i8], [65 x i8]* %5, i64 0, i64 1
  %165 = call i64 @memcmp(i8* %163, i8* %164, i32 64)
  %166 = icmp eq i64 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i32 @CHECK(i32 %167)
  br label %169

169:                                              ; preds = %158, %155
  br label %170

170:                                              ; preds = %169, %60
  ret void
}

declare dso_local i64 @secp256k1_rand_bits(i32) #1

declare dso_local i32 @secp256k1_rand256(i8*) #1

declare dso_local i32 @secp256k1_eckey_pubkey_parse(i32*, i8*, i64) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_eckey_pubkey_serialize(i32*, i8*, i64*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @ge_equals_ge(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
