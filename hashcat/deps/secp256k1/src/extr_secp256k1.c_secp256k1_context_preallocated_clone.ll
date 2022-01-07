; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_context_preallocated_clone.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_context_preallocated_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @secp256k1_context_preallocated_clone(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @VERIFY_CHECK(i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @ARG_CHECK(i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = call i64 @secp256k1_context_preallocated_clone_size(%struct.TYPE_7__* %15)
  store i64 %16, i64* %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @memcpy(%struct.TYPE_7__* %19, %struct.TYPE_7__* %20, i64 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = call i32 @secp256k1_ecmult_gen_context_finalize_memcpy(i32* %24, i32* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = call i32 @secp256k1_ecmult_context_finalize_memcpy(i32* %29, i32* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %33
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i32 @ARG_CHECK(i32) #1

declare dso_local i64 @secp256k1_context_preallocated_clone_size(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @secp256k1_ecmult_gen_context_finalize_memcpy(i32*, i32*) #1

declare dso_local i32 @secp256k1_ecmult_context_finalize_memcpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
