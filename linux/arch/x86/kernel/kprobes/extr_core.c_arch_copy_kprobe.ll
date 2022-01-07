; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_arch_copy_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_arch_copy_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.insn = type { i32 }

@MAX_INSN_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kprobe*)* @arch_copy_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arch_copy_kprobe(%struct.kprobe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kprobe*, align 8
  %4 = alloca %struct.insn, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kprobe* %0, %struct.kprobe** %3, align 8
  %9 = load i32, i32* @MAX_INSN_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %14 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %17 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__copy_instruction(i32* %12, i32 %15, i32 %19, %struct.insn* %4)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %43

26:                                               ; preds = %1
  %27 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %28 = call i32 @prepare_boost(i32* %12, %struct.kprobe* %27, %struct.insn* %4)
  store i32 %28, i32* %7, align 4
  %29 = call i32 @is_IF_modifier(i32* %12)
  %30 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %31 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = getelementptr inbounds i32, i32* %12, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %36 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %38 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @text_poke(i32 %40, i32* %12, i32 %41)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %26, %23
  %44 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @__copy_instruction(i32*, i32, i32, %struct.insn*) #2

declare dso_local i32 @prepare_boost(i32*, %struct.kprobe*, %struct.insn*) #2

declare dso_local i32 @is_IF_modifier(i32*) #2

declare dso_local i32 @text_poke(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
