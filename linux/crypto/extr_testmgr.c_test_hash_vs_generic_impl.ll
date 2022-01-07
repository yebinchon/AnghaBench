; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_hash_vs_generic_impl.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_hash_vs_generic_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.shash_desc = type { i32 }
%struct.test_sglist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, %struct.ahash_request*, %struct.shash_desc*, %struct.test_sglist*, i32*)* @test_hash_vs_generic_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_hash_vs_generic_impl(i8* %0, i8* %1, i32 %2, %struct.ahash_request* %3, %struct.shash_desc* %4, %struct.test_sglist* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ahash_request*, align 8
  %12 = alloca %struct.shash_desc*, align 8
  %13 = alloca %struct.test_sglist*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ahash_request* %3, %struct.ahash_request** %11, align 8
  store %struct.shash_desc* %4, %struct.shash_desc** %12, align 8
  store %struct.test_sglist* %5, %struct.test_sglist** %13, align 8
  store i32* %6, i32** %14, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
