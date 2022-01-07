; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_md5.c_md5_init.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_md5.c_md5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.md5_ctx = type { i64, i64 }
%struct.deu_hash_t = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@HASH_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*)* @md5_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md5_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca %struct.md5_ctx*, align 8
  %4 = alloca %struct.deu_hash_t*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %5 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %6 = call %struct.md5_ctx* @shash_desc_ctx(%struct.shash_desc* %5)
  store %struct.md5_ctx* %6, %struct.md5_ctx** %3, align 8
  %7 = load i64, i64* @HASH_START, align 8
  %8 = inttoptr i64 %7 to %struct.deu_hash_t*
  store %struct.deu_hash_t* %8, %struct.deu_hash_t** %4, align 8
  %9 = load %struct.deu_hash_t*, %struct.deu_hash_t** %4, align 8
  %10 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store volatile i64 0, i64* %11, align 8
  %12 = load %struct.deu_hash_t*, %struct.deu_hash_t** %4, align 8
  %13 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store volatile i32 1, i32* %14, align 8
  %15 = load %struct.deu_hash_t*, %struct.deu_hash_t** %4, align 8
  %16 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store volatile i32 1, i32* %17, align 4
  %18 = load %struct.deu_hash_t*, %struct.deu_hash_t** %4, align 8
  %19 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store volatile i32 1, i32* %20, align 8
  %21 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  ret i32 0
}

declare dso_local %struct.md5_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
