; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_irq.c_uv_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_irq.c_uv_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.uv_irq_2_mmr_pnode = type { i32, i32 }
%struct.irq_alloc_info = type { i64, i64, i32, i32, i32 }
%struct.irq_data = type { i32 }

@X86_IRQ_ALLOC_TYPE_UV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UV_AFFINITY_CPU = common dso_local global i64 0, align 8
@IRQ_NO_BALANCING = common dso_local global i32 0, align 4
@IRQ_MOVE_PCNTXT = common dso_local global i32 0, align 4
@uv_irq_chip = common dso_local global i32 0, align 4
@handle_percpu_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @uv_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.uv_irq_2_mmr_pnode*, align 8
  %11 = alloca %struct.irq_alloc_info*, align 8
  %12 = alloca %struct.irq_data*, align 8
  %13 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.irq_alloc_info*
  store %struct.irq_alloc_info* %15, %struct.irq_alloc_info** %11, align 8
  %16 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %16, i32 %17)
  store %struct.irq_data* %18, %struct.irq_data** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %30, label %21

21:                                               ; preds = %4
  %22 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %23 = icmp ne %struct.irq_alloc_info* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %26 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @X86_IRQ_ALLOC_TYPE_UV, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %21, %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %91

33:                                               ; preds = %24
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load %struct.irq_data*, %struct.irq_data** %12, align 8
  %36 = call i32 @irq_data_get_node(%struct.irq_data* %35)
  %37 = call %struct.uv_irq_2_mmr_pnode* @kmalloc_node(i32 8, i32 %34, i32 %36)
  store %struct.uv_irq_2_mmr_pnode* %37, %struct.uv_irq_2_mmr_pnode** %10, align 8
  %38 = load %struct.uv_irq_2_mmr_pnode*, %struct.uv_irq_2_mmr_pnode** %10, align 8
  %39 = icmp ne %struct.uv_irq_2_mmr_pnode* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %91

43:                                               ; preds = %33
  %44 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %44, i32 %45, i32 %46, i8* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %43
  %52 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %53 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UV_AFFINITY_CPU, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @IRQ_NO_BALANCING, align 4
  %60 = call i32 @irq_set_status_flags(i32 %58, i32 %59)
  br label %65

61:                                               ; preds = %51
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @IRQ_MOVE_PCNTXT, align 4
  %64 = call i32 @irq_set_status_flags(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %57
  %66 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %67 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @uv_blade_to_pnode(i32 %68)
  %70 = load %struct.uv_irq_2_mmr_pnode*, %struct.uv_irq_2_mmr_pnode** %10, align 8
  %71 = getelementptr inbounds %struct.uv_irq_2_mmr_pnode, %struct.uv_irq_2_mmr_pnode* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %73 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.uv_irq_2_mmr_pnode*, %struct.uv_irq_2_mmr_pnode** %10, align 8
  %76 = getelementptr inbounds %struct.uv_irq_2_mmr_pnode, %struct.uv_irq_2_mmr_pnode* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.uv_irq_2_mmr_pnode*, %struct.uv_irq_2_mmr_pnode** %10, align 8
  %81 = load i32, i32* @handle_percpu_irq, align 4
  %82 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %83 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @irq_domain_set_info(%struct.irq_domain* %77, i32 %78, i32 %79, i32* @uv_irq_chip, %struct.uv_irq_2_mmr_pnode* %80, i32 %81, i32* null, i32 %84)
  br label %89

86:                                               ; preds = %43
  %87 = load %struct.uv_irq_2_mmr_pnode*, %struct.uv_irq_2_mmr_pnode** %10, align 8
  %88 = call i32 @kfree(%struct.uv_irq_2_mmr_pnode* %87)
  br label %89

89:                                               ; preds = %86, %65
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %40, %30
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local %struct.uv_irq_2_mmr_pnode* @kmalloc_node(i32, i32, i32) #1

declare dso_local i32 @irq_data_get_node(%struct.irq_data*) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, i8*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @uv_blade_to_pnode(i32) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i32, i32*, %struct.uv_irq_2_mmr_pnode*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.uv_irq_2_mmr_pnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
