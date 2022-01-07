; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_create_src_block.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_create_src_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xive_src_block = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i64 }
%struct.kvmppc_xive = type { i32, %struct.kvmppc_xive_src_block**, i32 }

@KVMPPC_XICS_ICS_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KVMPPC_XICS_IRQ_PER_ICS = common dso_local global i32 0, align 4
@MASKED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvmppc_xive_src_block* @kvmppc_xive_create_src_block(%struct.kvmppc_xive* %0, i32 %1) #0 {
  %3 = alloca %struct.kvmppc_xive*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_xive_src_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvmppc_xive* %0, %struct.kvmppc_xive** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @KVMPPC_XICS_ICS_SHIFT, align 4
  %10 = ashr i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %3, align 8
  %12 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %3, align 8
  %15 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %14, i32 0, i32 1
  %16 = load %struct.kvmppc_xive_src_block**, %struct.kvmppc_xive_src_block*** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %16, i64 %18
  %20 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %19, align 8
  %21 = icmp ne %struct.kvmppc_xive_src_block* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %103

23:                                               ; preds = %2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.kvmppc_xive_src_block* @kzalloc(i32 16, i32 %24)
  store %struct.kvmppc_xive_src_block* %25, %struct.kvmppc_xive_src_block** %5, align 8
  %26 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %27 = icmp ne %struct.kvmppc_xive_src_block* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %103

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %32 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %81, %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @KVMPPC_XICS_IRQ_PER_ICS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %84

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @KVMPPC_XICS_ICS_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %44 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %42, i32* %49, align 8
  %50 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %51 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load i8*, i8** @MASKED, align 8
  %58 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %59 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i8* %57, i8** %64, align 8
  %65 = load i8*, i8** @MASKED, align 8
  %66 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %67 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i8* %65, i8** %72, align 8
  %73 = load i8*, i8** @MASKED, align 8
  %74 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %75 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i8* %73, i8** %80, align 8
  br label %81

81:                                               ; preds = %37
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %33

84:                                               ; preds = %33
  %85 = call i32 (...) @smp_wmb()
  %86 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %87 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %3, align 8
  %88 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %87, i32 0, i32 1
  %89 = load %struct.kvmppc_xive_src_block**, %struct.kvmppc_xive_src_block*** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %89, i64 %91
  store %struct.kvmppc_xive_src_block* %86, %struct.kvmppc_xive_src_block** %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %3, align 8
  %95 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %93, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %84
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %3, align 8
  %101 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %84
  br label %103

103:                                              ; preds = %102, %28, %22
  %104 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %3, align 8
  %105 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %104, i32 0, i32 2
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %3, align 8
  %108 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %107, i32 0, i32 1
  %109 = load %struct.kvmppc_xive_src_block**, %struct.kvmppc_xive_src_block*** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %109, i64 %111
  %113 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %112, align 8
  ret %struct.kvmppc_xive_src_block* %113
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kvmppc_xive_src_block* @kzalloc(i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
