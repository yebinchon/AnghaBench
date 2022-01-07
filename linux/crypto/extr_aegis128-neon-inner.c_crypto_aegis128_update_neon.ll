; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_aegis128-neon-inner.c_crypto_aegis128_update_neon.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_aegis128-neon-inner.c_crypto_aegis128_update_neon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aegis128_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_aegis128_update_neon(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.aegis128_state, align 4
  %6 = alloca %struct.aegis128_state, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @aegis128_load_state_neon(i8* %7)
  %9 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = call i32 (...) @preload_sbox()
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @vld1q_u8(i8* %11)
  %13 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @aegis128_update_neon(i32 %14, i32 %12)
  %16 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = bitcast %struct.aegis128_state* %5 to i8*
  %18 = bitcast %struct.aegis128_state* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds %struct.aegis128_state, %struct.aegis128_state* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @aegis128_save_state_neon(i32 %21, i8* %19)
  ret void
}

declare dso_local i32 @aegis128_load_state_neon(i8*) #1

declare dso_local i32 @preload_sbox(...) #1

declare dso_local i32 @aegis128_update_neon(i32, i32) #1

declare dso_local i32 @vld1q_u8(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @aegis128_save_state_neon(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
