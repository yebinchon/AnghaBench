; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_aead_vs_generic_impl.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_aead_vs_generic_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg_test_desc = type { i32 }
%struct.aead_request = type { i32 }
%struct.cipher_test_sglists = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.alg_test_desc*, %struct.aead_request*, %struct.cipher_test_sglists*)* @test_aead_vs_generic_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_aead_vs_generic_impl(i8* %0, %struct.alg_test_desc* %1, %struct.aead_request* %2, %struct.cipher_test_sglists* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.alg_test_desc*, align 8
  %7 = alloca %struct.aead_request*, align 8
  %8 = alloca %struct.cipher_test_sglists*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.alg_test_desc* %1, %struct.alg_test_desc** %6, align 8
  store %struct.aead_request* %2, %struct.aead_request** %7, align 8
  store %struct.cipher_test_sglists* %3, %struct.cipher_test_sglists** %8, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
