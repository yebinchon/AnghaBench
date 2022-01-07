; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_sha512_glue.c_sha512_sparc64_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_sha512_glue.c_sha512_sparc64_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha512_state = type { i32*, i64 }

@SHA512_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @sha512_sparc64_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha512_sparc64_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sha512_state*, align 8
  %8 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %10 = call %struct.sha512_state* @shash_desc_ctx(%struct.shash_desc* %9)
  store %struct.sha512_state* %10, %struct.sha512_state** %7, align 8
  %11 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %12 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  %17 = urem i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %18, %19
  %21 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %26 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = add i32 %29, %24
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %23
  %34 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %35 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %23
  %41 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %42 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @memcpy(i64 %46, i32* %47, i32 %48)
  br label %56

50:                                               ; preds = %3
  %51 = load %struct.sha512_state*, %struct.sha512_state** %7, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @__sha512_sparc64_update(%struct.sha512_state* %51, i32* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %40
  ret i32 0
}

declare dso_local %struct.sha512_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @__sha512_sparc64_update(%struct.sha512_state*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
