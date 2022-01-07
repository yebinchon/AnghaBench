; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_damage_array.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_damage_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*)* @damage_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @damage_array(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = call i32 @secp256k1_rand_bits(i32 3)
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = load i64*, i64** %4, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ugt i64 %12, 3
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load i64*, i64** %4, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @secp256k1_rand_int(i64 %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i64*, i64** %4, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %29, %31
  %33 = sub i64 %32, 1
  %34 = call i32 @memmove(i8* %22, i8* %27, i64 %33)
  %35 = load i64*, i64** %4, align 8
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %35, align 8
  br label %102

38:                                               ; preds = %10, %2
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %75

41:                                               ; preds = %38
  %42 = load i64*, i64** %4, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %43, 2048
  br i1 %44, label %45, label %75

45:                                               ; preds = %41
  %46 = load i64*, i64** %4, align 8
  %47 = load i64, i64* %46, align 8
  %48 = add i64 1, %47
  %49 = call i64 @secp256k1_rand_int(i64 %48)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8*, i8** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i64*, i64** %4, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = sub i64 %61, %63
  %65 = call i32 @memmove(i8* %55, i8* %59, i64 %64)
  %66 = call i32 @secp256k1_rand_bits(i32 8)
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  %72 = load i64*, i64** %4, align 8
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  br label %102

75:                                               ; preds = %41, %38
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 4
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = call i64 @secp256k1_rand_int(i64 255)
  %80 = add i64 1, %79
  %81 = load i8*, i8** %3, align 8
  %82 = load i64*, i64** %4, align 8
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @secp256k1_rand_int(i64 %83)
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i64
  %88 = add i64 %87, %80
  %89 = trunc i64 %88 to i8
  store i8 %89, i8* %85, align 1
  br label %102

90:                                               ; preds = %75
  %91 = call i32 @secp256k1_rand_bits(i32 3)
  %92 = shl i32 1, %91
  %93 = load i8*, i8** %3, align 8
  %94 = load i64*, i64** %4, align 8
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @secp256k1_rand_int(i64 %95)
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = xor i32 %99, %92
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %97, align 1
  br label %102

102:                                              ; preds = %90, %78, %45, %14
  ret void
}

declare dso_local i32 @secp256k1_rand_bits(i32) #1

declare dso_local i64 @secp256k1_rand_int(i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
