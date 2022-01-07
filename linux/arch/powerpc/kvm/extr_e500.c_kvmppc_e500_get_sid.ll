; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500.c_kvmppc_e500_get_sid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500.c_kvmppc_e500_get_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { %struct.vcpu_id_table* }
%struct.vcpu_id_table = type { i32*** }

@NUM_TIDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_e500_get_sid(%struct.kvmppc_vcpu_e500* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vcpu_id_table*, align 8
  %12 = alloca i32, align 4
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %6, align 8
  %14 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %13, i32 0, i32 0
  %15 = load %struct.vcpu_id_table*, %struct.vcpu_id_table** %14, align 8
  store %struct.vcpu_id_table* %15, %struct.vcpu_id_table** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp uge i32 %16, 2
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @NUM_TIDS, align 4
  %22 = icmp uge i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = icmp uge i32 %25, 2
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.vcpu_id_table*, %struct.vcpu_id_table** %11, align 8
  %30 = getelementptr inbounds %struct.vcpu_id_table, %struct.vcpu_id_table* %29, i32 0, i32 0
  %31 = load i32***, i32**** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32**, i32*** %31, i64 %33
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @local_sid_lookup(i32* %42)
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %74, %5
  %45 = load i32, i32* %12, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %44
  %48 = load %struct.vcpu_id_table*, %struct.vcpu_id_table** %11, align 8
  %49 = getelementptr inbounds %struct.vcpu_id_table, %struct.vcpu_id_table* %48, i32 0, i32 0
  %50 = load i32***, i32**** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32**, i32*** %50, i64 %52
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i32 @local_sid_setup_one(i32* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %47
  %66 = call i32 (...) @_tlbil_all()
  %67 = call i32 (...) @local_sid_destroy_all()
  br label %68

68:                                               ; preds = %65, %47
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %6, align 8
  %73 = call i32 @kvmppc_e500_recalc_shadow_pid(%struct.kvmppc_vcpu_e500* %72)
  br label %74

74:                                               ; preds = %71, %68
  br label %44

75:                                               ; preds = %44
  %76 = load i32, i32* %12, align 4
  ret i32 %76
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @local_sid_lookup(i32*) #1

declare dso_local i32 @local_sid_setup_one(i32*) #1

declare dso_local i32 @_tlbil_all(...) #1

declare dso_local i32 @local_sid_destroy_all(...) #1

declare dso_local i32 @kvmppc_e500_recalc_shadow_pid(%struct.kvmppc_vcpu_e500*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
