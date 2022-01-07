; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/lib/extr_uaccess.c_enable_sacf_uaccess.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/lib/extr_uaccess.c_enable_sacf_uaccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@S390_lowcore = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@USER_DS = common dso_local global i32 0, align 4
@CIF_ASCE_PRIMARY = common dso_local global i32 0, align 4
@CIF_ASCE_SECONDARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enable_sacf_uaccess() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %1, align 4
  br label %53

14:                                               ; preds = %0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @S390_lowcore, i32 0, i32 0), align 8
  store i64 %20, i64* %3, align 8
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @USER_DS, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %14
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @__ctl_store(i64 %28, i32 1, i32 1)
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @S390_lowcore, i32 0, i32 0), align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @S390_lowcore, i32 0, i32 0), align 8
  %35 = call i32 @__ctl_load(i64 %34, i32 1, i32 1)
  %36 = load i32, i32* @CIF_ASCE_PRIMARY, align 4
  %37 = call i32 @set_cpu_flag(i32 %36)
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @S390_lowcore, i32 0, i32 1), align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %38, %14
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @__ctl_store(i64 %41, i32 7, i32 7)
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %3, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @__ctl_load(i64 %47, i32 7, i32 7)
  %49 = load i32, i32* @CIF_ASCE_SECONDARY, align 4
  %50 = call i32 @set_cpu_flag(i32 %49)
  br label %51

51:                                               ; preds = %46, %40
  %52 = load i32, i32* %2, align 4
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %51, %12
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__ctl_store(i64, i32, i32) #1

declare dso_local i32 @__ctl_load(i64, i32, i32) #1

declare dso_local i32 @set_cpu_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
