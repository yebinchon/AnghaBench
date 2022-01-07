; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_arc4.c_arc4_set_key.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_arc4.c_arc4_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.crypto_tfm = type { i32 }
%struct.arc4_t = type { i8*, i8*, i8*, i8* }

@ARC4_START = common dso_local global i64 0, align 8
@IFX_ARC4_CON = common dso_local global i32* null, align 8
@ctx = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @arc4_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc4_set_key(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arc4_t*, align 8
  %8 = alloca i8**, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @ARC4_START, align 8
  %10 = inttoptr i64 %9 to %struct.arc4_t*
  store %struct.arc4_t* %10, %struct.arc4_t** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to i8**
  store i8** %12, i8*** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sub i32 %13, 1
  %15 = shl i32 %14, 27
  %16 = or i32 -2147483648, %15
  %17 = or i32 %16, 67108864
  %18 = or i32 %17, 196608
  %19 = load i32*, i32** @IFX_ARC4_CON, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i8**, i8*** %8, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.arc4_t*, %struct.arc4_t** %7, align 8
  %24 = getelementptr inbounds %struct.arc4_t, %struct.arc4_t* %23, i32 0, i32 3
  store volatile i8* %22, i8** %24, align 8
  %25 = load i8**, i8*** %8, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.arc4_t*, %struct.arc4_t** %7, align 8
  %29 = getelementptr inbounds %struct.arc4_t, %struct.arc4_t* %28, i32 0, i32 2
  store volatile i8* %27, i8** %29, align 8
  %30 = load i8**, i8*** %8, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.arc4_t*, %struct.arc4_t** %7, align 8
  %34 = getelementptr inbounds %struct.arc4_t, %struct.arc4_t* %33, i32 0, i32 1
  store volatile i8* %32, i8** %34, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 3
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.arc4_t*, %struct.arc4_t** %7, align 8
  %39 = getelementptr inbounds %struct.arc4_t, %struct.arc4_t* %38, i32 0, i32 0
  store volatile i8* %37, i8** %39, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
