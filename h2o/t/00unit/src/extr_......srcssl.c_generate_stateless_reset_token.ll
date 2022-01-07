; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/src/extr_......srcssl.c_generate_stateless_reset_token.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/src/extr_......srcssl.c_generate_stateless_reset_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_quic_keyset_t = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i8*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @generate_stateless_reset_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_stateless_reset_token(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.st_quic_keyset_t*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = call i32 (...) @update_quic_keys()
  %13 = load i32*, i32** %8, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.st_quic_keyset_t* @find_keyset(i32 %15)
  store %struct.st_quic_keyset_t* %16, %struct.st_quic_keyset_t** %9, align 8
  %17 = icmp eq %struct.st_quic_keyset_t* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

19:                                               ; preds = %3
  %20 = load %struct.st_quic_keyset_t*, %struct.st_quic_keyset_t** %9, align 8
  %21 = getelementptr inbounds %struct.st_quic_keyset_t, %struct.st_quic_keyset_t* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_2__*, i8*, i32*)*, i32 (%struct.TYPE_2__*, i8*, i32*)** %23, align 8
  %25 = load %struct.st_quic_keyset_t*, %struct.st_quic_keyset_t** %9, align 8
  %26 = getelementptr inbounds %struct.st_quic_keyset_t, %struct.st_quic_keyset_t* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = call i32 %24(%struct.TYPE_2__* %27, i8* %28, i32* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %19, %18
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @update_quic_keys(...) #1

declare dso_local %struct.st_quic_keyset_t* @find_keyset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
