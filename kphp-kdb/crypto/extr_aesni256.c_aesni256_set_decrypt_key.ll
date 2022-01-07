; ModuleID = '/home/carl/AnghaBench/kphp-kdb/crypto/extr_aesni256.c_aesni256_set_decrypt_key.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/crypto/extr_aesni256.c_aesni256_set_decrypt_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aesni256_ctx = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aesni256_ctx*, i8*)* @aesni256_set_decrypt_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aesni256_set_decrypt_key(%struct.aesni256_ctx* %0, i8* %1) #0 {
  %3 = alloca %struct.aesni256_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.aesni256_ctx* %0, %struct.aesni256_ctx** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.aesni256_ctx*, %struct.aesni256_ctx** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @aesni256_set_encrypt_key(%struct.aesni256_ctx* %7, i8* %8)
  %10 = load %struct.aesni256_ctx*, %struct.aesni256_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.aesni256_ctx, %struct.aesni256_ctx* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = call i8* @align16(i32* %13)
  store i8* %14, i8** %6, align 8
  store i32 1, i32* %5, align 4
  br label %15

15:                                               ; preds = %24, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, 13
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, 16
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  call void asm sideeffect "aesimc ($0), %xmm1\0A\09movdqa %xmm1, ($0)\0A\09", "r,~{xmm1},~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %23) #2, !srcloc !2
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %15

27:                                               ; preds = %15
  ret void
}

declare dso_local i32 @aesni256_set_encrypt_key(%struct.aesni256_ctx*, i8*) #1

declare dso_local i8* @align16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 537, i32 559, i32 591}
