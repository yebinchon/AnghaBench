; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_x25519.c_x25519_on_exchange.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_x25519.c_x25519_on_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.st_x25519_key_exchange_t = type { i32, i32 }

@X25519_KEY_SIZE = common dso_local global i64 0, align 8
@PTLS_ALERT_DECRYPT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32, %struct.TYPE_5__*, i64, i32)* @x25519_on_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25519_on_exchange(i32** %0, i32 %1, %struct.TYPE_5__* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.st_x25519_key_exchange_t*, align 8
  %11 = alloca i32, align 4
  %12 = bitcast %struct.TYPE_5__* %6 to { i64, i32 }*
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  store i64 %3, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  store i32 %4, i32* %14, align 8
  store i32** %0, i32*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  %15 = load i32**, i32*** %7, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to %struct.st_x25519_key_exchange_t*
  store %struct.st_x25519_key_exchange_t* %17, %struct.st_x25519_key_exchange_t** %10, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %39

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @X25519_KEY_SIZE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @PTLS_ALERT_DECRYPT_ERROR, align 4
  store i32 %27, i32* %11, align 4
  br label %39

28:                                               ; preds = %21
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = load %struct.st_x25519_key_exchange_t*, %struct.st_x25519_key_exchange_t** %10, align 8
  %31 = getelementptr inbounds %struct.st_x25519_key_exchange_t, %struct.st_x25519_key_exchange_t* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.st_x25519_key_exchange_t*, %struct.st_x25519_key_exchange_t** %10, align 8
  %34 = getelementptr inbounds %struct.st_x25519_key_exchange_t, %struct.st_x25519_key_exchange_t* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @x25519_derive_secret(%struct.TYPE_5__* %29, i32 %32, i32 %35, i32* null, i32 %37)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %28, %26, %20
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.st_x25519_key_exchange_t*, %struct.st_x25519_key_exchange_t** %10, align 8
  %44 = getelementptr inbounds %struct.st_x25519_key_exchange_t, %struct.st_x25519_key_exchange_t* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ptls_clear_memory(i32 %45, i32 4)
  %47 = load %struct.st_x25519_key_exchange_t*, %struct.st_x25519_key_exchange_t** %10, align 8
  %48 = call i32 @free(%struct.st_x25519_key_exchange_t* %47)
  %49 = load i32**, i32*** %7, align 8
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %42, %39
  %51 = load i32, i32* %11, align 4
  ret i32 %51
}

declare dso_local i32 @x25519_derive_secret(%struct.TYPE_5__*, i32, i32, i32*, i32) #1

declare dso_local i32 @ptls_clear_memory(i32, i32) #1

declare dso_local i32 @free(%struct.st_x25519_key_exchange_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
