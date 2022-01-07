; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_uprobes.c_check_per_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_uprobes.c_check_per_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.pt_regs = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }

@PSW_MASK_PER = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, i64, %struct.pt_regs*)* @check_per_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_per_event(i16 zeroext %0, i64 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca %struct.pt_regs*, align 8
  store i16 %0, i16* %5, align 2
  store i64 %1, i64* %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @PSW_MASK_PER, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %69

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = and i64 %21, 538968064
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i16, i16* %5, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 8192
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %69

30:                                               ; preds = %24, %20
  %31 = load i16, i16* %5, align 2
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 32768
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %30
  %36 = load i64, i64* %6, align 8
  %37 = and i64 %36, 2155872256
  %38 = icmp eq i64 %37, 2147483648
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %69

40:                                               ; preds = %35
  %41 = load i64, i64* %6, align 8
  %42 = and i64 %41, 2155872256
  %43 = icmp eq i64 %42, 2155872256
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %48, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %44
  %56 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sle i64 %59, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  br label %69

67:                                               ; preds = %55, %44, %40
  br label %68

68:                                               ; preds = %67, %30
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %66, %39, %29, %19, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
