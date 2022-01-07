; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vdsl.c_ptm_napi_poll.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vdsl.c_ptm_napi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }

@MBOX_IGU1_ISRC = common dso_local global i32 0, align 4
@MBOX_IGU1_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @ptm_napi_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptm_napi_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.napi_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ptm_poll(i32 %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %12 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @netif_running(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %18 = call i32 @napi_complete(%struct.napi_struct* %17)
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %34

20:                                               ; preds = %2
  %21 = load i32, i32* @MBOX_IGU1_ISRC, align 4
  %22 = call i32 @IFX_REG_W32_MASK(i32 0, i32 1, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %28 = call i32 @napi_complete(%struct.napi_struct* %27)
  %29 = load i32, i32* @MBOX_IGU1_IER, align 4
  %30 = call i32 @IFX_REG_W32_MASK(i32 0, i32 1, i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %26, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @ptm_poll(i32, i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @napi_complete(%struct.napi_struct*) #1

declare dso_local i32 @IFX_REG_W32_MASK(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
