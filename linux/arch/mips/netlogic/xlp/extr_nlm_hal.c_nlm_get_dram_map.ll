; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_nlm_hal.c_nlm_get_dram_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_nlm_hal.c_nlm_get_dram_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_get_dram_map(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = call i32 @nlm_get_bridge_regbase(i32 0)
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %94, %3
  %19 = load i32, i32* %14, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %97

21:                                               ; preds = %18
  %22 = load i32, i32* %16, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %97

27:                                               ; preds = %21
  %28 = call i64 (...) @cpu_is_xlp9xx()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @BRIDGE_9XX_DRAM_BAR(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @BRIDGE_9XX_DRAM_LIMIT(i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @BRIDGE_9XX_DRAM_NODE_TRANSLN(i32 %35)
  store i32 %36, i32* %13, align 4
  br label %44

37:                                               ; preds = %27
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @BRIDGE_DRAM_BAR(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @BRIDGE_DRAM_LIMIT(i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @BRIDGE_DRAM_NODE_TRANSLN(i32 %42)
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %37, %30
  %45 = load i32, i32* %4, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @nlm_read_bridge_reg(i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = ashr i32 %51, 1
  %53 = and i32 %52, 3
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %94

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @nlm_read_bridge_reg(i32 %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = ashr i32 %63, 12
  %65 = and i32 %64, 1048575
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = shl i32 %66, 20
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @nlm_read_bridge_reg(i32 %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = ashr i32 %71, 12
  %73 = and i32 %72, 1048575
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  br label %94

77:                                               ; preds = %59
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = shl i32 %79, 20
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %86, i32* %91, align 4
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %16, align 4
  br label %94

94:                                               ; preds = %77, %76, %57
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %18

97:                                               ; preds = %26, %18
  %98 = load i32, i32* %16, align 4
  ret i32 %98
}

declare dso_local i32 @nlm_get_bridge_regbase(i32) #1

declare dso_local i64 @cpu_is_xlp9xx(...) #1

declare dso_local i32 @BRIDGE_9XX_DRAM_BAR(i32) #1

declare dso_local i32 @BRIDGE_9XX_DRAM_LIMIT(i32) #1

declare dso_local i32 @BRIDGE_9XX_DRAM_NODE_TRANSLN(i32) #1

declare dso_local i32 @BRIDGE_DRAM_BAR(i32) #1

declare dso_local i32 @BRIDGE_DRAM_LIMIT(i32) #1

declare dso_local i32 @BRIDGE_DRAM_NODE_TRANSLN(i32) #1

declare dso_local i32 @nlm_read_bridge_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
