; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_access_guest_real.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_access_guest_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @access_guest_real(%struct.kvm_vcpu* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %49, %5
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %59

23:                                               ; preds = %21
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @kvm_s390_real_to_abs(%struct.kvm_vcpu* %24, i64 %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @PAGE_MASK, align 8
  %30 = xor i64 %29, -1
  %31 = and i64 %28, %30
  %32 = sub i64 %27, %31
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @min(i64 %32, i64 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %23
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @write_guest_abs(%struct.kvm_vcpu* %38, i64 %39, i8* %40, i64 %41)
  store i32 %42, i32* %13, align 4
  br label %49

43:                                               ; preds = %23
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @read_guest_abs(%struct.kvm_vcpu* %44, i64 %45, i8* %46, i64 %47)
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %43, %37
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr i8, i8* %57, i64 %56
  store i8* %58, i8** %8, align 8
  br label %14

59:                                               ; preds = %21
  %60 = load i32, i32* %13, align 4
  ret i32 %60
}

declare dso_local i64 @kvm_s390_real_to_abs(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @write_guest_abs(%struct.kvm_vcpu*, i64, i8*, i64) #1

declare dso_local i32 @read_guest_abs(%struct.kvm_vcpu*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
