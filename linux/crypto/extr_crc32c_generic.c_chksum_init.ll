; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crc32c_generic.c_chksum_init.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crc32c_generic.c_chksum_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.chksum_ctx = type { i32 }
%struct.chksum_desc_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*)* @chksum_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chksum_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca %struct.chksum_ctx*, align 8
  %4 = alloca %struct.chksum_desc_ctx*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %5 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %6 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.chksum_ctx* @crypto_shash_ctx(i32 %7)
  store %struct.chksum_ctx* %8, %struct.chksum_ctx** %3, align 8
  %9 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %10 = call %struct.chksum_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %9)
  store %struct.chksum_desc_ctx* %10, %struct.chksum_desc_ctx** %4, align 8
  %11 = load %struct.chksum_ctx*, %struct.chksum_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.chksum_ctx, %struct.chksum_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.chksum_desc_ctx*, %struct.chksum_desc_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.chksum_desc_ctx, %struct.chksum_desc_ctx* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  ret i32 0
}

declare dso_local %struct.chksum_ctx* @crypto_shash_ctx(i32) #1

declare dso_local %struct.chksum_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
