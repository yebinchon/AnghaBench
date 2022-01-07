; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secp256k1_strauss_point_state = type { i32 }
%struct.secp256k1_strauss_state = type { %struct.secp256k1_strauss_point_state*, i32*, i32*, i32*, i32* }

@WINDOW_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @secp256k1_ecmult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_ecmult(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [1 x %struct.secp256k1_strauss_point_state], align 4
  %16 = alloca %struct.secp256k1_strauss_state, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32, i32* @WINDOW_A, align 4
  %18 = call i32 @ECMULT_TABLE_SIZE(i32 %17)
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @WINDOW_A, align 4
  %23 = call i32 @ECMULT_TABLE_SIZE(i32 %22)
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %26 = load i32, i32* @WINDOW_A, align 4
  %27 = call i32 @ECMULT_TABLE_SIZE(i32 %26)
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %30 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %16, i32 0, i32 4
  store i32* %21, i32** %30, align 8
  %31 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %16, i32 0, i32 3
  store i32* %25, i32** %31, align 8
  %32 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %16, i32 0, i32 2
  store i32* %29, i32** %32, align 8
  %33 = getelementptr inbounds [1 x %struct.secp256k1_strauss_point_state], [1 x %struct.secp256k1_strauss_point_state]* %15, i64 0, i64 0
  %34 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %16, i32 0, i32 0
  store %struct.secp256k1_strauss_point_state* %33, %struct.secp256k1_strauss_point_state** %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @secp256k1_ecmult_strauss_wnaf(i32* %35, %struct.secp256k1_strauss_state* %16, i32* %36, i32 1, i32* %37, i32* %38, i32* %39)
  %41 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %41)
  ret void
}

declare dso_local i32 @ECMULT_TABLE_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @secp256k1_ecmult_strauss_wnaf(i32*, %struct.secp256k1_strauss_state*, i32*, i32, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
