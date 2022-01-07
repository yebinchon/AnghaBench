; ModuleID = '/home/carl/AnghaBench/hashcat/src/modules/extr_module_00501.c_juniper_decrypt_hash.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/modules/extr_module_00501.c_juniper_decrypt_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_to_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @juniper_decrypt_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @juniper_decrypt_hash(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [100 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = bitcast [100 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 400, i1 false)
  %13 = load i32, i32* @base64_to_int, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0
  %17 = call i32 @base64_decode(i32 %13, i32* %14, i32 %15, i32* %16)
  %18 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %20 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0
  %21 = call i32 @memcpy(i32* %19, i32* %20, i32 12)
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %24 = call i32 @memcpy(i32* %22, i32* %23, i32 12)
  %25 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 16, i1 false)
  %26 = call i32 @byte_swap_32(i32 -1502578050)
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %26, i32* %27, align 16
  %28 = call i32 @byte_swap_32(i32 -1913057191)
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = call i32 @byte_swap_32(i32 -559478043)
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %30, i32* %31, align 8
  %32 = call i32 @byte_swap_32(i32 798762050)
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0
  %35 = getelementptr inbounds i32, i32* %34, i64 12
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 12
  store i32* %37, i32** %11, align 8
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @AES128_decrypt_cbc(i32* %38, i32* %39, i32* %40, i32* %41)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @base64_decode(i32, i32*, i32, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @byte_swap_32(i32) #2

declare dso_local i32 @AES128_decrypt_cbc(i32*, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
