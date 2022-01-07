; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_fault.c_get_fault_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_fault.c_get_fault_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pt_regs = type { i32 }

@CONFIG_PGSTE = common dso_local global i32 0, align 4
@PIF_GUEST_FAULT = common dso_local global i32 0, align 4
@GMAP_FAULT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@USER_DS = common dso_local global i32 0, align 4
@USER_FAULT = common dso_local global i32 0, align 4
@KERNEL_FAULT = common dso_local global i32 0, align 4
@USER_DS_SACF = common dso_local global i32 0, align 4
@VDSO_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @get_fault_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fault_type(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %6 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 3
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load i32, i32* @CONFIG_PGSTE, align 4
  %17 = call i64 @IS_ENABLED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %21 = load i32, i32* @PIF_GUEST_FAULT, align 4
  %22 = call i64 @test_pt_regs_flag(%struct.pt_regs* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @GMAP_FAULT, align 4
  store i32 %25, i32* %2, align 4
  br label %67

26:                                               ; preds = %19, %15
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @USER_DS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @USER_FAULT, align 4
  store i32 %34, i32* %2, align 4
  br label %67

35:                                               ; preds = %26
  %36 = load i32, i32* @KERNEL_FAULT, align 4
  store i32 %36, i32* %2, align 4
  br label %67

37:                                               ; preds = %1
  %38 = load i64, i64* %4, align 8
  %39 = icmp eq i64 %38, 2
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @USER_DS_SACF, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @USER_FAULT, align 4
  store i32 %55, i32* %2, align 4
  br label %67

56:                                               ; preds = %47
  %57 = load i32, i32* @KERNEL_FAULT, align 4
  store i32 %57, i32* %2, align 4
  br label %67

58:                                               ; preds = %40
  %59 = load i32, i32* @VDSO_FAULT, align 4
  store i32 %59, i32* %2, align 4
  br label %67

60:                                               ; preds = %37
  %61 = load i64, i64* %4, align 8
  %62 = icmp eq i64 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @USER_FAULT, align 4
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @KERNEL_FAULT, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %63, %58, %56, %54, %35, %33, %24
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @test_pt_regs_flag(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
