; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-irq.c_hub_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-irq.c_hub_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_alloc_info = type { i32 }
%struct.hub_irq_data = type { i32 }
%struct.hub_data = type { i32 }
%struct.irq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@hub_irq_type = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @hub_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.irq_alloc_info*, align 8
  %11 = alloca %struct.hub_irq_data*, align 8
  %12 = alloca %struct.hub_data*, align 8
  %13 = alloca %struct.irq_desc*, align 8
  %14 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.irq_alloc_info*
  store %struct.irq_alloc_info* %16, %struct.irq_alloc_info** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %10, align 8
  %21 = icmp ne %struct.irq_alloc_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %81

25:                                               ; preds = %19
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.hub_irq_data* @kzalloc(i32 4, i32 %26)
  store %struct.hub_irq_data* %27, %struct.hub_irq_data** %11, align 8
  %28 = load %struct.hub_irq_data*, %struct.hub_irq_data** %11, align 8
  %29 = icmp ne %struct.hub_irq_data* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %81

33:                                               ; preds = %25
  %34 = call i32 (...) @alloc_level()
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.hub_irq_data*, %struct.hub_irq_data** %11, align 8
  %42 = call i32 @kfree(%struct.hub_irq_data* %41)
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %81

45:                                               ; preds = %33
  %46 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.hub_irq_data*, %struct.hub_irq_data** %11, align 8
  %50 = load i32, i32* @handle_level_irq, align 4
  %51 = call i32 @irq_domain_set_info(%struct.irq_domain* %46, i32 %47, i32 %48, i32* @hub_irq_type, %struct.hub_irq_data* %49, i32 %50, i32* null, i32* null)
  %52 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %10, align 8
  %53 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @NASID_TO_COMPACT_NODEID(i32 %54)
  %56 = call %struct.hub_data* @hub_data(i32 %55)
  store %struct.hub_data* %56, %struct.hub_data** %12, align 8
  %57 = load %struct.hub_irq_data*, %struct.hub_irq_data** %11, align 8
  %58 = load %struct.hub_data*, %struct.hub_data** %12, align 8
  %59 = getelementptr inbounds %struct.hub_data, %struct.hub_data* %58, i32 0, i32 0
  %60 = call i32 @setup_hub_mask(%struct.hub_irq_data* %57, i32* %59)
  %61 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %10, align 8
  %62 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @REMOTE_HUB_CLR_INTR(i32 %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = call %struct.irq_desc* @irq_to_desc(i32 %66)
  store %struct.irq_desc* %67, %struct.irq_desc** %13, align 8
  %68 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %10, align 8
  %69 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %72 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %75 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.hub_data*, %struct.hub_data** %12, align 8
  %79 = getelementptr inbounds %struct.hub_data, %struct.hub_data* %78, i32 0, i32 0
  %80 = call i32 @cpumask_copy(i32 %77, i32* %79)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %45, %40, %30, %22
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.hub_irq_data* @kzalloc(i32, i32) #1

declare dso_local i32 @alloc_level(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.hub_irq_data*) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i32, i32*, %struct.hub_irq_data*, i32, i32*, i32*) #1

declare dso_local %struct.hub_data* @hub_data(i32) #1

declare dso_local i32 @NASID_TO_COMPACT_NODEID(i32) #1

declare dso_local i32 @setup_hub_mask(%struct.hub_irq_data*, i32*) #1

declare dso_local i32 @REMOTE_HUB_CLR_INTR(i32, i32) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @cpumask_copy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
