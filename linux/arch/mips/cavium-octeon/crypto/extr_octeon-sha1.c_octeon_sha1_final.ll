; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha1.c_octeon_sha1_final.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha1.c_octeon_sha1_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha1_state = type { i32, i32* }
%struct.octeon_cop2_state = type { i32 }

@octeon_sha1_final.padding = internal constant <{ i32, [63 x i32] }> <{ i32 128, [63 x i32] zeroinitializer }>, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @octeon_sha1_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_sha1_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sha1_state*, align 8
  %6 = alloca %struct.octeon_cop2_state, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %14 = call %struct.sha1_state* @shash_desc_ctx(%struct.shash_desc* %13)
  store %struct.sha1_state* %14, %struct.sha1_state** %5, align 8
  %15 = load i32*, i32** %4, align 8
  store i32* %15, i32** %7, align 8
  %16 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %17 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 3
  %20 = call i32 @cpu_to_be64(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %22 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 63
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ult i32 %25, 56
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %10, align 4
  %29 = sub i32 56, %28
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* %10, align 4
  %32 = sub i32 120, %31
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i32 [ %29, %27 ], [ %32, %30 ]
  store i32 %34, i32* %8, align 4
  %35 = call i64 @octeon_crypto_enable(%struct.octeon_cop2_state* %6)
  store i64 %35, i64* %9, align 8
  %36 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %37 = call i32 @octeon_sha1_store_hash(%struct.sha1_state* %36)
  %38 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @__octeon_sha1_update(%struct.sha1_state* %38, i32* getelementptr inbounds ([64 x i32], [64 x i32]* bitcast (<{ i32, [63 x i32] }>* @octeon_sha1_final.padding to [64 x i32]*), i64 0, i64 0), i32 %39)
  %41 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %42 = call i32 @__octeon_sha1_update(%struct.sha1_state* %41, i32* %11, i32 4)
  %43 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %44 = call i32 @octeon_sha1_read_hash(%struct.sha1_state* %43)
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @octeon_crypto_disable(%struct.octeon_cop2_state* %6, i64 %45)
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %63, %33
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 5
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %52 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cpu_to_be32(i32 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %47

66:                                               ; preds = %47
  %67 = load %struct.sha1_state*, %struct.sha1_state** %5, align 8
  %68 = call i32 @memset(%struct.sha1_state* %67, i32 0, i32 16)
  ret i32 0
}

declare dso_local %struct.sha1_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i64 @octeon_crypto_enable(%struct.octeon_cop2_state*) #1

declare dso_local i32 @octeon_sha1_store_hash(%struct.sha1_state*) #1

declare dso_local i32 @__octeon_sha1_update(%struct.sha1_state*, i32*, i32) #1

declare dso_local i32 @octeon_sha1_read_hash(%struct.sha1_state*) #1

declare dso_local i32 @octeon_crypto_disable(%struct.octeon_cop2_state*, i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memset(%struct.sha1_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
