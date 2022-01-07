; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_dbdma.c_au1xxx_dbdma_put_source.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_dbdma.c_au1xxx_dbdma_put_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@DSCR_CMD0_V = common dso_local global i32 0, align 4
@DDMA_FLAGS_IE = common dso_local global i32 0, align 4
@DSCR_CMD0_IE = common dso_local global i32 0, align 4
@DDMA_FLAGS_NOIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au1xxx_dbdma_put_source(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_6__**
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %10, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %11, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DSCR_CMD0_V, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %80

26:                                               ; preds = %4
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @DDMA_FLAGS_IE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load i32, i32* @DSCR_CMD0_IE, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %26
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @DDMA_FLAGS_NOIE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* @DSCR_CMD0_IE, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %48, %43
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @dma_cache_wback_inv(i64 %56, i32 %57)
  %59 = load i32, i32* @DSCR_CMD0_V, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = call i32 (...) @wmb()
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %66 = ptrtoint %struct.TYPE_7__* %65 to i64
  %67 = call i32 @dma_cache_wback_inv(i64 %66, i32 24)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @DSCR_GET_NXTPTR(i32 %74)
  %76 = call %struct.TYPE_7__* @phys_to_virt(i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %78, align 8
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %55, %25
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @dma_cache_wback_inv(i64, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local %struct.TYPE_7__* @phys_to_virt(i32) #1

declare dso_local i32 @DSCR_GET_NXTPTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
