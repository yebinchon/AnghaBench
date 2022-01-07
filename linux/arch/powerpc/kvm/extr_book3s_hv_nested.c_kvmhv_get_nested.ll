; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_get_nested.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_get_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_nested_guest = type { i32 }
%struct.kvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.kvm_nested_guest** }

@KVM_MAX_NESTED_GUESTS = common dso_local global i32 0, align 4
@PRTS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_nested_guest* @kvmhv_get_nested(%struct.kvm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_nested_guest*, align 8
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_nested_guest*, align 8
  %9 = alloca %struct.kvm_nested_guest*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @KVM_MAX_NESTED_GUESTS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %27, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.kvm*, %struct.kvm** %5, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PRTS_MASK, align 4
  %21 = and i32 %19, %20
  %22 = add nsw i32 %21, 12
  %23 = sub nsw i32 %22, 4
  %24 = zext i32 %23 to i64
  %25 = shl i64 1, %24
  %26 = icmp uge i64 %15, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %13, %3
  store %struct.kvm_nested_guest* null, %struct.kvm_nested_guest** %4, align 8
  br label %128

28:                                               ; preds = %13
  %29 = load %struct.kvm*, %struct.kvm** %5, align 8
  %30 = getelementptr inbounds %struct.kvm, %struct.kvm* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.kvm*, %struct.kvm** %5, align 8
  %33 = getelementptr inbounds %struct.kvm, %struct.kvm* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load %struct.kvm_nested_guest**, %struct.kvm_nested_guest*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %35, i64 %37
  %39 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %38, align 8
  store %struct.kvm_nested_guest* %39, %struct.kvm_nested_guest** %8, align 8
  %40 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %8, align 8
  %41 = icmp ne %struct.kvm_nested_guest* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %8, align 8
  %44 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %28
  %48 = load %struct.kvm*, %struct.kvm** %5, align 8
  %49 = getelementptr inbounds %struct.kvm, %struct.kvm* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %8, align 8
  %52 = icmp ne %struct.kvm_nested_guest* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %8, align 8
  store %struct.kvm_nested_guest* %57, %struct.kvm_nested_guest** %4, align 8
  br label %128

58:                                               ; preds = %53
  %59 = load %struct.kvm*, %struct.kvm** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call %struct.kvm_nested_guest* @kvmhv_alloc_nested(%struct.kvm* %59, i32 %60)
  store %struct.kvm_nested_guest* %61, %struct.kvm_nested_guest** %9, align 8
  %62 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %9, align 8
  %63 = icmp ne %struct.kvm_nested_guest* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  store %struct.kvm_nested_guest* null, %struct.kvm_nested_guest** %4, align 8
  br label %128

65:                                               ; preds = %58
  %66 = load %struct.kvm*, %struct.kvm** %5, align 8
  %67 = getelementptr inbounds %struct.kvm, %struct.kvm* %66, i32 0, i32 0
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.kvm*, %struct.kvm** %5, align 8
  %70 = getelementptr inbounds %struct.kvm, %struct.kvm* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load %struct.kvm_nested_guest**, %struct.kvm_nested_guest*** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %72, i64 %74
  %76 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %75, align 8
  %77 = icmp ne %struct.kvm_nested_guest* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %65
  %79 = load %struct.kvm*, %struct.kvm** %5, align 8
  %80 = getelementptr inbounds %struct.kvm, %struct.kvm* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load %struct.kvm_nested_guest**, %struct.kvm_nested_guest*** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %82, i64 %84
  %86 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %85, align 8
  store %struct.kvm_nested_guest* %86, %struct.kvm_nested_guest** %8, align 8
  br label %113

87:                                               ; preds = %65
  %88 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %9, align 8
  %89 = load %struct.kvm*, %struct.kvm** %5, align 8
  %90 = getelementptr inbounds %struct.kvm, %struct.kvm* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load %struct.kvm_nested_guest**, %struct.kvm_nested_guest*** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %92, i64 %94
  store %struct.kvm_nested_guest* %88, %struct.kvm_nested_guest** %95, align 8
  %96 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %9, align 8
  %97 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %9, align 8
  store %struct.kvm_nested_guest* %100, %struct.kvm_nested_guest** %8, align 8
  store %struct.kvm_nested_guest* null, %struct.kvm_nested_guest** %9, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.kvm*, %struct.kvm** %5, align 8
  %103 = getelementptr inbounds %struct.kvm, %struct.kvm* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %101, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %87
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.kvm*, %struct.kvm** %5, align 8
  %110 = getelementptr inbounds %struct.kvm, %struct.kvm* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %107, %87
  br label %113

113:                                              ; preds = %112, %78
  %114 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %8, align 8
  %115 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load %struct.kvm*, %struct.kvm** %5, align 8
  %119 = getelementptr inbounds %struct.kvm, %struct.kvm* %118, i32 0, i32 0
  %120 = call i32 @spin_unlock(i32* %119)
  %121 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %9, align 8
  %122 = icmp ne %struct.kvm_nested_guest* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %113
  %124 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %9, align 8
  %125 = call i32 @kvmhv_release_nested(%struct.kvm_nested_guest* %124)
  br label %126

126:                                              ; preds = %123, %113
  %127 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %8, align 8
  store %struct.kvm_nested_guest* %127, %struct.kvm_nested_guest** %4, align 8
  br label %128

128:                                              ; preds = %126, %64, %56, %27
  %129 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %4, align 8
  ret %struct.kvm_nested_guest* %129
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.kvm_nested_guest* @kvmhv_alloc_nested(%struct.kvm*, i32) #1

declare dso_local i32 @kvmhv_release_nested(%struct.kvm_nested_guest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
