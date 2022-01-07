; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_kvm_coproc_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_kvm_coproc_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32*, %struct.TYPE_6__*)* }

@cp15_regs = common dso_local global %struct.TYPE_6__* null, align 8
@invariant_cp15 = common dso_local global %struct.TYPE_6__* null, align 8
@cache_levels = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_coproc_table_init() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cp15_regs, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cp15_regs, align 8
  %4 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %3)
  %5 = call i32 @check_reg_table(%struct.TYPE_6__* %2, i32 %4)
  %6 = call i32 @BUG_ON(i32 %5)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @invariant_cp15, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @invariant_cp15, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %8)
  %10 = call i32 @check_reg_table(%struct.TYPE_6__* %7, i32 %9)
  %11 = call i32 @BUG_ON(i32 %10)
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %29, %0
  %13 = load i32, i32* %1, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @invariant_cp15, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %14)
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @invariant_cp15, align 8
  %19 = load i32, i32* %1, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32 (i32*, %struct.TYPE_6__*)*, i32 (i32*, %struct.TYPE_6__*)** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @invariant_cp15, align 8
  %25 = load i32, i32* %1, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = call i32 %23(i32* null, %struct.TYPE_6__* %27)
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %1, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %12

32:                                               ; preds = %12
  %33 = call i32 asm sideeffect "mrc p15, 1, $0, c0, c0, 1", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %33, i32* @cache_levels, align 4
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %46, %32
  %35 = load i32, i32* %1, align 4
  %36 = icmp ult i32 %35, 7
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i32, i32* @cache_levels, align 4
  %39 = load i32, i32* %1, align 4
  %40 = mul i32 %39, 3
  %41 = lshr i32 %38, %40
  %42 = and i32 %41, 7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %49

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %1, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %34

49:                                               ; preds = %44, %34
  %50 = load i32, i32* %1, align 4
  %51 = mul i32 %50, 3
  %52 = shl i32 1, %51
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* @cache_levels, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* @cache_levels, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @check_reg_table(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 760}
