; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_ssl.c_quic_decrypt_address_token.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_ssl.c_quic_decrypt_address_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.st_quic_keyset_t = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PTLS_ERROR_INCOMPATIBLE_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quic_decrypt_address_token(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.st_quic_keyset_t*, align 8
  %8 = bitcast %struct.TYPE_5__* %5 to { i32, i32* }*
  %9 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %8, i32 0, i32 0
  store i32 %1, i32* %9, align 8
  %10 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %8, i32 0, i32 1
  store i32* %2, i32** %10, align 8
  store i32* %0, i32** %6, align 8
  %11 = call i32 (...) @update_quic_keys()
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.st_quic_keyset_t* @find_keyset(i32 %15)
  store %struct.st_quic_keyset_t* %16, %struct.st_quic_keyset_t** %7, align 8
  %17 = icmp eq %struct.st_quic_keyset_t* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @PTLS_ERROR_INCOMPATIBLE_KEY, align 4
  store i32 %19, i32* %4, align 4
  br label %31

20:                                               ; preds = %3
  %21 = load %struct.st_quic_keyset_t*, %struct.st_quic_keyset_t** %7, align 8
  %22 = getelementptr inbounds %struct.st_quic_keyset_t, %struct.st_quic_keyset_t* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @quicly_decrypt_address_token(i32 %24, i32* %25, i32* %27, i32 %29, i32 1)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %20, %18
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @update_quic_keys(...) #1

declare dso_local %struct.st_quic_keyset_t* @find_keyset(i32) #1

declare dso_local i32 @quicly_decrypt_address_token(i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
