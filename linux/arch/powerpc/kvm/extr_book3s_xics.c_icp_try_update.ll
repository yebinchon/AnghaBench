; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_icp_try_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_icp_try_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_icp = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.kvmppc_icp_state = type { i64 }

@.str = private unnamed_addr constant [56 x i8] c"UPD [%04lx] - C:%02x M:%02x PP: %02x PI:%06x R:%d O:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"UPD        - C:%02x M:%02x PP: %02x PI:%06x R:%d O:%d\0A\00", align 1
@BOOK3S_INTERRUPT_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_icp*, i64, i64, i32)* @icp_try_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icp_try_update(%struct.kvmppc_icp* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %union.kvmppc_icp_state, align 8
  %6 = alloca %union.kvmppc_icp_state, align 8
  %7 = alloca %struct.kvmppc_icp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %5, i32 0, i32 0
  store i64 %1, i64* %10, align 8
  %11 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %6, i32 0, i32 0
  store i64 %2, i64* %11, align 8
  store %struct.kvmppc_icp* %0, %struct.kvmppc_icp** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = bitcast %union.kvmppc_icp_state* %6 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = bitcast %union.kvmppc_icp_state* %6 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = bitcast %union.kvmppc_icp_state* %6 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %17, %19
  br label %21

21:                                               ; preds = %15, %4
  %22 = phi i1 [ false, %4 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = bitcast %union.kvmppc_icp_state* %6 to i32*
  store i32 %23, i32* %24, align 8
  %25 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %26 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast %union.kvmppc_icp_state* %5 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = bitcast %union.kvmppc_icp_state* %6 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @cmpxchg64(i32* %27, i64 %29, i64 %31)
  %33 = bitcast %union.kvmppc_icp_state* %5 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %32, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %21
  br label %92

40:                                               ; preds = %21
  %41 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %42 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = bitcast %union.kvmppc_icp_state* %5 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = bitcast %union.kvmppc_icp_state* %5 to i32*
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = bitcast %union.kvmppc_icp_state* %5 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = bitcast %union.kvmppc_icp_state* %5 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = bitcast %union.kvmppc_icp_state* %5 to i32*
  %56 = load i32, i32* %55, align 8
  %57 = bitcast %union.kvmppc_icp_state* %5 to i32*
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, i64, i64, i64, i64, i32, i32, ...) @XICS_DBG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %46, i64 %49, i64 %51, i32 %54, i32 %56, i32 %58)
  %60 = bitcast %union.kvmppc_icp_state* %6 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = bitcast %union.kvmppc_icp_state* %6 to i32*
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = bitcast %union.kvmppc_icp_state* %6 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = bitcast %union.kvmppc_icp_state* %6 to i64*
  %68 = load i64, i64* %67, align 8
  %69 = bitcast %union.kvmppc_icp_state* %6 to i32*
  %70 = load i32, i32* %69, align 8
  %71 = bitcast %union.kvmppc_icp_state* %6 to i32*
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, i64, i64, i64, i64, i32, i32, ...) @XICS_DBG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %61, i64 %64, i64 %66, i64 %68, i32 %70, i32 %72)
  %74 = bitcast %union.kvmppc_icp_state* %6 to i32*
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %40
  %78 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %79 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @BOOK3S_INTERRUPT_EXTERNAL, align 4
  %82 = call i32 @kvmppc_book3s_queue_irqprio(i32 %80, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %77
  %86 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %87 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @kvmppc_fast_vcpu_kick(i32 %88)
  br label %90

90:                                               ; preds = %85, %77
  br label %91

91:                                               ; preds = %90, %40
  br label %92

92:                                               ; preds = %91, %39
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local i64 @cmpxchg64(i32*, i64, i64) #1

declare dso_local i32 @XICS_DBG(i8*, i64, i64, i64, i64, i32, i32, ...) #1

declare dso_local i32 @kvmppc_book3s_queue_irqprio(i32, i32) #1

declare dso_local i32 @kvmppc_fast_vcpu_kick(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
