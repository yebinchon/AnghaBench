; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_nospec-sysfs.c_cpu_show_spectre_v2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_nospec-sysfs.c_cpu_show_spectre_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Mitigation: etokens\0A\00", align 1
@CC_USING_EXPOLINE = common dso_local global i32 0, align 4
@nospec_disable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Mitigation: execute trampolines\0A\00", align 1
@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Mitigation: limited branch prediction\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Vulnerable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_show_spectre_v2(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = call i64 @test_facility(i32 156)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %4, align 4
  br label %33

13:                                               ; preds = %3
  %14 = load i32, i32* @CC_USING_EXPOLINE, align 4
  %15 = call i64 @__is_defined(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* @nospec_disable, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %4, align 4
  br label %33

23:                                               ; preds = %17, %13
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 4
  %25 = call i64 @__test_facility(i32 82, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %23
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %27, %20, %10
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @test_facility(i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i64 @__is_defined(i32) #1

declare dso_local i64 @__test_facility(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
