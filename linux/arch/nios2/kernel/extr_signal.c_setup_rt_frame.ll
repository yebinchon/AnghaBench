; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_signal.c_setup_rt_frame.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_signal.c_setup_rt_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksignal = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64 }
%struct.rt_sigframe = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@SA_SIGINFO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksignal*, i32*, %struct.pt_regs*)* @setup_rt_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_rt_frame(%struct.ksignal* %0, i32* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksignal*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca %struct.rt_sigframe*, align 8
  %9 = alloca i32, align 4
  store %struct.ksignal* %0, %struct.ksignal** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ksignal*, %struct.ksignal** %5, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %12 = call %struct.rt_sigframe* @get_sigframe(%struct.ksignal* %10, %struct.pt_regs* %11, i32 20)
  store %struct.rt_sigframe* %12, %struct.rt_sigframe** %8, align 8
  %13 = load %struct.ksignal*, %struct.ksignal** %5, align 8
  %14 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SA_SIGINFO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %23 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %22, i32 0, i32 1
  %24 = load %struct.ksignal*, %struct.ksignal** %5, align 8
  %25 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %24, i32 0, i32 2
  %26 = call i32 @copy_siginfo_to_user(i32* %23, i32* %25)
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %21, %3
  %30 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %31 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = call i32 @__put_user(i32 0, i32* %32)
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %37 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = call i32 @__put_user(i32 0, i32* %38)
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %43 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @__save_altstack(i32* %44, i64 %47)
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %52 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %51, i32 0, i32 0
  %53 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %54 = call i32 @rt_setup_ucontext(%struct.TYPE_6__* %52, %struct.pt_regs* %53)
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %58 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @copy_to_user(i32* %59, i32* %60, i32 4)
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %29
  br label %96

67:                                               ; preds = %29
  %68 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 1
  store i64 4164, i64* %69, align 8
  %70 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %71 = ptrtoint %struct.rt_sigframe* %70 to i64
  %72 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.ksignal*, %struct.ksignal** %5, align 8
  %75 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %80 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %79, i32 0, i32 1
  %81 = ptrtoint i32* %80 to i64
  %82 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %83 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %85 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %84, i32 0, i32 0
  %86 = ptrtoint %struct.TYPE_6__* %85 to i64
  %87 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 4
  store i64 %86, i64* %88, align 8
  %89 = load %struct.ksignal*, %struct.ksignal** %5, align 8
  %90 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %95 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %94, i32 0, i32 5
  store i64 %93, i64* %95, align 8
  store i32 0, i32* %4, align 4
  br label %103

96:                                               ; preds = %66
  %97 = load %struct.ksignal*, %struct.ksignal** %5, align 8
  %98 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @force_sigsegv(i64 %99)
  %101 = load i32, i32* @EFAULT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %96, %67
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.rt_sigframe* @get_sigframe(%struct.ksignal*, %struct.pt_regs*, i32) #1

declare dso_local i32 @copy_siginfo_to_user(i32*, i32*) #1

declare dso_local i32 @__put_user(i32, i32*) #1

declare dso_local i32 @__save_altstack(i32*, i64) #1

declare dso_local i32 @rt_setup_ucontext(%struct.TYPE_6__*, %struct.pt_regs*) #1

declare dso_local i32 @copy_to_user(i32*, i32*, i32) #1

declare dso_local i32 @force_sigsegv(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
