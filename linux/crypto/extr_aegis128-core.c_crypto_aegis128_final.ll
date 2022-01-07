; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_final.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aegis_state = type { i32* }
%union.aegis_block = type { i8** }

@AEGIS128_STATE_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aegis_state*, %union.aegis_block*, i32, i32)* @crypto_aegis128_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_aegis128_final(%struct.aegis_state* %0, %union.aegis_block* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.aegis_state*, align 8
  %6 = alloca %union.aegis_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.aegis_block, align 8
  %12 = alloca i32, align 4
  store %struct.aegis_state* %0, %struct.aegis_state** %5, align 8
  store %union.aegis_block* %1, %union.aegis_block** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = mul nsw i32 %13, 8
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = mul nsw i32 %15, 8
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i8* @cpu_to_le64(i32 %17)
  %19 = bitcast %union.aegis_block* %11 to i8***
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  store i8* %18, i8** %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i8* @cpu_to_le64(i32 %22)
  %24 = bitcast %union.aegis_block* %11 to i8***
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  store i8* %23, i8** %26, align 8
  %27 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %28 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = call i32 @crypto_aegis_block_xor(%union.aegis_block* %11, i32* %30)
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %38, %4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ult i32 %33, 7
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %37 = call i32 @crypto_aegis128_update_a(%struct.aegis_state* %36, %union.aegis_block* %11)
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %12, align 4
  br label %32

41:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %55, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @AEGIS128_STATE_BLOCKS, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %union.aegis_block*, %union.aegis_block** %6, align 8
  %48 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %49 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @crypto_aegis_block_xor(%union.aegis_block* %47, i32* %53)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %12, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %42

58:                                               ; preds = %42
  ret void
}

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @crypto_aegis_block_xor(%union.aegis_block*, i32*) #1

declare dso_local i32 @crypto_aegis128_update_a(%struct.aegis_state*, %union.aegis_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
