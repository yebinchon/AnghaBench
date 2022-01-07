; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_remove_nested.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_remove_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_nested_guest = type { i32, i64, %struct.kvm* }
%struct.kvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.kvm_nested_guest** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_nested_guest*)* @kvmhv_remove_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmhv_remove_nested(%struct.kvm_nested_guest* %0) #0 {
  %2 = alloca %struct.kvm_nested_guest*, align 8
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.kvm_nested_guest* %0, %struct.kvm_nested_guest** %2, align 8
  %6 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %6, i32 0, i32 2
  %8 = load %struct.kvm*, %struct.kvm** %7, align 8
  store %struct.kvm* %8, %struct.kvm** %3, align 8
  %9 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.kvm*, %struct.kvm** %3, align 8
  %13 = getelementptr inbounds %struct.kvm, %struct.kvm* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %16 = load %struct.kvm*, %struct.kvm** %3, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.kvm_nested_guest**, %struct.kvm_nested_guest*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %19, i64 %21
  %23 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %22, align 8
  %24 = icmp eq %struct.kvm_nested_guest* %15, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %1
  %26 = load %struct.kvm*, %struct.kvm** %3, align 8
  %27 = getelementptr inbounds %struct.kvm, %struct.kvm* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.kvm_nested_guest**, %struct.kvm_nested_guest*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %29, i64 %31
  store %struct.kvm_nested_guest* null, %struct.kvm_nested_guest** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.kvm*, %struct.kvm** %3, align 8
  %35 = getelementptr inbounds %struct.kvm, %struct.kvm* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %4, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load %struct.kvm*, %struct.kvm** %3, align 8
  %46 = getelementptr inbounds %struct.kvm, %struct.kvm* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load %struct.kvm_nested_guest**, %struct.kvm_nested_guest*** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %48, i64 %50
  %52 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %51, align 8
  %53 = icmp ne %struct.kvm_nested_guest* %52, null
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %44, %40
  %56 = phi i1 [ false, %40 ], [ %54, %44 ]
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  br label %40

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.kvm*, %struct.kvm** %3, align 8
  %61 = getelementptr inbounds %struct.kvm, %struct.kvm* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  br label %63

63:                                               ; preds = %58, %25
  %64 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %65 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %63, %1
  %69 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %70 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %5, align 8
  %72 = load %struct.kvm*, %struct.kvm** %3, align 8
  %73 = getelementptr inbounds %struct.kvm, %struct.kvm* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load i64, i64* %5, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %79 = call i32 @kvmhv_release_nested(%struct.kvm_nested_guest* %78)
  br label %80

80:                                               ; preds = %77, %68
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvmhv_release_nested(%struct.kvm_nested_guest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
