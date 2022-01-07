; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_aes128ctr.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_aes128ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_aes128ctr.key = internal constant [16 x i32] [i32 43, i32 126, i32 21, i32 22, i32 40, i32 174, i32 210, i32 166, i32 171, i32 247, i32 21, i32 136, i32 9, i32 207, i32 79, i32 60], align 16
@test_aes128ctr.iv = internal constant [16 x i32] [i32 107, i32 193, i32 190, i32 226, i32 46, i32 64, i32 159, i32 150, i32 233, i32 61, i32 126, i32 17, i32 115, i32 147, i32 23, i32 42], align 16
@test_aes128ctr.expected = internal constant [16 x i32] [i32 58, i32 215, i32 123, i32 180, i32 13, i32 122, i32 54, i32 96, i32 168, i32 158, i32 202, i32 243, i32 36, i32 102, i32 239, i32 151], align 16
@ctx = common dso_local global i32 0, align 4
@PTLS_CIPHER_SUITE_AES_128_GCM_SHA256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_aes128ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_aes128ctr() #0 {
  %1 = load i32, i32* @ctx, align 4
  %2 = load i32, i32* @PTLS_CIPHER_SUITE_AES_128_GCM_SHA256, align 4
  %3 = call i32 @find_cipher(i32 %1, i32 %2)
  %4 = call i32 @test_ctr(i32 %3, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @test_aes128ctr.key, i64 0, i64 0), i32 64, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @test_aes128ctr.iv, i64 0, i64 0), i32 64, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @test_aes128ctr.expected, i64 0, i64 0), i32 64)
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
