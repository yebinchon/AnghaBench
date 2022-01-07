; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_alg_test_comp.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_alg_test_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg_test_desc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.crypto_comp = type { i32 }
%struct.crypto_acomp = type opaque

@CRYPTO_ALG_TYPE_ACOMPRESS_MASK = common dso_local global i64 0, align 8
@CRYPTO_ALG_TYPE_ACOMPRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"alg: acomp: Failed to load transform for %s: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"alg: comp: Failed to load transform for %s: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alg_test_desc*, i8*, i64, i64)* @alg_test_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alg_test_comp(%struct.alg_test_desc* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.alg_test_desc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.crypto_comp*, align 8
  %11 = alloca %struct.crypto_acomp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.alg_test_desc* %0, %struct.alg_test_desc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @CRYPTO_ALG_TYPE_ACOMPRESS_MASK, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %13, align 8
  %18 = load i64, i64* @CRYPTO_ALG_TYPE_ACOMPRESS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %70

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call %struct.crypto_comp* @crypto_alloc_acomp(i8* %21, i64 %22, i64 %23)
  %25 = bitcast %struct.crypto_comp* %24 to %struct.crypto_acomp*
  store %struct.crypto_acomp* %25, %struct.crypto_acomp** %11, align 8
  %26 = load %struct.crypto_acomp*, %struct.crypto_acomp** %11, align 8
  %27 = bitcast %struct.crypto_acomp* %26 to %struct.crypto_comp*
  %28 = call i64 @IS_ERR(%struct.crypto_comp* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.crypto_acomp*, %struct.crypto_acomp** %11, align 8
  %33 = bitcast %struct.crypto_acomp* %32 to %struct.crypto_comp*
  %34 = call i32 @PTR_ERR(%struct.crypto_comp* %33)
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %34)
  %36 = load %struct.crypto_acomp*, %struct.crypto_acomp** %11, align 8
  %37 = bitcast %struct.crypto_acomp* %36 to %struct.crypto_comp*
  %38 = call i32 @PTR_ERR(%struct.crypto_comp* %37)
  store i32 %38, i32* %5, align 4
  br label %116

39:                                               ; preds = %20
  %40 = load %struct.crypto_acomp*, %struct.crypto_acomp** %11, align 8
  %41 = bitcast %struct.crypto_acomp* %40 to %struct.crypto_comp*
  %42 = load %struct.alg_test_desc*, %struct.alg_test_desc** %6, align 8
  %43 = getelementptr inbounds %struct.alg_test_desc, %struct.alg_test_desc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.alg_test_desc*, %struct.alg_test_desc** %6, align 8
  %49 = getelementptr inbounds %struct.alg_test_desc, %struct.alg_test_desc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.alg_test_desc*, %struct.alg_test_desc** %6, align 8
  %55 = getelementptr inbounds %struct.alg_test_desc, %struct.alg_test_desc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.alg_test_desc*, %struct.alg_test_desc** %6, align 8
  %61 = getelementptr inbounds %struct.alg_test_desc, %struct.alg_test_desc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @test_acomp(%struct.crypto_comp* %41, i32 %47, i32 %53, i32 %59, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.crypto_acomp*, %struct.crypto_acomp** %11, align 8
  %68 = bitcast %struct.crypto_acomp* %67 to %struct.crypto_comp*
  %69 = call i32 @crypto_free_acomp(%struct.crypto_comp* %68)
  br label %114

70:                                               ; preds = %4
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call %struct.crypto_comp* @crypto_alloc_comp(i8* %71, i64 %72, i64 %73)
  store %struct.crypto_comp* %74, %struct.crypto_comp** %10, align 8
  %75 = load %struct.crypto_comp*, %struct.crypto_comp** %10, align 8
  %76 = call i64 @IS_ERR(%struct.crypto_comp* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.crypto_comp*, %struct.crypto_comp** %10, align 8
  %81 = call i32 @PTR_ERR(%struct.crypto_comp* %80)
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 %81)
  %83 = load %struct.crypto_comp*, %struct.crypto_comp** %10, align 8
  %84 = call i32 @PTR_ERR(%struct.crypto_comp* %83)
  store i32 %84, i32* %5, align 4
  br label %116

85:                                               ; preds = %70
  %86 = load %struct.crypto_comp*, %struct.crypto_comp** %10, align 8
  %87 = load %struct.alg_test_desc*, %struct.alg_test_desc** %6, align 8
  %88 = getelementptr inbounds %struct.alg_test_desc, %struct.alg_test_desc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.alg_test_desc*, %struct.alg_test_desc** %6, align 8
  %94 = getelementptr inbounds %struct.alg_test_desc, %struct.alg_test_desc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.alg_test_desc*, %struct.alg_test_desc** %6, align 8
  %100 = getelementptr inbounds %struct.alg_test_desc, %struct.alg_test_desc* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.alg_test_desc*, %struct.alg_test_desc** %6, align 8
  %106 = getelementptr inbounds %struct.alg_test_desc, %struct.alg_test_desc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @test_comp(%struct.crypto_comp* %86, i32 %92, i32 %98, i32 %104, i32 %110)
  store i32 %111, i32* %12, align 4
  %112 = load %struct.crypto_comp*, %struct.crypto_comp** %10, align 8
  %113 = call i32 @crypto_free_comp(%struct.crypto_comp* %112)
  br label %114

114:                                              ; preds = %85, %39
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %114, %78, %30
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.crypto_comp* @crypto_alloc_acomp(i8*, i64, i64) #1

declare dso_local i64 @IS_ERR(%struct.crypto_comp*) #1

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_comp*) #1

declare dso_local i32 @test_acomp(%struct.crypto_comp*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_free_acomp(%struct.crypto_comp*) #1

declare dso_local %struct.crypto_comp* @crypto_alloc_comp(i8*, i64, i64) #1

declare dso_local i32 @test_comp(%struct.crypto_comp*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_free_comp(%struct.crypto_comp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
