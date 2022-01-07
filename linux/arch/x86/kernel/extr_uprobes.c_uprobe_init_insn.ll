; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_uprobe_init_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_uprobe_init_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_uprobe = type { i32 }
%struct.insn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOEXEC = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@good_insns_64 = common dso_local global i32* null, align 8
@good_insns_32 = common dso_local global i32* null, align 8
@good_2byte_insns = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arch_uprobe*, %struct.insn*, i32)* @uprobe_init_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uprobe_init_insn(%struct.arch_uprobe* %0, %struct.insn* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arch_uprobe*, align 8
  %6 = alloca %struct.insn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %5, align 8
  store %struct.insn* %1, %struct.insn** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.insn*, %struct.insn** %6, align 8
  %10 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %11 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @insn_init(%struct.insn* %9, i32 %12, i32 4, i32 %13)
  %15 = load %struct.insn*, %struct.insn** %6, align 8
  %16 = call i32 @insn_get_length(%struct.insn* %15)
  %17 = load %struct.insn*, %struct.insn** %6, align 8
  %18 = call i32 @insn_complete(%struct.insn* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOEXEC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %70

23:                                               ; preds = %3
  %24 = load %struct.insn*, %struct.insn** %6, align 8
  %25 = call i64 @is_prefix_bad(%struct.insn* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %70

30:                                               ; preds = %23
  %31 = load %struct.insn*, %struct.insn** %6, align 8
  %32 = call i64 @insn_masking_exception(%struct.insn* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %70

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32*, i32** @good_insns_64, align 8
  store i32* %41, i32** %8, align 8
  br label %44

42:                                               ; preds = %37
  %43 = load i32*, i32** @good_insns_32, align 8
  store i32* %43, i32** %8, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = load %struct.insn*, %struct.insn** %6, align 8
  %46 = call i32 @OPCODE1(%struct.insn* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = bitcast i32* %47 to i64*
  %49 = call i64 @test_bit(i32 %46, i64* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %70

52:                                               ; preds = %44
  %53 = load %struct.insn*, %struct.insn** %6, align 8
  %54 = getelementptr inbounds %struct.insn, %struct.insn* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.insn*, %struct.insn** %6, align 8
  %60 = call i32 @OPCODE2(%struct.insn* %59)
  %61 = load i64, i64* @good_2byte_insns, align 8
  %62 = inttoptr i64 %61 to i64*
  %63 = call i64 @test_bit(i32 %60, i64* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %70

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %52
  %68 = load i32, i32* @ENOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %65, %51, %34, %27, %20
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @insn_init(%struct.insn*, i32, i32, i32) #1

declare dso_local i32 @insn_get_length(%struct.insn*) #1

declare dso_local i32 @insn_complete(%struct.insn*) #1

declare dso_local i64 @is_prefix_bad(%struct.insn*) #1

declare dso_local i64 @insn_masking_exception(%struct.insn*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @OPCODE1(%struct.insn*) #1

declare dso_local i32 @OPCODE2(%struct.insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
