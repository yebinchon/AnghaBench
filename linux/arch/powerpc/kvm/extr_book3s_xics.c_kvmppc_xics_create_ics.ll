; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_create_ics.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_create_ics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_ics = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i8* }
%struct.kvm = type { i32 }
%struct.kvmppc_xics = type { i32, %struct.kvmppc_ics** }

@KVMPPC_XICS_ICS_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KVMPPC_XICS_IRQ_PER_ICS = common dso_local global i32 0, align 4
@MASKED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvmppc_ics* (%struct.kvm*, %struct.kvmppc_xics*, i32)* @kvmppc_xics_create_ics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvmppc_ics* @kvmppc_xics_create_ics(%struct.kvm* %0, %struct.kvmppc_xics* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvmppc_xics*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvmppc_ics*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvmppc_xics* %1, %struct.kvmppc_xics** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @KVMPPC_XICS_ICS_SHIFT, align 4
  %12 = ashr i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.kvm*, %struct.kvm** %4, align 8
  %14 = getelementptr inbounds %struct.kvm, %struct.kvm* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %17 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %16, i32 0, i32 1
  %18 = load %struct.kvmppc_ics**, %struct.kvmppc_ics*** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.kvmppc_ics*, %struct.kvmppc_ics** %18, i64 %20
  %22 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %21, align 8
  %23 = icmp ne %struct.kvmppc_ics* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %90

25:                                               ; preds = %3
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.kvmppc_ics* @kzalloc(i32 16, i32 %26)
  store %struct.kvmppc_ics* %27, %struct.kvmppc_ics** %7, align 8
  %28 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %7, align 8
  %29 = icmp ne %struct.kvmppc_ics* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %90

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %7, align 8
  %34 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %68, %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @KVMPPC_XICS_IRQ_PER_ICS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @KVMPPC_XICS_ICS_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %7, align 8
  %46 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 8
  %52 = load i8*, i8** @MASKED, align 8
  %53 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %7, align 8
  %54 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i8* %52, i8** %59, align 8
  %60 = load i8*, i8** @MASKED, align 8
  %61 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %7, align 8
  %62 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i8* %60, i8** %67, align 8
  br label %68

68:                                               ; preds = %39
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %35

71:                                               ; preds = %35
  %72 = call i32 (...) @smp_wmb()
  %73 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %7, align 8
  %74 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %75 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %74, i32 0, i32 1
  %76 = load %struct.kvmppc_ics**, %struct.kvmppc_ics*** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.kvmppc_ics*, %struct.kvmppc_ics** %76, i64 %78
  store %struct.kvmppc_ics* %73, %struct.kvmppc_ics** %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %82 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %80, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %71
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %88 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %71
  br label %90

90:                                               ; preds = %89, %30, %24
  %91 = load %struct.kvm*, %struct.kvm** %4, align 8
  %92 = getelementptr inbounds %struct.kvm, %struct.kvm* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %95 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %94, i32 0, i32 1
  %96 = load %struct.kvmppc_ics**, %struct.kvmppc_ics*** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.kvmppc_ics*, %struct.kvmppc_ics** %96, i64 %98
  %100 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %99, align 8
  ret %struct.kvmppc_ics* %100
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kvmppc_ics* @kzalloc(i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
