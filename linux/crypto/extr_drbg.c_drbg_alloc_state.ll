; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_alloc_state.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_alloc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { {}*, {}* }
%struct.drbg_state = type { i32, %struct.TYPE_6__*, i8*, %struct.TYPE_5__*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DRBG_TYPE_MASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CONFIG_CRYPTO_FIPS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@drbg_ctr_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@drbg_hash_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@drbg_hmac_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbg_state*)* @drbg_alloc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbg_alloc_state(%struct.drbg_state* %0) #0 {
  %2 = alloca %struct.drbg_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.drbg_state* %0, %struct.drbg_state** %2, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %8 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DRBG_TYPE_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %14 [
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %26

17:                                               ; No predecessors!
  %18 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %19 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = bitcast {}** %21 to i32 (%struct.drbg_state*)**
  %23 = load i32 (%struct.drbg_state*)*, i32 (%struct.drbg_state*)** %22, align 8
  %24 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %25 = call i32 %23(%struct.drbg_state* %24)
  br label %26

26:                                               ; preds = %17, %14
  %27 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %28 = call i32 @drbg_dealloc_state(%struct.drbg_state* %27)
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @drbg_dealloc_state(%struct.drbg_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
