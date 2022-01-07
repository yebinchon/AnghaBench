; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap-wakeupgen.c_wakeupgen_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap-wakeupgen.c_wakeupgen_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.irq_fwspec = type { i32, i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_IRQS = common dso_local global i64 0, align 8
@wakeupgen_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @wakeupgen_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wakeupgen_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.irq_fwspec*, align 8
  %11 = alloca %struct.irq_fwspec, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %15, %struct.irq_fwspec** %10, align 8
  %16 = load %struct.irq_fwspec*, %struct.irq_fwspec** %10, align 8
  %17 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %77

23:                                               ; preds = %4
  %24 = load %struct.irq_fwspec*, %struct.irq_fwspec** %10, align 8
  %25 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %77

33:                                               ; preds = %23
  %34 = load %struct.irq_fwspec*, %struct.irq_fwspec** %10, align 8
  %35 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @MAX_IRQS, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %77

45:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %13, align 4
  %54 = add i32 %52, %53
  %55 = load i64, i64* %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %51, i32 %54, i64 %58, i32* @wakeupgen_chip, i32* null)
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %46

63:                                               ; preds = %46
  %64 = load %struct.irq_fwspec*, %struct.irq_fwspec** %10, align 8
  %65 = bitcast %struct.irq_fwspec* %11 to i8*
  %66 = bitcast %struct.irq_fwspec* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 24, i1 false)
  %67 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %68 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 2
  store i32 %71, i32* %72, align 8
  %73 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %73, i32 %74, i32 %75, %struct.irq_fwspec* %11)
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %63, %42, %30, %20
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i64, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
