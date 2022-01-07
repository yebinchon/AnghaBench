; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_lz4.c_lz4_init.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_lz4.c_lz4_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.lz4_ctx = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @lz4_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz4_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.lz4_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %6 = call %struct.lz4_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %5)
  store %struct.lz4_ctx* %6, %struct.lz4_ctx** %4, align 8
  %7 = call i32 @lz4_alloc_ctx(i32* null)
  %8 = load %struct.lz4_ctx*, %struct.lz4_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.lz4_ctx, %struct.lz4_ctx* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.lz4_ctx*, %struct.lz4_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.lz4_ctx, %struct.lz4_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @IS_ERR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.lz4_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @lz4_alloc_ctx(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
