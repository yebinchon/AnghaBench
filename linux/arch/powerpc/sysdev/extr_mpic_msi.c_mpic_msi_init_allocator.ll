; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_msi.c_mpic_msi_init_allocator.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_msi.c_mpic_msi_init_allocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpic = type { i32, i32, i32, i32 }

@MPIC_U3_HT_IRQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpic_msi_init_allocator(%struct.mpic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpic*, align 8
  %4 = alloca i32, align 4
  store %struct.mpic* %0, %struct.mpic** %3, align 8
  %5 = load %struct.mpic*, %struct.mpic** %3, align 8
  %6 = getelementptr inbounds %struct.mpic, %struct.mpic* %5, i32 0, i32 1
  %7 = load %struct.mpic*, %struct.mpic** %3, align 8
  %8 = getelementptr inbounds %struct.mpic, %struct.mpic* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mpic*, %struct.mpic** %3, align 8
  %11 = getelementptr inbounds %struct.mpic, %struct.mpic* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @irq_domain_get_of_node(i32 %12)
  %14 = call i32 @msi_bitmap_alloc(i32* %6, i32 %9, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %45

19:                                               ; preds = %1
  %20 = load %struct.mpic*, %struct.mpic** %3, align 8
  %21 = getelementptr inbounds %struct.mpic, %struct.mpic* %20, i32 0, i32 1
  %22 = call i32 @msi_bitmap_reserve_dt_hwirqs(i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = load %struct.mpic*, %struct.mpic** %3, align 8
  %27 = getelementptr inbounds %struct.mpic, %struct.mpic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MPIC_U3_HT_IRQS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.mpic*, %struct.mpic** %3, align 8
  %34 = call i32 @mpic_msi_reserve_u3_hwirqs(%struct.mpic* %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %25
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.mpic*, %struct.mpic** %3, align 8
  %40 = getelementptr inbounds %struct.mpic, %struct.mpic* %39, i32 0, i32 1
  %41 = call i32 @msi_bitmap_free(i32* %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %19
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %38, %17
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @msi_bitmap_alloc(i32*, i32, i32) #1

declare dso_local i32 @irq_domain_get_of_node(i32) #1

declare dso_local i32 @msi_bitmap_reserve_dt_hwirqs(i32*) #1

declare dso_local i32 @mpic_msi_reserve_u3_hwirqs(%struct.mpic*) #1

declare dso_local i32 @msi_bitmap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
