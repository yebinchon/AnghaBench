; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_ppc-dis.c_lookup_powerpc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_ppc-dis.c_lookup_powerpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerpc_opcode = type { i64, i64, i32, i32, i8* }
%struct.powerpc_operand = type { i32 (i64, i32, i32*)* }

@powerpc_opcodes = common dso_local global %struct.powerpc_opcode* null, align 8
@powerpc_num_opcodes = common dso_local global i32 0, align 4
@powerpc_operands = common dso_local global %struct.powerpc_operand* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.powerpc_opcode* (i64, i32)* @lookup_powerpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.powerpc_opcode* @lookup_powerpc(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.powerpc_opcode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.powerpc_opcode*, align 8
  %7 = alloca %struct.powerpc_opcode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.powerpc_operand*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.powerpc_opcode*, %struct.powerpc_opcode** @powerpc_opcodes, align 8
  %12 = load i32, i32* @powerpc_num_opcodes, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.powerpc_opcode, %struct.powerpc_opcode* %11, i64 %13
  store %struct.powerpc_opcode* %14, %struct.powerpc_opcode** %7, align 8
  %15 = load %struct.powerpc_opcode*, %struct.powerpc_opcode** @powerpc_opcodes, align 8
  store %struct.powerpc_opcode* %15, %struct.powerpc_opcode** %6, align 8
  br label %16

16:                                               ; preds = %85, %2
  %17 = load %struct.powerpc_opcode*, %struct.powerpc_opcode** %6, align 8
  %18 = load %struct.powerpc_opcode*, %struct.powerpc_opcode** %7, align 8
  %19 = icmp ult %struct.powerpc_opcode* %17, %18
  br i1 %19, label %20, label %88

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.powerpc_opcode*, %struct.powerpc_opcode** %6, align 8
  %23 = getelementptr inbounds %struct.powerpc_opcode, %struct.powerpc_opcode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %21, %24
  %26 = load %struct.powerpc_opcode*, %struct.powerpc_opcode** %6, align 8
  %27 = getelementptr inbounds %struct.powerpc_opcode, %struct.powerpc_opcode* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %47, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.powerpc_opcode*, %struct.powerpc_opcode** %6, align 8
  %35 = getelementptr inbounds %struct.powerpc_opcode, %struct.powerpc_opcode* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.powerpc_opcode*, %struct.powerpc_opcode** %6, align 8
  %42 = getelementptr inbounds %struct.powerpc_opcode, %struct.powerpc_opcode* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %33, %20
  br label %85

48:                                               ; preds = %40, %30
  store i32 0, i32* %10, align 4
  %49 = load %struct.powerpc_opcode*, %struct.powerpc_opcode** %6, align 8
  %50 = getelementptr inbounds %struct.powerpc_opcode, %struct.powerpc_opcode* %49, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %76, %48
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = load %struct.powerpc_operand*, %struct.powerpc_operand** @powerpc_operands, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %58, i64 %62
  store %struct.powerpc_operand* %63, %struct.powerpc_operand** %9, align 8
  %64 = load %struct.powerpc_operand*, %struct.powerpc_operand** %9, align 8
  %65 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %64, i32 0, i32 0
  %66 = load i32 (i64, i32, i32*)*, i32 (i64, i32, i32*)** %65, align 8
  %67 = icmp ne i32 (i64, i32, i32*)* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.powerpc_operand*, %struct.powerpc_operand** %9, align 8
  %70 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %69, i32 0, i32 0
  %71 = load i32 (i64, i32, i32*)*, i32 (i64, i32, i32*)** %70, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 %71(i64 %72, i32 %73, i32* %10)
  br label %75

75:                                               ; preds = %68, %57
  br label %76

76:                                               ; preds = %75
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %8, align 8
  br label %52

79:                                               ; preds = %52
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %85

83:                                               ; preds = %79
  %84 = load %struct.powerpc_opcode*, %struct.powerpc_opcode** %6, align 8
  store %struct.powerpc_opcode* %84, %struct.powerpc_opcode** %3, align 8
  br label %89

85:                                               ; preds = %82, %47
  %86 = load %struct.powerpc_opcode*, %struct.powerpc_opcode** %6, align 8
  %87 = getelementptr inbounds %struct.powerpc_opcode, %struct.powerpc_opcode* %86, i32 1
  store %struct.powerpc_opcode* %87, %struct.powerpc_opcode** %6, align 8
  br label %16

88:                                               ; preds = %16
  store %struct.powerpc_opcode* null, %struct.powerpc_opcode** %3, align 8
  br label %89

89:                                               ; preds = %88, %83
  %90 = load %struct.powerpc_opcode*, %struct.powerpc_opcode** %3, align 8
  ret %struct.powerpc_opcode* %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
