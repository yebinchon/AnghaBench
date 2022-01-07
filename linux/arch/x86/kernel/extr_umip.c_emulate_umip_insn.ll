; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_umip.c_emulate_umip_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_umip.c_emulate_umip_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UMIP_INST_SGDT = common dso_local global i32 0, align 4
@UMIP_INST_SIDT = common dso_local global i32 0, align 4
@UMIP_DUMMY_GDT_BASE = common dso_local global i64 0, align 8
@UMIP_DUMMY_IDT_BASE = common dso_local global i64 0, align 8
@UMIP_GDT_IDT_BASE_SIZE_64BIT = common dso_local global i32 0, align 4
@UMIP_GDT_IDT_BASE_SIZE_32BIT = common dso_local global i32 0, align 4
@UMIP_GDT_IDT_LIMIT_SIZE = common dso_local global i32 0, align 4
@UMIP_INST_SMSW = common dso_local global i32 0, align 4
@CR0_STATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn*, i32, i8*, i32*, i32)* @emulate_umip_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_umip_insn(%struct.insn* %0, i32 %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.insn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.insn* %0, %struct.insn** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.insn*, %struct.insn** %7, align 8
  %22 = icmp ne %struct.insn* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %17, %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %103

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @UMIP_INST_SGDT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @UMIP_INST_SIDT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %30, %26
  store i64 0, i64* %13, align 8
  %35 = load %struct.insn*, %struct.insn** %7, align 8
  %36 = getelementptr inbounds %struct.insn, %struct.insn* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @X86_MODRM_MOD(i32 %38)
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %103

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @UMIP_INST_SGDT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* @UMIP_DUMMY_GDT_BASE, align 8
  store i64 %49, i64* %12, align 8
  br label %52

50:                                               ; preds = %44
  %51 = load i64, i64* @UMIP_DUMMY_IDT_BASE, align 8
  store i64 %51, i64* %12, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @UMIP_GDT_IDT_BASE_SIZE_64BIT, align 4
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  br label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @UMIP_GDT_IDT_BASE_SIZE_32BIT, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i8* %63, i64* %12, i32 %65)
  %67 = load i32, i32* @UMIP_GDT_IDT_LIMIT_SIZE, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* @UMIP_GDT_IDT_LIMIT_SIZE, align 4
  %73 = call i32 @memcpy(i8* %71, i64* %13, i32 %72)
  br label %102

74:                                               ; preds = %30
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @UMIP_INST_SMSW, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = load i64, i64* @CR0_STATE, align 8
  store i64 %79, i64* %14, align 8
  %80 = load %struct.insn*, %struct.insn** %7, align 8
  %81 = getelementptr inbounds %struct.insn, %struct.insn* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @X86_MODRM_MOD(i32 %83)
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.insn*, %struct.insn** %7, align 8
  %88 = getelementptr inbounds %struct.insn, %struct.insn* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %10, align 8
  store i32 %89, i32* %90, align 4
  br label %93

91:                                               ; preds = %78
  %92 = load i32*, i32** %10, align 8
  store i32 2, i32* %92, align 4
  br label %93

93:                                               ; preds = %91, %86
  %94 = load i8*, i8** %9, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @memcpy(i8* %94, i64* %14, i32 %96)
  br label %101

98:                                               ; preds = %74
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %103

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %61
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %102, %98, %41, %23
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @X86_MODRM_MOD(i32) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
