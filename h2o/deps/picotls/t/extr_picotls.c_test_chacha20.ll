; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_chacha20.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_chacha20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_chacha20.key = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], align 16
@test_chacha20.iv = internal constant [16 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 0, i32 0, i32 0, i32 74, i32 0, i32 0, i32 0, i32 0], align 16
@test_chacha20.expected = internal constant [32 x i32] [i32 16, i32 241, i32 231, i32 228, i32 209, i32 59, i32 89, i32 21, i32 80, i32 15, i32 221, i32 31, i32 163, i32 32, i32 113, i32 196, i32 199, i32 209, i32 244, i32 199, i32 51, i32 192, i32 104, i32 3, i32 4, i32 34, i32 170, i32 154, i32 195, i32 212, i32 108, i32 78], align 16
@ctx = common dso_local global i32 0, align 4
@PTLS_CIPHER_SUITE_CHACHA20_POLY1305_SHA256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_chacha20 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_chacha20() #0 {
  %1 = load i32, i32* @ctx, align 4
  %2 = load i32, i32* @PTLS_CIPHER_SUITE_CHACHA20_POLY1305_SHA256, align 4
  %3 = call i32 @find_cipher(i32 %1, i32 %2)
  %4 = call i32 @test_ctr(i32 %3, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @test_chacha20.key, i64 0, i64 0), i32 128, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @test_chacha20.iv, i64 0, i64 0), i32 64, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @test_chacha20.expected, i64 0, i64 0), i32 128)
  ret void
}

declare dso_local i32 @test_ctr(i32, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @find_cipher(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
