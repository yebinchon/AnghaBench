; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s32/extr_mmu.c_setibat.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s32/extr_mmu.c_setibat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_bat = type { i64, i32 }

@BATS = common dso_local global %struct.ppc_bat** null, align 8
@CPU_FTR_NEED_COHERENT = common dso_local global i32 0, align 4
@_PAGE_COHERENT = common dso_local global i64 0, align 8
@_PAGE_EXEC = common dso_local global i64 0, align 8
@BPP_RX = common dso_local global i64 0, align 8
@BPP_XX = common dso_local global i64 0, align 8
@_PAGE_USER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32, i32)* @setibat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setibat(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ppc_bat*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = lshr i32 %15, 17
  %17 = sub i32 %16, 1
  store i32 %17, i32* %11, align 4
  %18 = load %struct.ppc_bat**, %struct.ppc_bat*** @BATS, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ppc_bat*, %struct.ppc_bat** %18, i64 %20
  %22 = load %struct.ppc_bat*, %struct.ppc_bat** %21, align 8
  store %struct.ppc_bat* %22, %struct.ppc_bat** %13, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @pgprot_val(i32 %23)
  store i64 %24, i64* %14, align 8
  %25 = load i32, i32* @CPU_FTR_NEED_COHERENT, align 4
  %26 = call i32 @cpu_has_feature(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %5
  %29 = load i64, i64* @_PAGE_COHERENT, align 8
  %30 = xor i64 %29, -1
  %31 = load i64, i64* %14, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %14, align 8
  br label %33

33:                                               ; preds = %28, %5
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* @_PAGE_COHERENT, align 8
  %36 = and i64 %34, %35
  %37 = load i64, i64* @_PAGE_EXEC, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i64, i64* @BPP_RX, align 8
  br label %43

41:                                               ; preds = %33
  %42 = load i64, i64* @BPP_XX, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i64 [ %40, %39 ], [ %42, %41 ]
  %45 = or i64 %36, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %12, align 4
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = shl i32 %48, 2
  %50 = zext i32 %49 to i64
  %51 = or i64 %47, %50
  %52 = or i64 %51, 2
  %53 = load %struct.ppc_bat*, %struct.ppc_bat** %13, align 8
  %54 = getelementptr inbounds %struct.ppc_bat, %struct.ppc_bat* %53, i64 0
  %55 = getelementptr inbounds %struct.ppc_bat, %struct.ppc_bat* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @BAT_PHYS_ADDR(i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.ppc_bat*, %struct.ppc_bat** %13, align 8
  %61 = getelementptr inbounds %struct.ppc_bat, %struct.ppc_bat* %60, i64 0
  %62 = getelementptr inbounds %struct.ppc_bat, %struct.ppc_bat* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* @_PAGE_USER, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %43
  %68 = load %struct.ppc_bat*, %struct.ppc_bat** %13, align 8
  %69 = getelementptr inbounds %struct.ppc_bat, %struct.ppc_bat* %68, i64 0
  %70 = getelementptr inbounds %struct.ppc_bat, %struct.ppc_bat* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = or i64 %71, 1
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %67, %43
  ret void
}

declare dso_local i64 @pgprot_val(i32) #1

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i32 @BAT_PHYS_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
