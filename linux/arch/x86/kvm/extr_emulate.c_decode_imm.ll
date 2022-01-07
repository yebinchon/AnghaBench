; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_decode_imm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_decode_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32 }
%struct.operand = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@OP_IMM = common dso_local global i32 0, align 4
@s8 = common dso_local global i32 0, align 4
@s16 = common dso_local global i32 0, align 4
@s32 = common dso_local global i32 0, align 4
@s64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, %struct.operand*, i32, i32)* @decode_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_imm(%struct.x86_emulate_ctxt* %0, %struct.operand* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.x86_emulate_ctxt*, align 8
  %6 = alloca %struct.operand*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %5, align 8
  store %struct.operand* %1, %struct.operand** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @OP_IMM, align 4
  %12 = load %struct.operand*, %struct.operand** %6, align 8
  %13 = getelementptr inbounds %struct.operand, %struct.operand* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.operand*, %struct.operand** %6, align 8
  %16 = getelementptr inbounds %struct.operand, %struct.operand* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %18 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.operand*, %struct.operand** %6, align 8
  %21 = getelementptr inbounds %struct.operand, %struct.operand* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.operand*, %struct.operand** %6, align 8
  %25 = getelementptr inbounds %struct.operand, %struct.operand* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %55 [
    i32 1, label %27
    i32 2, label %34
    i32 4, label %41
    i32 8, label %48
  ]

27:                                               ; preds = %4
  %28 = load i32, i32* @s8, align 4
  %29 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %30 = call i8* @insn_fetch(i32 %28, %struct.x86_emulate_ctxt* %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.operand*, %struct.operand** %6, align 8
  %33 = getelementptr inbounds %struct.operand, %struct.operand* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %55

34:                                               ; preds = %4
  %35 = load i32, i32* @s16, align 4
  %36 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %37 = call i8* @insn_fetch(i32 %35, %struct.x86_emulate_ctxt* %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.operand*, %struct.operand** %6, align 8
  %40 = getelementptr inbounds %struct.operand, %struct.operand* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %55

41:                                               ; preds = %4
  %42 = load i32, i32* @s32, align 4
  %43 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %44 = call i8* @insn_fetch(i32 %42, %struct.x86_emulate_ctxt* %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.operand*, %struct.operand** %6, align 8
  %47 = getelementptr inbounds %struct.operand, %struct.operand* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %55

48:                                               ; preds = %4
  %49 = load i32, i32* @s64, align 4
  %50 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %51 = call i8* @insn_fetch(i32 %49, %struct.x86_emulate_ctxt* %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.operand*, %struct.operand** %6, align 8
  %54 = getelementptr inbounds %struct.operand, %struct.operand* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %4, %48, %41, %34, %27
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %55
  %59 = load %struct.operand*, %struct.operand** %6, align 8
  %60 = getelementptr inbounds %struct.operand, %struct.operand* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %76 [
    i32 1, label %62
    i32 2, label %67
    i32 4, label %72
  ]

62:                                               ; preds = %58
  %63 = load %struct.operand*, %struct.operand** %6, align 8
  %64 = getelementptr inbounds %struct.operand, %struct.operand* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 255
  store i32 %66, i32* %64, align 4
  br label %76

67:                                               ; preds = %58
  %68 = load %struct.operand*, %struct.operand** %6, align 8
  %69 = getelementptr inbounds %struct.operand, %struct.operand* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 65535
  store i32 %71, i32* %69, align 4
  br label %76

72:                                               ; preds = %58
  %73 = load %struct.operand*, %struct.operand** %6, align 8
  %74 = getelementptr inbounds %struct.operand, %struct.operand* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %74, align 4
  br label %76

76:                                               ; preds = %58, %72, %67, %62
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  ret i32 %79
}

declare dso_local i8* @insn_fetch(i32, %struct.x86_emulate_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
