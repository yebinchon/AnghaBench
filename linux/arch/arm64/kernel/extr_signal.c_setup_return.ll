; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_signal.c_setup_return.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_signal.c_setup_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.pt_regs = type { i32*, i64, i64 }
%struct.k_sigaction = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.rt_sigframe_user_layout = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }

@SA_RESTORER = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.k_sigaction*, %struct.rt_sigframe_user_layout*, i32)* @setup_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_return(%struct.pt_regs* %0, %struct.k_sigaction* %1, %struct.rt_sigframe_user_layout* %2, i32 %3) #0 {
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.k_sigaction*, align 8
  %7 = alloca %struct.rt_sigframe_user_layout*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store %struct.k_sigaction* %1, %struct.k_sigaction** %6, align 8
  store %struct.rt_sigframe_user_layout* %2, %struct.rt_sigframe_user_layout** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %10, i32* %14, align 4
  %15 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %7, align 8
  %16 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %7, align 8
  %21 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = ptrtoint i32* %23 to i64
  %25 = trunc i64 %24 to i32
  %26 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 29
  store i32 %25, i32* %29, align 4
  %30 = load %struct.k_sigaction*, %struct.k_sigaction** %6, align 8
  %31 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.k_sigaction*, %struct.k_sigaction** %6, align 8
  %37 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SA_RESTORER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %4
  %44 = load %struct.k_sigaction*, %struct.k_sigaction** %6, align 8
  %45 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %9, align 8
  br label %57

48:                                               ; preds = %4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @VDSO_SYMBOL(i32 %54, i64 %55)
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %48, %43
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 30
  store i32 %59, i32* %63, align 4
  ret void
}

declare dso_local i64 @VDSO_SYMBOL(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
