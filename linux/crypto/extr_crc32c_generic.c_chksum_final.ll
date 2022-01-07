; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crc32c_generic.c_chksum_final.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crc32c_generic.c_chksum_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.chksum_desc_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @chksum_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chksum_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.chksum_desc_ctx*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %7 = call %struct.chksum_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %6)
  store %struct.chksum_desc_ctx* %7, %struct.chksum_desc_ctx** %5, align 8
  %8 = load %struct.chksum_desc_ctx*, %struct.chksum_desc_ctx** %5, align 8
  %9 = getelementptr inbounds %struct.chksum_desc_ctx, %struct.chksum_desc_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, -1
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @put_unaligned_le32(i32 %11, i32* %12)
  ret i32 0
}

declare dso_local %struct.chksum_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
