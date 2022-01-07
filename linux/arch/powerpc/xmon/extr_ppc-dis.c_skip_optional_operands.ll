; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_ppc-dis.c_skip_optional_operands.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_ppc-dis.c_skip_optional_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerpc_operand = type { i32 }

@powerpc_operands = common dso_local global %struct.powerpc_operand* null, align 8
@PPC_OPERAND_NEXT = common dso_local global i32 0, align 4
@PPC_OPERAND_OPTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @skip_optional_operands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_optional_operands(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.powerpc_operand*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  br label %9

9:                                                ; preds = %43, %3
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %9
  %15 = load %struct.powerpc_operand*, %struct.powerpc_operand** @powerpc_operands, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %15, i64 %18
  store %struct.powerpc_operand* %19, %struct.powerpc_operand** %8, align 8
  %20 = load %struct.powerpc_operand*, %struct.powerpc_operand** %8, align 8
  %21 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PPC_OPERAND_NEXT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %14
  %27 = load %struct.powerpc_operand*, %struct.powerpc_operand** %8, align 8
  %28 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PPC_OPERAND_OPTIONAL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.powerpc_operand*, %struct.powerpc_operand** %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @operand_value_powerpc(%struct.powerpc_operand* %34, i64 %35, i32 %36)
  %38 = load %struct.powerpc_operand*, %struct.powerpc_operand** %8, align 8
  %39 = call i64 @ppc_optional_operand_value(%struct.powerpc_operand* %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33, %14
  store i32 0, i32* %4, align 4
  br label %47

42:                                               ; preds = %33, %26
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  br label %9

46:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @operand_value_powerpc(%struct.powerpc_operand*, i64, i32) #1

declare dso_local i64 @ppc_optional_operand_value(%struct.powerpc_operand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
