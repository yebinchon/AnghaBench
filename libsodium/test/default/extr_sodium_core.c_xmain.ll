; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_sodium_core.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_sodium_core.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@misuse_handler = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Misuse handler returned\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @sodium_set_misuse_handler(i32* null)
  %3 = load i32*, i32** @misuse_handler, align 8
  %4 = call i32 @sodium_set_misuse_handler(i32* %3)
  %5 = call i32 @sodium_set_misuse_handler(i32* null)
  %6 = call i32 (...) @sodium_init()
  %7 = icmp eq i32 %6, 1
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = call i32 (...) @sodium_runtime_has_neon()
  %11 = call i32 (...) @sodium_runtime_has_armcrypto()
  %12 = call i32 (...) @sodium_runtime_has_sse2()
  %13 = call i32 (...) @sodium_runtime_has_sse3()
  %14 = call i32 (...) @sodium_runtime_has_ssse3()
  %15 = call i32 (...) @sodium_runtime_has_sse41()
  %16 = call i32 (...) @sodium_runtime_has_avx()
  %17 = call i32 (...) @sodium_runtime_has_avx2()
  %18 = call i32 (...) @sodium_runtime_has_avx512f()
  %19 = call i32 (...) @sodium_runtime_has_pclmul()
  %20 = call i32 (...) @sodium_runtime_has_aesni()
  %21 = call i32 (...) @sodium_runtime_has_rdrand()
  %22 = load i32*, i32** @misuse_handler, align 8
  %23 = call i32 @sodium_set_misuse_handler(i32* %22)
  %24 = call i32 (...) @sodium_misuse()
  %25 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @sodium_set_misuse_handler(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sodium_init(...) #1

declare dso_local i32 @sodium_runtime_has_neon(...) #1

declare dso_local i32 @sodium_runtime_has_armcrypto(...) #1

declare dso_local i32 @sodium_runtime_has_sse2(...) #1

declare dso_local i32 @sodium_runtime_has_sse3(...) #1

declare dso_local i32 @sodium_runtime_has_ssse3(...) #1

declare dso_local i32 @sodium_runtime_has_sse41(...) #1

declare dso_local i32 @sodium_runtime_has_avx(...) #1

declare dso_local i32 @sodium_runtime_has_avx2(...) #1

declare dso_local i32 @sodium_runtime_has_avx512f(...) #1

declare dso_local i32 @sodium_runtime_has_pclmul(...) #1

declare dso_local i32 @sodium_runtime_has_aesni(...) #1

declare dso_local i32 @sodium_runtime_has_rdrand(...) #1

declare dso_local i32 @sodium_misuse(...) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
