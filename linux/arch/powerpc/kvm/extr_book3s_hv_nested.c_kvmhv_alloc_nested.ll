; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_alloc_nested.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_alloc_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_nested_guest = type { i32, i64, i32, i32, i32, i32, %struct.kvm* }
%struct.kvm = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_nested_guest* @kvmhv_alloc_nested(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_nested_guest*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_nested_guest*, align 8
  %7 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.kvm_nested_guest* @kzalloc(i32 40, i32 %8)
  store %struct.kvm_nested_guest* %9, %struct.kvm_nested_guest** %6, align 8
  %10 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %11 = icmp ne %struct.kvm_nested_guest* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.kvm_nested_guest* null, %struct.kvm_nested_guest** %3, align 8
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.kvm*, %struct.kvm** %4, align 8
  %15 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %16 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %15, i32 0, i32 6
  store %struct.kvm* %14, %struct.kvm** %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %19 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %21 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %20, i32 0, i32 5
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.kvm*, %struct.kvm** %4, align 8
  %24 = getelementptr inbounds %struct.kvm, %struct.kvm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pgd_alloc(i32 %25)
  %27 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %28 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %30 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %13
  br label %58

34:                                               ; preds = %13
  %35 = call i64 (...) @kvmppc_alloc_lpid()
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %50

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %42 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %44 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %43, i32 0, i32 2
  store i32 1, i32* %44, align 8
  %45 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %46 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memset(i32 %47, i32 -1, i32 4)
  %49 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  store %struct.kvm_nested_guest* %49, %struct.kvm_nested_guest** %3, align 8
  br label %61

50:                                               ; preds = %38
  %51 = load %struct.kvm*, %struct.kvm** %4, align 8
  %52 = getelementptr inbounds %struct.kvm, %struct.kvm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %55 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pgd_free(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %50, %33
  %59 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %60 = call i32 @kfree(%struct.kvm_nested_guest* %59)
  store %struct.kvm_nested_guest* null, %struct.kvm_nested_guest** %3, align 8
  br label %61

61:                                               ; preds = %58, %39, %12
  %62 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %3, align 8
  ret %struct.kvm_nested_guest* %62
}

declare dso_local %struct.kvm_nested_guest* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pgd_alloc(i32) #1

declare dso_local i64 @kvmppc_alloc_lpid(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @pgd_free(i32, i32) #1

declare dso_local i32 @kfree(%struct.kvm_nested_guest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
