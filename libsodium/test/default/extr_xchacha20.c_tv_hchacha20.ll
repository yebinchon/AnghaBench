; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_xchacha20.c_tv_hchacha20.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_xchacha20.c_tv_hchacha20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8* }

@tv_hchacha20.tvs = internal constant [10 x %struct.TYPE_2__] [%struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i8* null }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i8* null }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i8* null }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i8* null }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i8* null }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, i8* null }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, i8* null }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* null, i8* null }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null, i8* null }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* null, i8* null }], align 16
@.str = private unnamed_addr constant [65 x i8] c"24f11cce8a1b3d61e441561a696c1c1b7e173d084fd4812425435a8896a013dc\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"d9660c5900ae19ddad28d6e06e45fe5e\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"5966b3eec3bff1189f831f06afe4d4e3be97fa9235ec8c20d08acfbbb4e851e3\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"80a5f6272031e18bb9bcd84f3385da65e7731b7039f13f5e3d475364cd4d42f7\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"c0eccc384b44c88e92c57eb2d5ca4dfa\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"6ed11741f724009a640a44fce7320954c46e18e0d7ae063bdbc8d7cf372709df\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"cb1fc686c0eec11a89438b6f4013bf110e7171dace3297f3a657a309b3199629\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"fcd49b93e5f8f299227e64d40dc864a3\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"84b7e96937a1a0a406bb7162eeaad34308d49de60fd2f7ec9dc6a79cbab2ca34\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"6640f4d80af5496ca1bc2cfff1fefbe99638dbceaabd7d0ade118999d45f053d\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"31f59ceeeafdbfe8cae7914caeba90d6\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"9af4697d2f5574a44834a2c2ae1a0505af9f5d869dbe381a994a18eb374c36a0\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"0693ff36d971225a44ac92c092c60b399e672e4cc5aafd5e31426f123787ac27\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"3a6293da061da405db45be1731d5fc4d\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"f87b38609142c01095bfc425573bb3c698f9ae866b7e4216840b9c4caf3b0865\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"809539bd2639a23bf83578700f055f313561c7785a4a19fc9114086915eee551\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"780c65d6a3318e479c02141d3f0b3918\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"902ea8ce4680c09395ce71874d242f84274243a156938aaa2dd37ac5be382b42\00", align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"1a170ddf25a4fd69b648926e6d794e73408805835c64b2c70efddd8cd1c56ce0\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"05dbee10de87eb0c5acb2b66ebbe67d3\00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"a4e20b634c77d7db908d387b48ec2b370059db916e8ea7716dc07238532d5981\00", align 1
@.str.21 = private unnamed_addr constant [65 x i8] c"3b354e4bb69b5b4a1126f509e84cad49f18c9f5f29f0be0c821316a6986e15a6\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"d8a89af02f4b8b2901d8321796388b6c\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"9816cb1a5b61993735a4b161b51ed2265b696e7ded5309c229a5a99f53534fbc\00", align 1
@.str.24 = private unnamed_addr constant [65 x i8] c"4b9a818892e15a530db50dd2832e95ee192e5ed6afffb408bd624a0c4e12a081\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"a9079c551de70501be0286d1bc78b045\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"ebc5224cf41ea97473683b6c2f38a084bf6e1feaaeff62676db59d5b719d999b\00", align 1
@.str.27 = private unnamed_addr constant [65 x i8] c"c49758f00003714c38f1d4972bde57ee8271f543b91e07ebce56b554eb7fa6a7\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"31f0204e10cf4f2035f9e62bb5ba7303\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"0dd8cc400f702d2c06ed920be52048a287076b86480ae273c6d568a2e9e7518c\00", align 1
@crypto_core_hchacha20_CONSTBYTES = common dso_local global i32 0, align 4
@crypto_core_hchacha20_KEYBYTES = common dso_local global i32 0, align 4
@crypto_core_hchacha20_INPUTBYTES = common dso_local global i32 0, align 4
@crypto_core_hchacha20_OUTPUTBYTES = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [33 x i8] c"0d29b795c1ca70c1652e823364d32417\00", align 1
@.str.31 = private unnamed_addr constant [65 x i8] c"934d941d78eb9bfc2f0376f7ccd4a11ecf0c6a44104618a9749ef47fe97037a2\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"tv_hchacha20: ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tv_hchacha20 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv_hchacha20() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @crypto_core_hchacha20_CONSTBYTES, align 4
  %9 = call i64 @sodium_malloc(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %2, align 8
  %11 = load i32, i32* @crypto_core_hchacha20_KEYBYTES, align 4
  %12 = call i64 @sodium_malloc(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %3, align 8
  %14 = load i32, i32* @crypto_core_hchacha20_INPUTBYTES, align 4
  %15 = call i64 @sodium_malloc(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %4, align 8
  %17 = load i32, i32* @crypto_core_hchacha20_OUTPUTBYTES, align 4
  %18 = call i64 @sodium_malloc(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %5, align 8
  %20 = load i32, i32* @crypto_core_hchacha20_OUTPUTBYTES, align 4
  %21 = call i64 @sodium_malloc(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %70, %0
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %24, 10
  br i1 %25, label %26, label %73

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds [10 x %struct.TYPE_2__], [10 x %struct.TYPE_2__]* @tv_hchacha20.tvs, i64 0, i64 %27
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %1, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @crypto_core_hchacha20_KEYBYTES, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = call i32 @sodium_hex2bin(i8* %29, i32 %30, i8* %33, i32 %37, i32* null, i32* null, i32* null)
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* @crypto_core_hchacha20_INPUTBYTES, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call i32 @sodium_hex2bin(i8* %39, i32 %40, i8* %43, i32 %47, i32* null, i32* null, i32* null)
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @crypto_core_hchacha20_OUTPUTBYTES, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 5
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 @sodium_hex2bin(i8* %49, i32 %50, i8* %53, i32 %57, i32* null, i32* null, i32* null)
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @crypto_core_hchacha20(i8* %59, i8* %60, i8* %61, i8* null)
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* @crypto_core_hchacha20_OUTPUTBYTES, align 4
  %66 = call i64 @memcmp(i8* %63, i8* %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  br label %70

70:                                               ; preds = %26
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %7, align 8
  br label %23

73:                                               ; preds = %23
  %74 = load i8*, i8** %2, align 8
  %75 = load i32, i32* @crypto_core_hchacha20_CONSTBYTES, align 4
  %76 = load i32, i32* @crypto_core_hchacha20_CONSTBYTES, align 4
  %77 = mul nsw i32 %76, 2
  %78 = add nsw i32 %77, 1
  %79 = call i32 @sodium_hex2bin(i8* %74, i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i32 %78, i32* null, i32* null, i32* null)
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* @crypto_core_hchacha20_OUTPUTBYTES, align 4
  %82 = load i32, i32* @crypto_core_hchacha20_OUTPUTBYTES, align 4
  %83 = mul nsw i32 %82, 2
  %84 = add nsw i32 %83, 1
  %85 = call i32 @sodium_hex2bin(i8* %80, i32 %81, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.31, i64 0, i64 0), i32 %84, i32* null, i32* null, i32* null)
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = load i8*, i8** %2, align 8
  %90 = call i32 @crypto_core_hchacha20(i8* %86, i8* %87, i8* %88, i8* %89)
  %91 = load i8*, i8** %5, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* @crypto_core_hchacha20_OUTPUTBYTES, align 4
  %94 = call i64 @memcmp(i8* %91, i8* %92, i32 %93)
  %95 = icmp eq i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @sodium_free(i8* %98)
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 @sodium_free(i8* %100)
  %102 = load i8*, i8** %4, align 8
  %103 = call i32 @sodium_free(i8* %102)
  %104 = load i8*, i8** %3, align 8
  %105 = call i32 @sodium_free(i8* %104)
  %106 = load i8*, i8** %2, align 8
  %107 = call i32 @sodium_free(i8* %106)
  %108 = call i32 (...) @crypto_core_hchacha20_outputbytes()
  %109 = load i32, i32* @crypto_core_hchacha20_OUTPUTBYTES, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = call i32 (...) @crypto_core_hchacha20_inputbytes()
  %114 = load i32, i32* @crypto_core_hchacha20_INPUTBYTES, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = call i32 (...) @crypto_core_hchacha20_keybytes()
  %119 = load i32, i32* @crypto_core_hchacha20_KEYBYTES, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = call i32 (...) @crypto_core_hchacha20_constbytes()
  %124 = load i32, i32* @crypto_core_hchacha20_CONSTBYTES, align 4
  %125 = icmp eq i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  ret void
}

declare dso_local i64 @sodium_malloc(i32) #1

declare dso_local i32 @sodium_hex2bin(i8*, i32, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @crypto_core_hchacha20(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sodium_free(i8*) #1

declare dso_local i32 @crypto_core_hchacha20_outputbytes(...) #1

declare dso_local i32 @crypto_core_hchacha20_inputbytes(...) #1

declare dso_local i32 @crypto_core_hchacha20_keybytes(...) #1

declare dso_local i32 @crypto_core_hchacha20_constbytes(...) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
