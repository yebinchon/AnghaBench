; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_ghash-ce-glue.c_ghash_do_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_ghash-ce-glue.c_ghash_do_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ghash_key = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*, %struct.ghash_key*, i8*, void (i32, i32*, i8*, %struct.ghash_key*, i8*)*)* @ghash_do_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ghash_do_update(i32 %0, i32* %1, i8* %2, %struct.ghash_key* %3, i8* %4, void (i32, i32*, i8*, %struct.ghash_key*, i8*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ghash_key*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca void (i32, i32*, i8*, %struct.ghash_key*, i8*)*, align 8
  %13 = alloca %struct.TYPE_3__, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.ghash_key* %3, %struct.ghash_key** %10, align 8
  store i8* %4, i8** %11, align 8
  store void (i32, i32*, i8*, %struct.ghash_key*, i8*)* %5, void (i32, i32*, i8*, %struct.ghash_key*, i8*)** %12, align 8
  %15 = call i32 (...) @crypto_simd_usable()
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %6
  %19 = call i32 (...) @kernel_neon_begin()
  %20 = load void (i32, i32*, i8*, %struct.ghash_key*, i8*)*, void (i32, i32*, i8*, %struct.ghash_key*, i8*)** %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.ghash_key*, %struct.ghash_key** %10, align 8
  %25 = load i8*, i8** %11, align 8
  call void %20(i32 %21, i32* %22, i8* %23, %struct.ghash_key* %24, i8* %25)
  %26 = call i32 (...) @kernel_neon_end()
  br label %76

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cpu_to_be64(i32 %31)
  store i32 %32, i32* %28, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cpu_to_be64(i32 %36)
  store i32 %37, i32* %33, align 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %61, %27
  %41 = load i8*, i8** %9, align 8
  store i8* %41, i8** %14, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i8*, i8** %11, align 8
  store i8* %45, i8** %14, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  store i8* null, i8** %11, align 8
  br label %53

48:                                               ; preds = %40
  %49 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %48, %44
  %54 = bitcast %struct.TYPE_3__* %13 to i8*
  %55 = load i8*, i8** %14, align 8
  %56 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %57 = call i32 @crypto_xor(i8* %54, i8* %55, i32 %56)
  %58 = load %struct.ghash_key*, %struct.ghash_key** %10, align 8
  %59 = getelementptr inbounds %struct.ghash_key, %struct.ghash_key* %58, i32 0, i32 0
  %60 = call i32 @gf128mul_lle(%struct.TYPE_3__* %13, i32* %59)
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %40, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be64_to_cpu(i32 %67)
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %68, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @be64_to_cpu(i32 %72)
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %65, %18
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @crypto_xor(i8*, i8*, i32) #1

declare dso_local i32 @gf128mul_lle(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
