; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_mm_is_singlethreaded.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_mm_is_singlethreaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*)* @mm_is_singlethreaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mm_is_singlethreaded(%struct.mm_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %4 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %5 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = call i32 @atomic_read(i32* %6)
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = call i32 @atomic_read(i32* %12)
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  %19 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %20 = icmp eq %struct.mm_struct* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %23

22:                                               ; preds = %15, %10
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %21, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
