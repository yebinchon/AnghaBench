; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_hash_vec.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_hash_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testvec_config = type { i32 }
%struct.hash_testvec = type { i32 }
%struct.ahash_request = type { i32 }
%struct.shash_desc = type { i32 }
%struct.test_sglist = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@default_hash_testvec_configs = common dso_local global %struct.testvec_config* null, align 8
@TESTVEC_CONFIG_NAMELEN = common dso_local global i32 0, align 4
@fuzz_iterations = common dso_local global i32 0, align 4
@noextratests = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hash_testvec*, i32, %struct.ahash_request*, %struct.shash_desc*, %struct.test_sglist*, i32*)* @test_hash_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_hash_vec(i8* %0, %struct.hash_testvec* %1, i32 %2, %struct.ahash_request* %3, %struct.shash_desc* %4, %struct.test_sglist* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hash_testvec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ahash_request*, align 8
  %13 = alloca %struct.shash_desc*, align 8
  %14 = alloca %struct.test_sglist*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [16 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store %struct.hash_testvec* %1, %struct.hash_testvec** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.ahash_request* %3, %struct.ahash_request** %12, align 8
  store %struct.shash_desc* %4, %struct.shash_desc** %13, align 8
  store %struct.test_sglist* %5, %struct.test_sglist** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %45, %7
  %23 = load i32, i32* %17, align 4
  %24 = load %struct.testvec_config*, %struct.testvec_config** @default_hash_testvec_configs, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.testvec_config* %24)
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %31 = load %struct.testvec_config*, %struct.testvec_config** @default_hash_testvec_configs, align 8
  %32 = load i32, i32* %17, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %31, i64 %33
  %35 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %36 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %37 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 @test_hash_vec_cfg(i8* %28, %struct.hash_testvec* %29, i8* %30, %struct.testvec_config* %34, %struct.ahash_request* %35, %struct.shash_desc* %36, %struct.test_sglist* %37, i32* %38)
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %18, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i32, i32* %18, align 4
  store i32 %43, i32* %8, align 4
  br label %49

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %17, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %17, align 4
  br label %22

48:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %42
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.testvec_config*) #1

declare dso_local i32 @test_hash_vec_cfg(i8*, %struct.hash_testvec*, i8*, %struct.testvec_config*, %struct.ahash_request*, %struct.shash_desc*, %struct.test_sglist*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
