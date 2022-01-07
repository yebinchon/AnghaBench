; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_next_dirty_cmma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_next_dirty_cmma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memslots = type { i32, %struct.kvm_memory_slot* }
%struct.kvm_memory_slot = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_memslots*, i64)* @kvm_s390_next_dirty_cmma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvm_s390_next_dirty_cmma(%struct.kvm_memslots* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_memslots*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_memory_slot*, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_memslots* %0, %struct.kvm_memslots** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.kvm_memslots*, %struct.kvm_memslots** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @gfn_to_memslot_approx(%struct.kvm_memslots* %8, i64 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.kvm_memslots*, %struct.kvm_memslots** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %11, i32 0, i32 1
  %13 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %13, i64 %15
  store %struct.kvm_memory_slot* %16, %struct.kvm_memory_slot** %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %19 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %17, %20
  store i64 %21, i64* %7, align 8
  %22 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %23 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %26 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %24, %27
  %29 = load i64, i64* %4, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.kvm_memslots*, %struct.kvm_memslots** %3, align 8
  %38 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.kvm_memslots*, %struct.kvm_memslots** %3, align 8
  %43 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %42, i32 0, i32 1
  %44 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %44, i64 %46
  store %struct.kvm_memory_slot* %47, %struct.kvm_memory_slot** %6, align 8
  store i64 0, i64* %7, align 8
  br label %48

48:                                               ; preds = %41, %2
  %49 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %50 = call i32 @kvm_second_dirty_bitmap(%struct.kvm_memory_slot* %49)
  %51 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %52 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @find_next_bit(i32 %50, i64 %53, i64 %54)
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %67, %48
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %62 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp uge i64 %60, %63
  br label %65

65:                                               ; preds = %59, %56
  %66 = phi i1 [ false, %56 ], [ %64, %59 ]
  br i1 %66, label %67, label %82

67:                                               ; preds = %65
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %5, align 4
  %70 = load %struct.kvm_memslots*, %struct.kvm_memslots** %3, align 8
  %71 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %70, i32 0, i32 1
  %72 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %72, i64 %74
  store %struct.kvm_memory_slot* %75, %struct.kvm_memory_slot** %6, align 8
  %76 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %77 = call i32 @kvm_second_dirty_bitmap(%struct.kvm_memory_slot* %76)
  %78 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %79 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @find_next_bit(i32 %77, i64 %80, i64 0)
  store i64 %81, i64* %7, align 8
  br label %56

82:                                               ; preds = %65
  %83 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %84 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %85, %86
  ret i64 %87
}

declare dso_local i32 @gfn_to_memslot_approx(%struct.kvm_memslots*, i64) #1

declare dso_local i64 @find_next_bit(i32, i64, i64) #1

declare dso_local i32 @kvm_second_dirty_bitmap(%struct.kvm_memory_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
