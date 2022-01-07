; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/contrib/extr_lax_der_privatekey_parsing.c_ec_privkey_export_der.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/contrib/extr_lax_der_privatekey_parsing.c_ec_privkey_export_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ec_privkey_export_der.begin = internal constant [8 x i8] c"0\81\D3\02\01\01\04 ", align 1
@ec_privkey_export_der.middle = internal constant [141 x i8] c"\A0\81\850\81\82\02\01\010,\06\07*\86H\CE=\01\01\02!\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FC/0\06\04\01\00\04\01\07\04!\02y\BEf~\F9\DC\BB\ACU\A0b\95\CE\87\0B\07\02\9B\FC\DB-\CE(\D9Y\F2\81[\16\F8\17\98\02!\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\BA\AE\DC\E6\AFH\A0;\BF\D2^\8C\D06AA\02\01\01\A1$\03\22\00", align 16
@SECP256K1_EC_COMPRESSED = common dso_local global i32 0, align 4
@ec_privkey_export_der.begin.1 = internal constant [9 x i8] c"0\82\01\13\02\01\01\04 ", align 1
@ec_privkey_export_der.middle.2 = internal constant [173 x i8] c"\A0\81\A50\81\A2\02\01\010,\06\07*\86H\CE=\01\01\02!\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FC/0\06\04\01\00\04\01\07\04A\04y\BEf~\F9\DC\BB\ACU\A0b\95\CE\87\0B\07\02\9B\FC\DB-\CE(\D9Y\F2\81[\16\F8\17\98H:\DAw&\A3\C4e]\A4\FB\FC\0E\11\08\A8\FD\17\B4H\A6\85T\19\9CG\D0\8F\FB\10\D4\B8\02!\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\BA\AE\DC\E6\AFH\A0;\BF\D2^\8C\D06AA\02\01\01\A1D\03B\00", align 16
@SECP256K1_EC_UNCOMPRESSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_privkey_export_der(i32* %0, i8* %1, i64* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %13, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @secp256k1_ec_pubkey_create(i32* %16, i32* %12, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i64*, i64** %9, align 8
  store i64 0, i64* %21, align 8
  store i32 0, i32* %6, align 4
  br label %82

22:                                               ; preds = %5
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %22
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %14, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = call i32 @memcpy(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ec_privkey_export_der.begin, i64 0, i64 0), i32 8)
  %29 = load i8*, i8** %14, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 8
  store i8* %30, i8** %14, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @memcpy(i8* %31, i8* %32, i32 32)
  %34 = load i8*, i8** %14, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 32
  store i8* %35, i8** %14, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @memcpy(i8* %36, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @ec_privkey_export_der.middle, i64 0, i64 0), i32 141)
  %38 = load i8*, i8** %14, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 141
  store i8* %39, i8** %14, align 8
  store i64 33, i64* %13, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load i32, i32* @SECP256K1_EC_COMPRESSED, align 4
  %43 = call i32 @secp256k1_ec_pubkey_serialize(i32* %40, i8* %41, i64* %13, i32* %12, i32 %42)
  %44 = load i64, i64* %13, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  store i8* %46, i8** %14, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = load i64*, i64** %9, align 8
  store i64 %51, i64* %52, align 8
  br label %81

53:                                               ; preds = %22
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %15, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = call i32 @memcpy(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @ec_privkey_export_der.begin.1, i64 0, i64 0), i32 9)
  %57 = load i8*, i8** %15, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 9
  store i8* %58, i8** %15, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @memcpy(i8* %59, i8* %60, i32 32)
  %62 = load i8*, i8** %15, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 32
  store i8* %63, i8** %15, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = call i32 @memcpy(i8* %64, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @ec_privkey_export_der.middle.2, i64 0, i64 0), i32 173)
  %66 = load i8*, i8** %15, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 173
  store i8* %67, i8** %15, align 8
  store i64 65, i64* %13, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = load i32, i32* @SECP256K1_EC_UNCOMPRESSED, align 4
  %71 = call i32 @secp256k1_ec_pubkey_serialize(i32* %68, i8* %69, i64* %13, i32* %12, i32 %70)
  %72 = load i64, i64* %13, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %72
  store i8* %74, i8** %15, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = load i64*, i64** %9, align 8
  store i64 %79, i64* %80, align 8
  br label %81

81:                                               ; preds = %53, %25
  store i32 1, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %20
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @secp256k1_ec_pubkey_create(i32*, i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @secp256k1_ec_pubkey_serialize(i32*, i8*, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
