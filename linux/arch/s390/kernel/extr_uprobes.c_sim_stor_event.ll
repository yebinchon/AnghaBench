; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_uprobes.c_sim_stor_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_uprobes.c_sim_stor_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_9__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.pt_regs = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@PSW_MASK_PER = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@PER_EVENT_STORE = common dso_local global i32 0, align 4
@PIF_PER_TRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i8*, i32)* @sim_stor_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sim_stor_event(%struct.pt_regs* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PSW_MASK_PER, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %66

15:                                               ; preds = %3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PER_EVENT_STORE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %66

25:                                               ; preds = %15
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  %36 = icmp ugt i8* %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %66

38:                                               ; preds = %25
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %66

48:                                               ; preds = %38
  %49 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %50 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* @PER_EVENT_STORE, align 4
  %58 = ashr i32 %57, 16
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 8
  %63 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %64 = load i32, i32* @PIF_PER_TRAP, align 4
  %65 = call i32 @set_pt_regs_flag(%struct.pt_regs* %63, i32 %64)
  br label %66

66:                                               ; preds = %48, %47, %37, %24, %14
  ret void
}

declare dso_local i32 @set_pt_regs_flag(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
