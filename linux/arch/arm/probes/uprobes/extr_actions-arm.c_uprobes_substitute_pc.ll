; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_actions-arm.c_uprobes_substitute_pc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_actions-arm.c_uprobes_substitute_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @uprobes_substitute_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uprobes_substitute_pc(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i64*, i64** %4, align 8
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @__mem_to_opcode_arm(i64 %13)
  store i32 %14, i32* %6, align 4
  store i32 65535, i32* %10, align 4
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %11, align 4
  br label %16

16:                                               ; preds = %32, %2
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  %21 = and i32 %20, 15
  %22 = load i32, i32* @REG_TYPE_NONE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %32

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 15
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %25, %24
  %33 = load i32, i32* %11, align 4
  %34 = ashr i32 %33, 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 4
  store i32 %36, i32* %6, align 4
  br label %16

37:                                               ; preds = %16
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, 32768
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 15, i32* %3, align 4
  br label %93

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %93

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @fls(i32 %47)
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i64*, i64** %4, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @__mem_to_opcode_arm(i64 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %11, align 4
  store i32 15, i32* %8, align 4
  br label %55

55:                                               ; preds = %79, %46
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, 15
  %61 = load i32, i32* @REG_TYPE_NONE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %79

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 15
  %67 = icmp ne i32 %66, 15
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %79

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %69, %68, %63
  %80 = load i32, i32* %11, align 4
  %81 = ashr i32 %80, 4
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %8, align 4
  %83 = shl i32 %82, 4
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %10, align 4
  %85 = shl i32 %84, 4
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %7, align 4
  %87 = ashr i32 %86, 4
  store i32 %87, i32* %7, align 4
  br label %55

88:                                               ; preds = %55
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @__opcode_to_mem_arm(i32 %89)
  %91 = load i64*, i64** %4, align 8
  store i64 %90, i64* %91, align 8
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %45, %41
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @__mem_to_opcode_arm(i64) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i64 @__opcode_to_mem_arm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
