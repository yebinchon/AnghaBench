; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c___alg_test_hash.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c___alg_test_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_testvec = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.ahash_request = type { i32 }
%struct.crypto_shash = type { i32 }
%struct.shash_desc = type opaque
%struct.test_sglist = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"alg: hash: failed to allocate transform for %s: %ld\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"alg: hash: failed to allocate request for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"alg: hash: failed to allocate test buffers for %s\0A\00", align 1
@TESTMGR_POISON_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"alg: hash: failed to allocate hash state buffer for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_testvec*, i32, i8*, i32, i32, i8*, i32)* @__alg_test_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__alg_test_hash(%struct.hash_testvec* %0, i32 %1, i8* %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hash_testvec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.crypto_ahash*, align 8
  %17 = alloca %struct.ahash_request*, align 8
  %18 = alloca %struct.crypto_shash*, align 8
  %19 = alloca %struct.shash_desc*, align 8
  %20 = alloca %struct.test_sglist*, align 8
  %21 = alloca %struct.test_sglist*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.hash_testvec* %0, %struct.hash_testvec** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.crypto_ahash* null, %struct.crypto_ahash** %16, align 8
  store %struct.ahash_request* null, %struct.ahash_request** %17, align 8
  store %struct.crypto_shash* null, %struct.crypto_shash** %18, align 8
  store %struct.shash_desc* null, %struct.shash_desc** %19, align 8
  store %struct.test_sglist* null, %struct.test_sglist** %20, align 8
  store %struct.test_sglist* null, %struct.test_sglist** %21, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call %struct.crypto_ahash* @crypto_alloc_ahash(i8* %25, i32 %26, i32 %27)
  store %struct.crypto_ahash* %28, %struct.crypto_ahash** %16, align 8
  %29 = load %struct.crypto_ahash*, %struct.crypto_ahash** %16, align 8
  %30 = call i64 @IS_ERR(%struct.crypto_ahash* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %7
  %33 = load i8*, i8** %11, align 8
  %34 = load %struct.crypto_ahash*, %struct.crypto_ahash** %16, align 8
  %35 = call i32 @PTR_ERR(%struct.crypto_ahash* %34)
  %36 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %35)
  %37 = load %struct.crypto_ahash*, %struct.crypto_ahash** %16, align 8
  %38 = call i32 @PTR_ERR(%struct.crypto_ahash* %37)
  store i32 %38, i32* %8, align 4
  br label %155

39:                                               ; preds = %7
  %40 = load %struct.crypto_ahash*, %struct.crypto_ahash** %16, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.ahash_request* @ahash_request_alloc(%struct.crypto_ahash* %40, i32 %41)
  store %struct.ahash_request* %42, %struct.ahash_request** %17, align 8
  %43 = load %struct.ahash_request*, %struct.ahash_request** %17, align 8
  %44 = icmp ne %struct.ahash_request* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %24, align 4
  br label %134

50:                                               ; preds = %39
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = bitcast %struct.shash_desc** %19 to %struct.test_sglist**
  %55 = call i32 @alloc_shash(i8* %51, i32 %52, i32 %53, %struct.crypto_shash** %18, %struct.test_sglist** %54)
  store i32 %55, i32* %24, align 4
  %56 = load i32, i32* %24, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %134

59:                                               ; preds = %50
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.test_sglist* @kmalloc(i32 4, i32 %60)
  store %struct.test_sglist* %61, %struct.test_sglist** %20, align 8
  %62 = load %struct.test_sglist*, %struct.test_sglist** %20, align 8
  %63 = icmp ne %struct.test_sglist* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.test_sglist*, %struct.test_sglist** %20, align 8
  %66 = call i64 @init_test_sglist(%struct.test_sglist* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64, %59
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = load %struct.test_sglist*, %struct.test_sglist** %20, align 8
  %72 = call i32 @kfree(%struct.test_sglist* %71)
  store %struct.test_sglist* null, %struct.test_sglist** %20, align 8
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %24, align 4
  br label %134

75:                                               ; preds = %64
  %76 = load %struct.crypto_ahash*, %struct.crypto_ahash** %16, align 8
  %77 = call i32 @crypto_ahash_statesize(%struct.crypto_ahash* %76)
  store i32 %77, i32* %22, align 4
  %78 = load %struct.crypto_shash*, %struct.crypto_shash** %18, align 8
  %79 = icmp ne %struct.crypto_shash* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32, i32* %22, align 4
  %82 = load %struct.crypto_shash*, %struct.crypto_shash** %18, align 8
  %83 = call i32 @crypto_shash_statesize(%struct.crypto_shash* %82)
  %84 = call i32 @max(i32 %81, i32 %83)
  store i32 %84, i32* %22, align 4
  br label %85

85:                                               ; preds = %80, %75
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* @TESTMGR_POISON_LEN, align 4
  %88 = add i32 %86, %87
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call %struct.test_sglist* @kmalloc(i32 %88, i32 %89)
  store %struct.test_sglist* %90, %struct.test_sglist** %21, align 8
  %91 = load %struct.test_sglist*, %struct.test_sglist** %21, align 8
  %92 = icmp ne %struct.test_sglist* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %85
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %24, align 4
  br label %134

98:                                               ; preds = %85
  store i32 0, i32* %23, align 4
  br label %99

99:                                               ; preds = %121, %98
  %100 = load i32, i32* %23, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %124

103:                                              ; preds = %99
  %104 = load i8*, i8** %11, align 8
  %105 = load %struct.hash_testvec*, %struct.hash_testvec** %9, align 8
  %106 = load i32, i32* %23, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %105, i64 %107
  %109 = load i32, i32* %23, align 4
  %110 = load %struct.ahash_request*, %struct.ahash_request** %17, align 8
  %111 = load %struct.shash_desc*, %struct.shash_desc** %19, align 8
  %112 = bitcast %struct.shash_desc* %111 to %struct.test_sglist*
  %113 = load %struct.test_sglist*, %struct.test_sglist** %20, align 8
  %114 = load %struct.test_sglist*, %struct.test_sglist** %21, align 8
  %115 = call i32 @test_hash_vec(i8* %104, %struct.hash_testvec* %108, i32 %109, %struct.ahash_request* %110, %struct.test_sglist* %112, %struct.test_sglist* %113, %struct.test_sglist* %114)
  store i32 %115, i32* %24, align 4
  %116 = load i32, i32* %24, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  br label %134

119:                                              ; preds = %103
  %120 = call i32 (...) @cond_resched()
  br label %121

121:                                              ; preds = %119
  %122 = load i32, i32* %23, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %23, align 4
  br label %99

124:                                              ; preds = %99
  %125 = load i8*, i8** %11, align 8
  %126 = load i8*, i8** %14, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load %struct.ahash_request*, %struct.ahash_request** %17, align 8
  %129 = load %struct.shash_desc*, %struct.shash_desc** %19, align 8
  %130 = bitcast %struct.shash_desc* %129 to %struct.test_sglist*
  %131 = load %struct.test_sglist*, %struct.test_sglist** %20, align 8
  %132 = load %struct.test_sglist*, %struct.test_sglist** %21, align 8
  %133 = call i32 @test_hash_vs_generic_impl(i8* %125, i8* %126, i32 %127, %struct.ahash_request* %128, %struct.test_sglist* %130, %struct.test_sglist* %131, %struct.test_sglist* %132)
  store i32 %133, i32* %24, align 4
  br label %134

134:                                              ; preds = %124, %118, %93, %68, %58, %45
  %135 = load %struct.test_sglist*, %struct.test_sglist** %21, align 8
  %136 = call i32 @kfree(%struct.test_sglist* %135)
  %137 = load %struct.test_sglist*, %struct.test_sglist** %20, align 8
  %138 = icmp ne %struct.test_sglist* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.test_sglist*, %struct.test_sglist** %20, align 8
  %141 = call i32 @destroy_test_sglist(%struct.test_sglist* %140)
  %142 = load %struct.test_sglist*, %struct.test_sglist** %20, align 8
  %143 = call i32 @kfree(%struct.test_sglist* %142)
  br label %144

144:                                              ; preds = %139, %134
  %145 = load %struct.shash_desc*, %struct.shash_desc** %19, align 8
  %146 = bitcast %struct.shash_desc* %145 to %struct.test_sglist*
  %147 = call i32 @kfree(%struct.test_sglist* %146)
  %148 = load %struct.crypto_shash*, %struct.crypto_shash** %18, align 8
  %149 = call i32 @crypto_free_shash(%struct.crypto_shash* %148)
  %150 = load %struct.ahash_request*, %struct.ahash_request** %17, align 8
  %151 = call i32 @ahash_request_free(%struct.ahash_request* %150)
  %152 = load %struct.crypto_ahash*, %struct.crypto_ahash** %16, align 8
  %153 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %152)
  %154 = load i32, i32* %24, align 4
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %144, %32
  %156 = load i32, i32* %8, align 4
  ret i32 %156
}

declare dso_local %struct.crypto_ahash* @crypto_alloc_ahash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_ahash*) #1

declare dso_local i32 @pr_err(i8*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_ahash*) #1

declare dso_local %struct.ahash_request* @ahash_request_alloc(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @alloc_shash(i8*, i32, i32, %struct.crypto_shash**, %struct.test_sglist**) #1

declare dso_local %struct.test_sglist* @kmalloc(i32, i32) #1

declare dso_local i64 @init_test_sglist(%struct.test_sglist*) #1

declare dso_local i32 @kfree(%struct.test_sglist*) #1

declare dso_local i32 @crypto_ahash_statesize(%struct.crypto_ahash*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @crypto_shash_statesize(%struct.crypto_shash*) #1

declare dso_local i32 @test_hash_vec(i8*, %struct.hash_testvec*, i32, %struct.ahash_request*, %struct.test_sglist*, %struct.test_sglist*, %struct.test_sglist*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @test_hash_vs_generic_impl(i8*, i8*, i32, %struct.ahash_request*, %struct.test_sglist*, %struct.test_sglist*, %struct.test_sglist*) #1

declare dso_local i32 @destroy_test_sglist(%struct.test_sglist*) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

declare dso_local i32 @ahash_request_free(%struct.ahash_request*) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_ahash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
