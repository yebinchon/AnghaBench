; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_armv8_deprecated.c_register_emulation_hooks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_armv8_deprecated.c_register_emulation_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_emulation_ops = type { i32, %struct.undef_hook* }
%struct.undef_hook = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"Registered %s emulation handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.insn_emulation_ops*)* @register_emulation_hooks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_emulation_hooks(%struct.insn_emulation_ops* %0) #0 {
  %2 = alloca %struct.insn_emulation_ops*, align 8
  %3 = alloca %struct.undef_hook*, align 8
  store %struct.insn_emulation_ops* %0, %struct.insn_emulation_ops** %2, align 8
  %4 = load %struct.insn_emulation_ops*, %struct.insn_emulation_ops** %2, align 8
  %5 = getelementptr inbounds %struct.insn_emulation_ops, %struct.insn_emulation_ops* %4, i32 0, i32 1
  %6 = load %struct.undef_hook*, %struct.undef_hook** %5, align 8
  %7 = icmp ne %struct.undef_hook* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.insn_emulation_ops*, %struct.insn_emulation_ops** %2, align 8
  %12 = getelementptr inbounds %struct.insn_emulation_ops, %struct.insn_emulation_ops* %11, i32 0, i32 1
  %13 = load %struct.undef_hook*, %struct.undef_hook** %12, align 8
  store %struct.undef_hook* %13, %struct.undef_hook** %3, align 8
  br label %14

14:                                               ; preds = %22, %1
  %15 = load %struct.undef_hook*, %struct.undef_hook** %3, align 8
  %16 = getelementptr inbounds %struct.undef_hook, %struct.undef_hook* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.undef_hook*, %struct.undef_hook** %3, align 8
  %21 = call i32 @register_undef_hook(%struct.undef_hook* %20)
  br label %22

22:                                               ; preds = %19
  %23 = load %struct.undef_hook*, %struct.undef_hook** %3, align 8
  %24 = getelementptr inbounds %struct.undef_hook, %struct.undef_hook* %23, i32 1
  store %struct.undef_hook* %24, %struct.undef_hook** %3, align 8
  br label %14

25:                                               ; preds = %14
  %26 = load %struct.insn_emulation_ops*, %struct.insn_emulation_ops** %2, align 8
  %27 = getelementptr inbounds %struct.insn_emulation_ops, %struct.insn_emulation_ops* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pr_notice(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @register_undef_hook(%struct.undef_hook*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
