; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_signal.c_do_signal.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_signal.c_do_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32*, i32 }
%struct.ksignal = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @do_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_signal(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.ksignal, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = call i64 @get_signal(%struct.ksignal* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = call i32 @handle_signal(%struct.ksignal* %3, %struct.pt_regs* %7)
  br label %76

9:                                                ; preds = %1
  %10 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %74

16:                                               ; preds = %9
  %17 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %69 [
    i32 131, label %22
    i32 129, label %22
    i32 130, label %22
    i32 128, label %45
  ]

22:                                               ; preds = %16, %16, %16
  %23 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %27, i32* %31, align 4
  %32 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 26
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 7
  store i32 %36, i32* %40, align 4
  %41 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 4
  store i32 %44, i32* %42, align 8
  br label %69

45:                                               ; preds = %16
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %51, i32* %55, align 4
  %56 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 26
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 7
  store i32 %60, i32* %64, align 4
  %65 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %66 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 4
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %16, %45, %22
  %70 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %71 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %9
  %75 = call i32 (...) @restore_saved_sigmask()
  br label %76

76:                                               ; preds = %74, %6
  ret void
}

declare dso_local i64 @get_signal(%struct.ksignal*) #1

declare dso_local i32 @handle_signal(%struct.ksignal*, %struct.pt_regs*) #1

declare dso_local i32 @restore_saved_sigmask(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
