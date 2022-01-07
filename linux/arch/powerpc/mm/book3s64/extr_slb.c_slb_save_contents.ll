; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_slb_save_contents.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_slb_save_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slb_entry = type { i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@mmu_slb_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slb_save_contents(%struct.slb_entry* %0) #0 {
  %2 = alloca %struct.slb_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.slb_entry* %0, %struct.slb_entry** %2, align 8
  %6 = call %struct.TYPE_2__* (...) @get_paca()
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_2__* (...) @get_paca()
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.slb_entry*, %struct.slb_entry** %2, align 8
  %12 = icmp ne %struct.slb_entry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %35

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %32, %14
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @mmu_slb_size, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = call i64 asm sideeffect "slbmfee  $0,$1", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %20) #2, !srcloc !2
  store i64 %21, i64* %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i64 asm sideeffect "slbmfev  $0,$1", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %22) #2, !srcloc !3
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.slb_entry*, %struct.slb_entry** %2, align 8
  %26 = getelementptr inbounds %struct.slb_entry, %struct.slb_entry* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.slb_entry*, %struct.slb_entry** %2, align 8
  %29 = getelementptr inbounds %struct.slb_entry, %struct.slb_entry* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.slb_entry*, %struct.slb_entry** %2, align 8
  %31 = getelementptr inbounds %struct.slb_entry, %struct.slb_entry* %30, i32 1
  store %struct.slb_entry* %31, %struct.slb_entry** %2, align 8
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %15

35:                                               ; preds = %13, %15
  ret void
}

declare dso_local %struct.TYPE_2__* @get_paca(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 572}
!3 = !{i32 627}
