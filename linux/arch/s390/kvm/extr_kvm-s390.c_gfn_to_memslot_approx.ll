; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_gfn_to_memslot_approx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_gfn_to_memslot_approx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memslots = type { i32, i32, %struct.kvm_memory_slot* }
%struct.kvm_memory_slot = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_memslots*, i64)* @gfn_to_memslot_approx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfn_to_memslot_approx(%struct.kvm_memslots* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_memslots*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_memory_slot*, align 8
  store %struct.kvm_memslots* %0, %struct.kvm_memslots** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %13, i32 0, i32 1
  %15 = call i32 @atomic_read(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %16, i32 0, i32 2
  %18 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %17, align 8
  store %struct.kvm_memory_slot* %18, %struct.kvm_memory_slot** %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %20, i64 %22
  %24 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %19, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %29, i64 %31
  %33 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %35, i64 %37
  %39 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %34, %40
  %42 = icmp slt i64 %28, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %103

45:                                               ; preds = %27, %2
  br label %46

46:                                               ; preds = %70, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sdiv i32 %54, 2
  %56 = add nsw i32 %51, %55
  store i32 %56, i32* %8, align 4
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %58, i64 %60
  %62 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %57, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %7, align 4
  br label %70

67:                                               ; preds = %50
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %65
  br label %46

71:                                               ; preds = %46
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %73, i64 %75
  %77 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %72, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %71
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %82, i64 %84
  %86 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %88, i64 %90
  %92 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %87, %93
  %95 = icmp slt i64 %81, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %80
  %97 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %98 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %97, i32 0, i32 1
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @atomic_set(i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %80, %71
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %43
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
