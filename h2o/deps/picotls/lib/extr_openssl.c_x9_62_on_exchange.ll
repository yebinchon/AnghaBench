; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_openssl.c_x9_62_on_exchange.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_openssl.c_x9_62_on_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_x9_62_keyex_context_t = type { i32, i32 }

@PTLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32, i32*, i32)* @x9_62_on_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x9_62_on_exchange(i32** %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.st_x9_62_keyex_context_t*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32**, i32*** %5, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to %struct.st_x9_62_keyex_context_t*
  store %struct.st_x9_62_keyex_context_t* %15, %struct.st_x9_62_keyex_context_t** %9, align 8
  %16 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %9, align 8
  %17 = getelementptr inbounds %struct.st_x9_62_keyex_context_t, %struct.st_x9_62_keyex_context_t* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @EC_KEY_get0_group(i32 %18)
  store i32* %19, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %44

23:                                               ; preds = %4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %9, align 8
  %27 = getelementptr inbounds %struct.st_x9_62_keyex_context_t, %struct.st_x9_62_keyex_context_t* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @x9_62_decode_point(i32* %24, i32 %25, i32 %28)
  store i32* %29, i32** %11, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @PTLS_ALERT_DECODE_ERROR, align 4
  store i32 %32, i32* %12, align 4
  br label %44

33:                                               ; preds = %23
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %9, align 8
  %37 = getelementptr inbounds %struct.st_x9_62_keyex_context_t, %struct.st_x9_62_keyex_context_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @ecdh_calc_secret(i32* %34, i32* %35, i32 %38, i32* %39)
  store i32 %40, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %42, %31, %22
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @EC_POINT_free(i32* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %9, align 8
  %55 = call i32 @x9_62_free_context(%struct.st_x9_62_keyex_context_t* %54)
  %56 = load i32**, i32*** %5, align 8
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %12, align 4
  ret i32 %58
}

declare dso_local i32* @EC_KEY_get0_group(i32) #1

declare dso_local i32* @x9_62_decode_point(i32*, i32, i32) #1

declare dso_local i32 @ecdh_calc_secret(i32*, i32*, i32, i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @x9_62_free_context(%struct.st_x9_62_keyex_context_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
