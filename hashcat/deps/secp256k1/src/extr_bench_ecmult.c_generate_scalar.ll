; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_ecmult.c_generate_scalar.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_ecmult.c_generate_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.generate_scalar.c = private unnamed_addr constant [11 x i8] c"ecmult\00\00\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @generate_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_scalar(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [11 x i8], align 1
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = bitcast [11 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.generate_scalar.c, i32 0, i32 0), i64 11, i1 false)
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 6
  store i8 %11, i8* %12, align 1
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 7
  store i8 %15, i8* %16, align 1
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 16
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 8
  store i8 %19, i8* %20, align 1
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 24
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 9
  store i8 %23, i8* %24, align 1
  %25 = call i32 @secp256k1_sha256_initialize(i32* %5)
  %26 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %27 = call i32 @secp256k1_sha256_write(i32* %5, i8* %26, i32 11)
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %29 = call i32 @secp256k1_sha256_finalize(i32* %5, i8* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %32 = call i32 @secp256k1_scalar_set_b32(i32* %30, i8* %31, i32* %8)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @CHECK(i32 %36)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @secp256k1_sha256_initialize(i32*) #2

declare dso_local i32 @secp256k1_sha256_write(i32*, i8*, i32) #2

declare dso_local i32 @secp256k1_sha256_finalize(i32*, i8*) #2

declare dso_local i32 @secp256k1_scalar_set_b32(i32*, i8*, i32*) #2

declare dso_local i32 @CHECK(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
