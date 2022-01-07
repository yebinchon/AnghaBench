; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_kvm_sys_reg_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_kvm_sys_reg_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32*, %struct.TYPE_10__*)* }
%struct.sys_reg_desc = type { i32 }

@sys_reg_descs = common dso_local global %struct.TYPE_10__* null, align 8
@cp14_regs = common dso_local global %struct.TYPE_10__* null, align 8
@cp14_64_regs = common dso_local global %struct.TYPE_10__* null, align 8
@cp15_regs = common dso_local global %struct.TYPE_10__* null, align 8
@cp15_64_regs = common dso_local global %struct.TYPE_10__* null, align 8
@invariant_sys_regs = common dso_local global %struct.TYPE_10__* null, align 8
@cache_levels = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_sys_reg_table_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sys_reg_desc, align 4
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sys_reg_descs, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sys_reg_descs, align 8
  %5 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %4)
  %6 = call i32 @check_sysreg_table(%struct.TYPE_10__* %3, i32 %5)
  %7 = call i32 @BUG_ON(i32 %6)
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cp14_regs, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cp14_regs, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %9)
  %11 = call i32 @check_sysreg_table(%struct.TYPE_10__* %8, i32 %10)
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cp14_64_regs, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cp14_64_regs, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %14)
  %16 = call i32 @check_sysreg_table(%struct.TYPE_10__* %13, i32 %15)
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cp15_regs, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cp15_regs, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %19)
  %21 = call i32 @check_sysreg_table(%struct.TYPE_10__* %18, i32 %20)
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cp15_64_regs, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cp15_64_regs, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %24)
  %26 = call i32 @check_sysreg_table(%struct.TYPE_10__* %23, i32 %25)
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @invariant_sys_regs, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @invariant_sys_regs, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %29)
  %31 = call i32 @check_sysreg_table(%struct.TYPE_10__* %28, i32 %30)
  %32 = call i32 @BUG_ON(i32 %31)
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %50, %0
  %34 = load i32, i32* %1, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @invariant_sys_regs, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %35)
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** @invariant_sys_regs, align 8
  %40 = load i32, i32* %1, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32 (i32*, %struct.TYPE_10__*)*, i32 (i32*, %struct.TYPE_10__*)** %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @invariant_sys_regs, align 8
  %46 = load i32, i32* %1, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %47
  %49 = call i32 %44(i32* null, %struct.TYPE_10__* %48)
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %1, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %33

53:                                               ; preds = %33
  %54 = call i32 @get_clidr_el1(i32* null, %struct.sys_reg_desc* %2)
  %55 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %2, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* @cache_levels, align 4
  store i32 0, i32* %1, align 4
  br label %57

57:                                               ; preds = %69, %53
  %58 = load i32, i32* %1, align 4
  %59 = icmp ult i32 %58, 7
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i32, i32* @cache_levels, align 4
  %62 = load i32, i32* %1, align 4
  %63 = mul i32 %62, 3
  %64 = lshr i32 %61, %63
  %65 = and i32 %64, 7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %72

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %1, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %1, align 4
  br label %57

72:                                               ; preds = %67, %57
  %73 = load i32, i32* %1, align 4
  %74 = mul i32 %73, 3
  %75 = shl i32 1, %74
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @cache_levels, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* @cache_levels, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @check_sysreg_table(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @get_clidr_el1(i32*, %struct.sys_reg_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
