; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_init_bank_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_init_bank_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.tpm_chip = type { %struct.tpm_bank_info* }
%struct.tpm_bank_info = type { i64, i32, i32 }
%struct.tpm_digest = type { i64 }

@tpm2_hash_map = common dso_local global %struct.TYPE_3__* null, align 8
@hash_digest_size = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32)* @tpm2_init_bank_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm2_init_bank_info(%struct.tpm_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_bank_info*, align 8
  %7 = alloca %struct.tpm_digest, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %11 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %10, i32 0, i32 0
  %12 = load %struct.tpm_bank_info*, %struct.tpm_bank_info** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.tpm_bank_info, %struct.tpm_bank_info* %12, i64 %14
  store %struct.tpm_bank_info* %15, %struct.tpm_bank_info** %6, align 8
  %16 = getelementptr inbounds %struct.tpm_digest, %struct.tpm_digest* %7, i32 0, i32 0
  %17 = load %struct.tpm_bank_info*, %struct.tpm_bank_info** %6, align 8
  %18 = getelementptr inbounds %struct.tpm_bank_info, %struct.tpm_bank_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %16, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %54, %2
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tpm2_hash_map, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tpm2_hash_map, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load %struct.tpm_bank_info*, %struct.tpm_bank_info** %6, align 8
  %33 = getelementptr inbounds %struct.tpm_bank_info, %struct.tpm_bank_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tpm2_hash_map, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  br label %54

43:                                               ; preds = %25
  %44 = load i32*, i32** @hash_digest_size, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tpm_bank_info*, %struct.tpm_bank_info** %6, align 8
  %50 = getelementptr inbounds %struct.tpm_bank_info, %struct.tpm_bank_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.tpm_bank_info*, %struct.tpm_bank_info** %6, align 8
  %53 = getelementptr inbounds %struct.tpm_bank_info, %struct.tpm_bank_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  store i32 0, i32* %3, align 4
  br label %62

54:                                               ; preds = %42
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %20

57:                                               ; preds = %20
  %58 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %59 = load %struct.tpm_bank_info*, %struct.tpm_bank_info** %6, align 8
  %60 = getelementptr inbounds %struct.tpm_bank_info, %struct.tpm_bank_info* %59, i32 0, i32 2
  %61 = call i32 @tpm2_pcr_read(%struct.tpm_chip* %58, i32 0, %struct.tpm_digest* %7, i32* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %43
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @tpm2_pcr_read(%struct.tpm_chip*, i32, %struct.tpm_digest*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
