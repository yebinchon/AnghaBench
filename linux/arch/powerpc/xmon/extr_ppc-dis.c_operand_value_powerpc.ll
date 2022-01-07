; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_ppc-dis.c_operand_value_powerpc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_ppc-dis.c_operand_value_powerpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerpc_operand = type { i64 (i64, i32, i32*)*, i64, i64, i32 }

@PPC_OPERAND_SIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.powerpc_operand*, i64, i32)* @operand_value_powerpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @operand_value_powerpc(%struct.powerpc_operand* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.powerpc_operand*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.powerpc_operand* %0, %struct.powerpc_operand** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.powerpc_operand*, %struct.powerpc_operand** %4, align 8
  %11 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %10, i32 0, i32 0
  %12 = load i64 (i64, i32, i32*)*, i64 (i64, i32, i32*)** %11, align 8
  %13 = icmp ne i64 (i64, i32, i32*)* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.powerpc_operand*, %struct.powerpc_operand** %4, align 8
  %16 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %15, i32 0, i32 0
  %17 = load i64 (i64, i32, i32*)*, i64 (i64, i32, i32*)** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 %17(i64 %18, i32 %19, i32* %8)
  store i64 %20, i64* %7, align 8
  br label %76

21:                                               ; preds = %3
  %22 = load %struct.powerpc_operand*, %struct.powerpc_operand** %4, align 8
  %23 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.powerpc_operand*, %struct.powerpc_operand** %4, align 8
  %29 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = lshr i64 %27, %30
  %32 = load %struct.powerpc_operand*, %struct.powerpc_operand** %4, align 8
  %33 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = and i64 %31, %34
  store i64 %35, i64* %7, align 8
  br label %47

36:                                               ; preds = %21
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.powerpc_operand*, %struct.powerpc_operand** %4, align 8
  %39 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 0, %40
  %42 = shl i64 %37, %41
  %43 = load %struct.powerpc_operand*, %struct.powerpc_operand** %4, align 8
  %44 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %42, %45
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %36, %26
  %48 = load %struct.powerpc_operand*, %struct.powerpc_operand** %4, align 8
  %49 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PPC_OPERAND_SIGNED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %47
  %55 = load %struct.powerpc_operand*, %struct.powerpc_operand** %4, align 8
  %56 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = sub i64 0, %59
  %61 = and i64 %58, %60
  %62 = sub i64 %61, 1
  %63 = load i64, i64* %9, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = lshr i64 %65, 1
  %67 = xor i64 %66, -1
  %68 = load i64, i64* %9, align 8
  %69 = and i64 %68, %67
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = xor i64 %70, %71
  %73 = load i64, i64* %9, align 8
  %74 = sub i64 %72, %73
  store i64 %74, i64* %7, align 8
  br label %75

75:                                               ; preds = %54, %47
  br label %76

76:                                               ; preds = %75, %14
  %77 = load i64, i64* %7, align 8
  ret i64 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
