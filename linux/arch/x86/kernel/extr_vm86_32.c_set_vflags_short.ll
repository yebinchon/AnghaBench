; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_vm86_32.c_set_vflags_short.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_vm86_32.c_set_vflags_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.kernel_vm86_regs = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@VFLAGS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@SAFE_MASK = common dso_local global i32 0, align 4
@X86_EFLAGS_IF = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, %struct.kernel_vm86_regs*)* @set_vflags_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_vflags_short(i16 zeroext %0, %struct.kernel_vm86_regs* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.kernel_vm86_regs*, align 8
  store i16 %0, i16* %3, align 2
  store %struct.kernel_vm86_regs* %1, %struct.kernel_vm86_regs** %4, align 8
  %5 = load i32, i32* @VFLAGS, align 4
  %6 = load i16, i16* %3, align 2
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @set_flags(i32 %5, i16 zeroext %6, i32 %12)
  %14 = load %struct.kernel_vm86_regs*, %struct.kernel_vm86_regs** %4, align 8
  %15 = getelementptr inbounds %struct.kernel_vm86_regs, %struct.kernel_vm86_regs* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i16, i16* %3, align 2
  %19 = load i32, i32* @SAFE_MASK, align 4
  %20 = call i32 @set_flags(i32 %17, i16 zeroext %18, i32 %19)
  %21 = load i16, i16* %3, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @X86_EFLAGS_IF, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.kernel_vm86_regs*, %struct.kernel_vm86_regs** %4, align 8
  %29 = call i32 @set_IF(%struct.kernel_vm86_regs* %28)
  br label %33

30:                                               ; preds = %2
  %31 = load %struct.kernel_vm86_regs*, %struct.kernel_vm86_regs** %4, align 8
  %32 = call i32 @clear_IF(%struct.kernel_vm86_regs* %31)
  br label %33

33:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @set_flags(i32, i16 zeroext, i32) #1

declare dso_local i32 @set_IF(%struct.kernel_vm86_regs*) #1

declare dso_local i32 @clear_IF(%struct.kernel_vm86_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
