; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_chacha20.c_chacha20_setup_crypto.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_chacha20.c_chacha20_setup_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chacha20_context_t = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@chacha20_dispose = common dso_local global i32 0, align 4
@chacha20_init = common dso_local global i32 0, align 4
@chacha20_transform = common dso_local global i32 0, align 4
@PTLS_CHACHA20_KEY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"01234567\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @chacha20_setup_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha20_setup_crypto(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.chacha20_context_t*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.chacha20_context_t*
  store %struct.chacha20_context_t* %9, %struct.chacha20_context_t** %7, align 8
  %10 = load i32, i32* @chacha20_dispose, align 4
  %11 = load %struct.chacha20_context_t*, %struct.chacha20_context_t** %7, align 8
  %12 = getelementptr inbounds %struct.chacha20_context_t, %struct.chacha20_context_t* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @chacha20_init, align 4
  %15 = load %struct.chacha20_context_t*, %struct.chacha20_context_t** %7, align 8
  %16 = getelementptr inbounds %struct.chacha20_context_t, %struct.chacha20_context_t* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @chacha20_transform, align 4
  %19 = load %struct.chacha20_context_t*, %struct.chacha20_context_t** %7, align 8
  %20 = getelementptr inbounds %struct.chacha20_context_t, %struct.chacha20_context_t* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.chacha20_context_t*, %struct.chacha20_context_t** %7, align 8
  %23 = getelementptr inbounds %struct.chacha20_context_t, %struct.chacha20_context_t* %22, i32 0, i32 0
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @PTLS_CHACHA20_KEY_SIZE, align 4
  %26 = call i32 @cf_chacha20_init(i32* %23, i8* %24, i32 %25, i32* bitcast ([9 x i8]* @.str to i32*))
  ret i32 0
}

declare dso_local i32 @cf_chacha20_init(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
