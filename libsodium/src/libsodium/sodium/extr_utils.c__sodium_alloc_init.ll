; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/sodium/extr_utils.c__sodium_alloc_init.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/sodium/extr_utils.c__sodium_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@randombytes_SEEDBYTES = common dso_local global i32 0, align 4
@shielding_prekey = common dso_local global i32* null, align 8
@canary = common dso_local global i32* null, align 8
@CANARY_SIZE = common dso_local global i32 0, align 4
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@page_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_sodium_alloc_init() #0 {
  %1 = load i32, i32* @randombytes_SEEDBYTES, align 4
  %2 = sext i32 %1 to i64
  %3 = icmp uge i64 8, %2
  %4 = zext i1 %3 to i32
  %5 = call i32 @COMPILER_ASSERT(i32 %4)
  %6 = load i32*, i32** @shielding_prekey, align 8
  %7 = load i32, i32* @randombytes_SEEDBYTES, align 4
  %8 = call i32 @randombytes_buf(i32* %6, i32 %7)
  %9 = load i32*, i32** @canary, align 8
  %10 = load i32*, i32** @shielding_prekey, align 8
  %11 = call i32 @randombytes_buf_deterministic(i32* %9, i32 8, i32* %10)
  %12 = load i32*, i32** @shielding_prekey, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load i32*, i32** @shielding_prekey, align 8
  %17 = load i32*, i32** @shielding_prekey, align 8
  %18 = call i32 @randombytes_buf_deterministic(i32* %16, i32 8, i32* %17)
  ret i32 0
}

declare dso_local i32 @COMPILER_ASSERT(i32) #1

declare dso_local i32 @randombytes_buf(i32*, i32) #1

declare dso_local i32 @randombytes_buf_deterministic(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
