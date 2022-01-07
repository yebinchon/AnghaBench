; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_update_ptbl_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_update_ptbl_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_nested_guest = type { i32, i8*, i8*, %struct.kvm* }
%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.patb_entry = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@PRTB_MASK = common dso_local global i32 0, align 4
@PRTS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_nested_guest*)* @kvmhv_update_ptbl_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmhv_update_ptbl_cache(%struct.kvm_nested_guest* %0) #0 {
  %2 = alloca %struct.kvm_nested_guest*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.patb_entry, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm*, align 8
  store %struct.kvm_nested_guest* %0, %struct.kvm_nested_guest** %2, align 8
  %7 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %7, i32 0, i32 3
  %9 = load %struct.kvm*, %struct.kvm** %8, align 8
  store %struct.kvm* %9, %struct.kvm** %6, align 8
  %10 = load i32, i32* @EFAULT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.kvm*, %struct.kvm** %6, align 8
  %13 = getelementptr inbounds %struct.kvm, %struct.kvm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PRTB_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %19 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 4
  %22 = add nsw i32 %17, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %5, align 8
  %24 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %25 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load %struct.kvm*, %struct.kvm** %6, align 8
  %29 = getelementptr inbounds %struct.kvm, %struct.kvm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PRTS_MASK, align 4
  %33 = and i32 %31, %32
  %34 = add nsw i32 %33, 8
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  %37 = icmp ult i64 %27, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load %struct.kvm*, %struct.kvm** %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @kvm_read_guest(%struct.kvm* %39, i64 %40, %struct.patb_entry* %4, i32 8)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %1
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %47 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %46, i32 0, i32 2
  store i8* null, i8** %47, align 8
  %48 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %49 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %48, i32 0, i32 1
  store i8* null, i8** %49, align 8
  br label %61

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.patb_entry, %struct.patb_entry* %4, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @be64_to_cpu(i32 %52)
  %54 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %55 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = getelementptr inbounds %struct.patb_entry, %struct.patb_entry* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @be64_to_cpu(i32 %57)
  %59 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %60 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %50, %45
  %62 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %63 = call i32 @kvmhv_set_nested_ptbl(%struct.kvm_nested_guest* %62)
  ret void
}

declare dso_local i32 @kvm_read_guest(%struct.kvm*, i64, %struct.patb_entry*, i32) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i32 @kvmhv_set_nested_ptbl(%struct.kvm_nested_guest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
