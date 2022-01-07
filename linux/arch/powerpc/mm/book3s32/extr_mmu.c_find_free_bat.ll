; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s32/extr_mmu.c_find_free_bat.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s32/extr_mmu.c_find_free_bat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_bat = type { i32, i32 }

@CONFIG_PPC_BOOK3S_601 = common dso_local global i32 0, align 4
@BATS = common dso_local global %struct.ppc_bat** null, align 8
@MMU_FTR_USE_HIGH_BATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @find_free_bat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_free_bat() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.ppc_bat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ppc_bat*, align 8
  %6 = load i32, i32* @CONFIG_PPC_BOOK3S_601, align 4
  %7 = call i64 @IS_ENABLED(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %28, %9
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load %struct.ppc_bat**, %struct.ppc_bat*** @BATS, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ppc_bat*, %struct.ppc_bat** %14, i64 %16
  %18 = load %struct.ppc_bat*, %struct.ppc_bat** %17, align 8
  store %struct.ppc_bat* %18, %struct.ppc_bat** %3, align 8
  %19 = load %struct.ppc_bat*, %struct.ppc_bat** %3, align 8
  %20 = getelementptr inbounds %struct.ppc_bat, %struct.ppc_bat* %19, i64 0
  %21 = getelementptr inbounds %struct.ppc_bat, %struct.ppc_bat* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 64
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %2, align 4
  store i32 %26, i32* %1, align 4
  br label %62

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %10

31:                                               ; preds = %10
  br label %61

32:                                               ; preds = %0
  %33 = load i32, i32* @MMU_FTR_USE_HIGH_BATS, align 4
  %34 = call i64 @mmu_has_feature(i32 %33)
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 8, i32 4
  store i32 %37, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %57, %32
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load %struct.ppc_bat**, %struct.ppc_bat*** @BATS, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ppc_bat*, %struct.ppc_bat** %43, i64 %45
  %47 = load %struct.ppc_bat*, %struct.ppc_bat** %46, align 8
  store %struct.ppc_bat* %47, %struct.ppc_bat** %5, align 8
  %48 = load %struct.ppc_bat*, %struct.ppc_bat** %5, align 8
  %49 = getelementptr inbounds %struct.ppc_bat, %struct.ppc_bat* %48, i64 1
  %50 = getelementptr inbounds %struct.ppc_bat, %struct.ppc_bat* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 3
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %2, align 4
  store i32 %55, i32* %1, align 4
  br label %62

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  br label %38

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60, %31
  store i32 -1, i32* %1, align 4
  br label %62

62:                                               ; preds = %61, %54, %25
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @mmu_has_feature(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
