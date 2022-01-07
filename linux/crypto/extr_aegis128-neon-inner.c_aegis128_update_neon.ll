; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_aegis128-neon-inner.c_aegis128_update_neon.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_aegis128-neon-inner.c_aegis128_update_neon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aegis128_state = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @aegis128_update_neon to i8*)], section "llvm.metadata"

; Function Attrs: alwaysinline nounwind uwtable
define internal i32* @aegis128_update_neon(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.aegis128_state, align 8
  %4 = alloca %struct.aegis128_state, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %4, i32 0, i32 0
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %5, align 4
  %7 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %4, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @aegis_aes_round(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = xor i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %4, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @aegis_aes_round(i32 %17)
  %19 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %4, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %22, %18
  store i32 %23, i32* %21, align 4
  %24 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %4, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @aegis_aes_round(i32 %27)
  %29 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %4, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %32, %28
  store i32 %33, i32* %31, align 4
  %34 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %4, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @aegis_aes_round(i32 %37)
  %39 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %4, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, %38
  store i32 %43, i32* %41, align 4
  %44 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %4, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @aegis_aes_round(i32 %47)
  %49 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %4, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %52, %48
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %5, align 4
  %55 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %4, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, %54
  store i32 %59, i32* %57, align 4
  %60 = bitcast %struct.aegis128_state* %3 to i8*
  %61 = bitcast %struct.aegis128_state* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 8, i1 false)
  %62 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %3, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  ret i32* %63
}

declare dso_local i32 @aegis_aes_round(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
