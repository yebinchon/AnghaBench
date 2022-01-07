; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500.c_kvmppc_e500_id_table_reset_one.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500.c_kvmppc_e500_id_table_reset_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { %struct.vcpu_id_table* }
%struct.vcpu_id_table = type { %struct.TYPE_2__*** }
%struct.TYPE_2__ = type { i32*, i64 }

@NUM_TIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_vcpu_e500*, i32, i32, i32)* @kvmppc_e500_id_table_reset_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_e500_id_table_reset_one(%struct.kvmppc_vcpu_e500* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vcpu_id_table*, align 8
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %11 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %10, i32 0, i32 0
  %12 = load %struct.vcpu_id_table*, %struct.vcpu_id_table** %11, align 8
  store %struct.vcpu_id_table* %12, %struct.vcpu_id_table** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 2
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @NUM_TIDS, align 4
  %19 = icmp sge i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 2
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.vcpu_id_table*, %struct.vcpu_id_table** %9, align 8
  %27 = getelementptr inbounds %struct.vcpu_id_table, %struct.vcpu_id_table* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %28, i64 %30
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.vcpu_id_table*, %struct.vcpu_id_table** %9, align 8
  %42 = getelementptr inbounds %struct.vcpu_id_table, %struct.vcpu_id_table* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %43, i64 %45
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %57 = call i32 @kvmppc_e500_recalc_shadow_pid(%struct.kvmppc_vcpu_e500* %56)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kvmppc_e500_recalc_shadow_pid(%struct.kvmppc_vcpu_e500*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
