; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asym_tpm.c_derive_pub_key.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asym_tpm.c_derive_pub_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.derive_pub_key.e = private unnamed_addr constant [3 x i32] [i32 1, i32 0, i32 1], align 4
@SETKEY_PARAMS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @derive_pub_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive_pub_key(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @definite_length(i32 %12)
  %14 = add nsw i32 %13, 1
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %8, align 4
  %18 = call i32 @definite_length(i32 3)
  %19 = add nsw i32 %18, 1
  %20 = add nsw i32 %19, 3
  store i32 %20, i32* %9, align 4
  %21 = bitcast [3 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast ([3 x i32]* @__const.derive_pub_key.e to i8*), i64 12, i1 false)
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i32* @encode_tag_length(i32* %22, i32 48, i32 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32* @encode_tag_length(i32* %27, i32 2, i32 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 0, i32* %32, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i8*, i8** %4, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @memcpy(i32* %34, i32* %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32*, i32** %7, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32* @encode_tag_length(i32* %44, i32 2, i32 12)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %48 = call i32 @memcpy(i32* %46, i32* %47, i32 12)
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 12
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @SETKEY_PARAMS_SIZE, align 4
  %53 = call i32 @memset(i32* %51, i32 0, i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = ptrtoint i32* %54 to i64
  %57 = ptrtoint i32* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 4
  %60 = trunc i64 %59 to i32
  ret i32 %60
}

declare dso_local i32 @definite_length(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @encode_tag_length(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
