; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_hash_vec_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_hash_vec_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_testvec = type { i32 }
%struct.testvec_config = type { i32 }
%struct.ahash_request = type { i32 }
%struct.shash_desc = type { i32 }
%struct.test_sglist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hash_testvec*, i8*, %struct.testvec_config*, %struct.ahash_request*, %struct.shash_desc*, %struct.test_sglist*, i32*)* @test_hash_vec_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_hash_vec_cfg(i8* %0, %struct.hash_testvec* %1, i8* %2, %struct.testvec_config* %3, %struct.ahash_request* %4, %struct.shash_desc* %5, %struct.test_sglist* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.hash_testvec*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.testvec_config*, align 8
  %14 = alloca %struct.ahash_request*, align 8
  %15 = alloca %struct.shash_desc*, align 8
  %16 = alloca %struct.test_sglist*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store %struct.hash_testvec* %1, %struct.hash_testvec** %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.testvec_config* %3, %struct.testvec_config** %13, align 8
  store %struct.ahash_request* %4, %struct.ahash_request** %14, align 8
  store %struct.shash_desc* %5, %struct.shash_desc** %15, align 8
  store %struct.test_sglist* %6, %struct.test_sglist** %16, align 8
  store i32* %7, i32** %17, align 8
  %19 = load %struct.shash_desc*, %struct.shash_desc** %15, align 8
  %20 = icmp ne %struct.shash_desc* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %8
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.hash_testvec*, %struct.hash_testvec** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %26 = load %struct.shash_desc*, %struct.shash_desc** %15, align 8
  %27 = load %struct.test_sglist*, %struct.test_sglist** %16, align 8
  %28 = load i32*, i32** %17, align 8
  %29 = call i32 @test_shash_vec_cfg(i8* %22, %struct.hash_testvec* %23, i8* %24, %struct.testvec_config* %25, %struct.shash_desc* %26, %struct.test_sglist* %27, i32* %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %18, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %18, align 4
  store i32 %33, i32* %9, align 4
  br label %44

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.hash_testvec*, %struct.hash_testvec** %11, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %40 = load %struct.ahash_request*, %struct.ahash_request** %14, align 8
  %41 = load %struct.test_sglist*, %struct.test_sglist** %16, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = call i32 @test_ahash_vec_cfg(i8* %36, %struct.hash_testvec* %37, i8* %38, %struct.testvec_config* %39, %struct.ahash_request* %40, %struct.test_sglist* %41, i32* %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %35, %32
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @test_shash_vec_cfg(i8*, %struct.hash_testvec*, i8*, %struct.testvec_config*, %struct.shash_desc*, %struct.test_sglist*, i32*) #1

declare dso_local i32 @test_ahash_vec_cfg(i8*, %struct.hash_testvec*, i8*, %struct.testvec_config*, %struct.ahash_request*, %struct.test_sglist*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
