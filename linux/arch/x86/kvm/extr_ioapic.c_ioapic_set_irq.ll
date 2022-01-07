; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_ioapic_set_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_ioapic_set_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_ioapic = type { i32, i32, %union.kvm_ioapic_redirect_entry* }
%union.kvm_ioapic_redirect_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IOAPIC_EDGE_TRIG = common dso_local global i64 0, align 8
@RTC_GSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_ioapic*, i32, i32, i32)* @ioapic_set_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioapic_set_irq(%struct.kvm_ioapic* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_ioapic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.kvm_ioapic_redirect_entry, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kvm_ioapic* %0, %struct.kvm_ioapic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 1, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %16, i32 0, i32 2
  %18 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %union.kvm_ioapic_redirect_entry, %union.kvm_ioapic_redirect_entry* %18, i64 %20
  %22 = bitcast %union.kvm_ioapic_redirect_entry* %9 to i8*
  %23 = bitcast %union.kvm_ioapic_redirect_entry* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = bitcast %union.kvm_ioapic_redirect_entry* %9 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IOAPIC_EDGE_TRIG, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %10, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %36 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  store i32 1, i32* %13, align 4
  br label %81

39:                                               ; preds = %4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @RTC_GSI, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %48 = call i64 @rtc_irq_check_coalesced(%struct.kvm_ioapic* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  br label %81

51:                                               ; preds = %46, %43, %39
  %52 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %53 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %57 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %51
  %63 = load i32, i32* %10, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %66 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %71 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  store i32 0, i32* %13, align 4
  br label %81

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %51
  %77 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @ioapic_service(%struct.kvm_ioapic* %77, i32 %78, i32 %79)
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %76, %74, %50, %32
  %82 = bitcast %union.kvm_ioapic_redirect_entry* %9 to i32*
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @trace_kvm_ioapic_set_irq(i32 %83, i32 %84, i32 %87)
  %89 = load i32, i32* %13, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @rtc_irq_check_coalesced(%struct.kvm_ioapic*) #2

declare dso_local i32 @ioapic_service(%struct.kvm_ioapic*, i32, i32) #2

declare dso_local i32 @trace_kvm_ioapic_set_irq(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
