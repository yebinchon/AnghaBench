; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha512.c_octeon_sha512_final.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha512.c_octeon_sha512_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha512_state = type { i32*, i32* }
%struct.octeon_cop2_state = type { i32 }

@octeon_sha512_final.padding = internal global <{ i32, [127 x i32] }> <{ i32 128, [127 x i32] zeroinitializer }>, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @octeon_sha512_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_sha512_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sha512_state*, align 8
  %6 = alloca %struct.octeon_cop2_state, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %14 = call %struct.sha512_state* @shash_desc_ctx(%struct.shash_desc* %13)
  store %struct.sha512_state* %14, %struct.sha512_state** %5, align 8
  %15 = load i32*, i32** %4, align 8
  store i32* %15, i32** %7, align 8
  %16 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %17 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 3
  %22 = call i32 @cpu_to_be64(i32 %21)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %25 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 3
  %30 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %31 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 61
  %36 = or i32 %29, %35
  %37 = call i32 @cpu_to_be64(i32 %36)
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %40 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 127
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ult i32 %45, 112
  br i1 %46, label %47, label %50

47:                                               ; preds = %2
  %48 = load i32, i32* %10, align 4
  %49 = sub i32 112, %48
  br label %53

50:                                               ; preds = %2
  %51 = load i32, i32* %10, align 4
  %52 = sub i32 240, %51
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ %49, %47 ], [ %52, %50 ]
  store i32 %54, i32* %8, align 4
  %55 = call i64 @octeon_crypto_enable(%struct.octeon_cop2_state* %6)
  store i64 %55, i64* %9, align 8
  %56 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %57 = call i32 @octeon_sha512_store_hash(%struct.sha512_state* %56)
  %58 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @__octeon_sha512_update(%struct.sha512_state* %58, i32* getelementptr inbounds ([128 x i32], [128 x i32]* bitcast (<{ i32, [127 x i32] }>* @octeon_sha512_final.padding to [128 x i32]*), i64 0, i64 0), i32 %59)
  %61 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %63 = call i32 @__octeon_sha512_update(%struct.sha512_state* %61, i32* %62, i32 8)
  %64 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %65 = call i32 @octeon_sha512_read_hash(%struct.sha512_state* %64)
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @octeon_crypto_disable(%struct.octeon_cop2_state* %6, i64 %66)
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %84, %53
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %73 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cpu_to_be64(i32 %78)
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %68

87:                                               ; preds = %68
  %88 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %89 = call i32 @memset(%struct.sha512_state* %88, i32 0, i32 16)
  ret i32 0
}

declare dso_local %struct.sha512_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i64 @octeon_crypto_enable(%struct.octeon_cop2_state*) #1

declare dso_local i32 @octeon_sha512_store_hash(%struct.sha512_state*) #1

declare dso_local i32 @__octeon_sha512_update(%struct.sha512_state*, i32*, i32) #1

declare dso_local i32 @octeon_sha512_read_hash(%struct.sha512_state*) #1

declare dso_local i32 @octeon_crypto_disable(%struct.octeon_cop2_state*, i64) #1

declare dso_local i32 @memset(%struct.sha512_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
