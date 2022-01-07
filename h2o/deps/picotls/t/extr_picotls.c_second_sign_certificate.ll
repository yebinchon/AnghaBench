; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_second_sign_certificate.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_second_sign_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32*, i32*, i32*, i32, i32*, i64)* }

@sc_callcnt = common dso_local global i32 0, align 4
@second_sc_orig = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32, i32*, i64)* @second_sign_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @second_sign_certificate(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i64 %6, i64* %14, align 8
  %15 = load i32, i32* @sc_callcnt, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @sc_callcnt, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @second_sc_orig, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_3__*, i32*, i32*, i32*, i32, i32*, i64)*, i32 (%struct.TYPE_3__*, i32*, i32*, i32*, i32, i32*, i64)** %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @second_sc_orig, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32*, i32** %13, align 8
  %26 = load i64, i64* %14, align 8
  %27 = call i32 %19(%struct.TYPE_3__* %20, i32* %21, i32* %22, i32* %23, i32 %24, i32* %25, i64 %26)
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
