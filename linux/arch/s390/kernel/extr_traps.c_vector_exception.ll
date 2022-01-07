; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_traps.c_vector_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_traps.c_vector_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32 }

@MACHINE_HAS_VX = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@ILL_ILLOPN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"illegal operation\00", align 1
@current = common dso_local global %struct.TYPE_6__* null, align 8
@FPE_FLTINV = common dso_local global i32 0, align 4
@FPE_FLTDIV = common dso_local global i32 0, align 4
@FPE_FLTOVF = common dso_local global i32 0, align 4
@FPE_FLTUND = common dso_local global i32 0, align 4
@FPE_FLTRES = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"vector exception\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_exception(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %5 = load i32, i32* @MACHINE_HAS_VX, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %9 = load i32, i32* @SIGILL, align 4
  %10 = load i32, i32* @ILL_ILLOPN, align 4
  %11 = call i32 @do_trap(%struct.pt_regs* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %38

12:                                               ; preds = %1
  %13 = call i32 (...) @save_fpu_regs()
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 3840
  %20 = ashr i32 %19, 8
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %32 [
    i32 1, label %22
    i32 2, label %24
    i32 3, label %26
    i32 4, label %28
    i32 5, label %30
  ]

22:                                               ; preds = %12
  %23 = load i32, i32* @FPE_FLTINV, align 4
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %12
  %25 = load i32, i32* @FPE_FLTDIV, align 4
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %12
  %27 = load i32, i32* @FPE_FLTOVF, align 4
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %12
  %29 = load i32, i32* @FPE_FLTUND, align 4
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %12
  %31 = load i32, i32* @FPE_FLTRES, align 4
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %30, %28, %26, %24, %22
  %34 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %35 = load i32, i32* @SIGFPE, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @do_trap(%struct.pt_regs* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %7
  ret void
}

declare dso_local i32 @do_trap(%struct.pt_regs*, i32, i32, i8*) #1

declare dso_local i32 @save_fpu_regs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
