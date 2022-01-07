; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_tx_give.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_tx_give.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64, i64, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_17__*, i32, i32 }

@DBG_FLOW = common dso_local global i32 0, align 4
@DBG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"tx_give %p\00", align 1
@dead = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"TX in slot %p\00", align 1
@amb_mem = common dso_local global i32 0, align 4
@mb = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@doorbell = common dso_local global i32 0, align 4
@TX_FRAME = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_17__*)* @tx_give to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_give(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %6, align 8
  %10 = load i32, i32* @DBG_FLOW, align 4
  %11 = load i32, i32* @DBG_TX, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = call i32 @PRINTD(i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %13)
  %15 = load i32, i32* @dead, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %112

21:                                               ; preds = %2
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 3
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %101

33:                                               ; preds = %21
  %34 = load i32, i32* @DBG_TX, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = call i32 @PRINTD(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_17__* %38)
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = bitcast %struct.TYPE_17__* %43 to i8*
  %46 = bitcast %struct.TYPE_17__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 56, i1 false)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.TYPE_17__* @NEXTQ(%struct.TYPE_17__* %54, i32 %58, i32 %62)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %66, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = load i32, i32* @amb_mem, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @mb, i32 0, i32 0, i32 0), align 4
  %70 = call i32 @offsetof(i32 %68, i32 %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = call i32 @virt_to_bus(%struct.TYPE_17__* %74)
  %76 = call i32 @wr_mem(%struct.TYPE_17__* %67, i32 %70, i32 %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = load i32, i32* @amb_mem, align 4
  %79 = load i32, i32* @doorbell, align 4
  %80 = call i32 @offsetof(i32 %78, i32 %79)
  %81 = load i32, i32* @TX_FRAME, align 4
  %82 = call i32 @wr_mem(%struct.TYPE_17__* %77, i32 %80, i32 %81)
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %85, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %33
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %90, %33
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 3
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  store i32 0, i32* %3, align 4
  br label %112

101:                                              ; preds = %21
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 3
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  %110 = load i32, i32* @EAGAIN, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %101, %96, %20
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @PRINTD(i32, i8*, %struct.TYPE_17__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_17__* @NEXTQ(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @wr_mem(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @virt_to_bus(%struct.TYPE_17__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
