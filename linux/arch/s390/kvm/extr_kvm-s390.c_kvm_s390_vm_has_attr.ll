; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_vm_has_attr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_vm_has_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kvm = type { i32 }
%struct.kvm_device_attr = type { i32, i32 }

@sclp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_device_attr*)* @kvm_s390_vm_has_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_s390_vm_has_attr(%struct.kvm* %0, %struct.kvm_device_attr* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_device_attr*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %4, align 8
  %6 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %64 [
    i32 134, label %9
    i32 130, label %27
    i32 146, label %36
    i32 142, label %45
    i32 131, label %63
  ]

9:                                                ; preds = %2
  %10 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %23 [
    i32 133, label %13
    i32 135, label %13
    i32 132, label %22
  ]

13:                                               ; preds = %9, %9
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sclp, i32 0, i32 0), align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi i32 [ 0, %16 ], [ %19, %17 ]
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %26

23:                                               ; preds = %9
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %22, %20
  br label %67

27:                                               ; preds = %2
  %28 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %32 [
    i32 128, label %31
    i32 129, label %31
  ]

31:                                               ; preds = %27, %27
  store i32 0, i32* %5, align 4
  br label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %31
  br label %67

36:                                               ; preds = %2
  %37 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %41 [
    i32 145, label %40
    i32 149, label %40
    i32 144, label %40
    i32 148, label %40
    i32 147, label %40
    i32 143, label %40
  ]

40:                                               ; preds = %36, %36, %36, %36, %36, %36
  store i32 0, i32* %5, align 4
  br label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %40
  br label %67

45:                                               ; preds = %2
  %46 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %59 [
    i32 138, label %49
    i32 136, label %49
    i32 141, label %49
    i32 139, label %49
    i32 137, label %50
    i32 140, label %50
  ]

49:                                               ; preds = %45, %45, %45, %45
  store i32 0, i32* %5, align 4
  br label %62

50:                                               ; preds = %45, %45
  %51 = call i32 (...) @ap_instructions_available()
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %54, %53
  %58 = phi i32 [ 0, %53 ], [ %56, %54 ]
  store i32 %58, i32* %5, align 4
  br label %62

59:                                               ; preds = %45
  %60 = load i32, i32* @ENXIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %57, %49
  br label %67

63:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %67

64:                                               ; preds = %2
  %65 = load i32, i32* @ENXIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %63, %62, %44, %35, %26
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @ap_instructions_available(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
