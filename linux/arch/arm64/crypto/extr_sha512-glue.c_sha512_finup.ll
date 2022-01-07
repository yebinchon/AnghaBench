; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha512-glue.c_sha512_finup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha512-glue.c_sha512_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }

@sha512_block_data_order = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32, i32*)* @sha512_finup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha512_finup(%struct.shash_desc* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i64, i64* @sha512_block_data_order, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = call i32 @sha512_base_do_update(%struct.shash_desc* %12, i32* %13, i32 %14, i32* %16)
  br label %18

18:                                               ; preds = %11, %4
  %19 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %20 = load i64, i64* @sha512_block_data_order, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = call i32 @sha512_base_do_finalize(%struct.shash_desc* %19, i32* %21)
  %23 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @sha512_base_finish(%struct.shash_desc* %23, i32* %24)
  ret i32 %25
}

declare dso_local i32 @sha512_base_do_update(%struct.shash_desc*, i32*, i32, i32*) #1

declare dso_local i32 @sha512_base_do_finalize(%struct.shash_desc*, i32*) #1

declare dso_local i32 @sha512_base_finish(%struct.shash_desc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
