; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_sha256_glue.c_sha256_sparc64_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_sha256_glue.c_sha256_sparc64_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha256_state = type { i32, i64 }

@SHA256_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @sha256_sparc64_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha256_sparc64_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sha256_state*, align 8
  %8 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %10 = call %struct.sha256_state* @shash_desc_ctx(%struct.shash_desc* %9)
  store %struct.sha256_state* %10, %struct.sha256_state** %7, align 8
  %11 = load %struct.sha256_state*, %struct.sha256_state** %7, align 8
  %12 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SHA256_BLOCK_SIZE, align 4
  %15 = urem i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %16, %17
  %19 = load i32, i32* @SHA256_BLOCK_SIZE, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.sha256_state*, %struct.sha256_state** %7, align 8
  %24 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.sha256_state*, %struct.sha256_state** %7, align 8
  %28 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @memcpy(i64 %32, i32* %33, i32 %34)
  br label %42

36:                                               ; preds = %3
  %37 = load %struct.sha256_state*, %struct.sha256_state** %7, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @__sha256_sparc64_update(%struct.sha256_state* %37, i32* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %21
  ret i32 0
}

declare dso_local %struct.sha256_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @__sha256_sparc64_update(%struct.sha256_state*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
