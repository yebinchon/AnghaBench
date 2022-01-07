; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_early.c_detect_machine_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_early.c_detect_machine_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sysinfo_3_2_2 = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@sysinfo_page = common dso_local global i32 0, align 4
@MACHINE_FLAG_LPAR = common dso_local global i32 0, align 4
@S390_lowcore = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"\D2\E5\D4\00", align 1
@MACHINE_FLAG_KVM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"\A9a\E5\D4\00", align 1
@MACHINE_FLAG_VM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @detect_machine_type() #0 {
  %1 = alloca %struct.sysinfo_3_2_2*, align 8
  store %struct.sysinfo_3_2_2* bitcast (i32* @sysinfo_page to %struct.sysinfo_3_2_2*), %struct.sysinfo_3_2_2** %1, align 8
  %2 = call i32 @stsi(%struct.sysinfo_3_2_2* null, i32 0, i32 0, i32 0)
  %3 = icmp sle i32 %2, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @MACHINE_FLAG_LPAR, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 0), align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 0), align 4
  br label %45

8:                                                ; preds = %0
  %9 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %1, align 8
  %10 = call i32 @stsi(%struct.sysinfo_3_2_2* %9, i32 3, i32 2, i32 2)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %1, align 8
  %14 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %8
  br label %45

18:                                               ; preds = %12
  %19 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %1, align 8
  %20 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcmp(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @MACHINE_FLAG_KVM, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 0), align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 0), align 4
  br label %45

31:                                               ; preds = %18
  %32 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %1, align 8
  %33 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcmp(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @MACHINE_FLAG_VM, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 0), align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 0), align 4
  br label %44

44:                                               ; preds = %40, %31
  br label %45

45:                                               ; preds = %4, %17, %44, %27
  ret void
}

declare dso_local i32 @stsi(%struct.sysinfo_3_2_2*, i32, i32, i32) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
