; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-md5.c_octeon_md5_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-md5.c_octeon_md5_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.md5_state = type { i32, i8* }
%struct.octeon_cop2_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i8*, i32)* @octeon_md5_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_md5_update(%struct.shash_desc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.md5_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.octeon_cop2_state, align 4
  %11 = alloca i64, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %13 = call %struct.md5_state* @shash_desc_ctx(%struct.shash_desc* %12)
  store %struct.md5_state* %13, %struct.md5_state** %8, align 8
  %14 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %15 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 63
  %18 = sext i32 %17 to i64
  %19 = sub i64 8, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %23 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %31 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = sub i64 8, %34
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @memcpy(i8* %36, i8* %37, i32 %38)
  store i32 0, i32* %4, align 4
  br label %89

40:                                               ; preds = %3
  %41 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %42 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = sub i64 8, %45
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @memcpy(i8* %47, i8* %48, i32 %49)
  %51 = call i64 @octeon_crypto_enable(%struct.octeon_cop2_state* %10)
  store i64 %51, i64* %11, align 8
  %52 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %53 = call i32 @octeon_md5_store_hash(%struct.md5_state* %52)
  %54 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %55 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @octeon_md5_transform(i8* %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %69, %40
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = icmp uge i64 %67, 8
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @octeon_md5_transform(i8* %70)
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 8
  store i8* %73, i8** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = sub i64 %75, 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %7, align 4
  br label %65

78:                                               ; preds = %65
  %79 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %80 = call i32 @octeon_md5_read_hash(%struct.md5_state* %79)
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @octeon_crypto_disable(%struct.octeon_cop2_state* %10, i64 %81)
  %83 = load %struct.md5_state*, %struct.md5_state** %8, align 8
  %84 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @memcpy(i8* %85, i8* %86, i32 %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %78, %29
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.md5_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @octeon_crypto_enable(%struct.octeon_cop2_state*) #1

declare dso_local i32 @octeon_md5_store_hash(%struct.md5_state*) #1

declare dso_local i32 @octeon_md5_transform(i8*) #1

declare dso_local i32 @octeon_md5_read_hash(%struct.md5_state*) #1

declare dso_local i32 @octeon_crypto_disable(%struct.octeon_cop2_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
