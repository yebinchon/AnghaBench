; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_recover.c_main.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_recover.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SECP256K1_CONTEXT_VERIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ecdsa_recover\00", align 1
@bench_recover = common dso_local global i32 0, align 4
@bench_recover_setup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @SECP256K1_CONTEXT_VERIFY, align 4
  %4 = call i32 @secp256k1_context_create(i32 %3)
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @bench_recover, align 4
  %7 = load i32, i32* @bench_recover_setup, align 4
  %8 = call i32 @run_benchmark(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7, i32* null, %struct.TYPE_3__* %2, i32 10, i32 20000)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @secp256k1_context_destroy(i32 %10)
  ret i32 0
}

declare dso_local i32 @secp256k1_context_create(i32) #1

declare dso_local i32 @run_benchmark(i8*, i32, i32, i32*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @secp256k1_context_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
