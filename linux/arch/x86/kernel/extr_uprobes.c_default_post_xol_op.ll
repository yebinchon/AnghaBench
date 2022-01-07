; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_default_post_xol_op.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_default_post_xol_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.uprobe_task* }
%struct.uprobe_task = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.arch_uprobe = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.pt_regs = type { i64, i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@UPROBE_FIX_IP = common dso_local global i32 0, align 4
@UPROBE_FIX_CALL = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@UPROBE_FIX_SETF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arch_uprobe*, %struct.pt_regs*)* @default_post_xol_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_post_xol_op(%struct.arch_uprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arch_uprobe*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.uprobe_task*, align 8
  %7 = alloca i64, align 8
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.uprobe_task*, %struct.uprobe_task** %9, align 8
  store %struct.uprobe_task* %10, %struct.uprobe_task** %6, align 8
  %11 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %13 = call i32 @riprel_post_xol(%struct.arch_uprobe* %11, %struct.pt_regs* %12)
  %14 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %15 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @UPROBE_FIX_IP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load %struct.uprobe_task*, %struct.uprobe_task** %6, align 8
  %23 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.uprobe_task*, %struct.uprobe_task** %6, align 8
  %26 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  br label %67

34:                                               ; preds = %2
  %35 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %36 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @UPROBE_FIX_CALL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %34
  %43 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %44 = call i64 @sizeof_long(%struct.pt_regs* %43)
  %45 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 8
  %51 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %52 = load %struct.uprobe_task*, %struct.uprobe_task** %6, align 8
  %53 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %56 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %54, %58
  %60 = call i64 @emulate_push_stack(%struct.pt_regs* %51, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %42
  %63 = load i32, i32* @ERESTART, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %80

65:                                               ; preds = %42
  br label %66

66:                                               ; preds = %65, %34
  br label %67

67:                                               ; preds = %66, %21
  %68 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %69 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @UPROBE_FIX_SETF, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.uprobe_task*, %struct.uprobe_task** %6, align 8
  %77 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %67
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %62
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @riprel_post_xol(%struct.arch_uprobe*, %struct.pt_regs*) #1

declare dso_local i64 @sizeof_long(%struct.pt_regs*) #1

declare dso_local i64 @emulate_push_stack(%struct.pt_regs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
