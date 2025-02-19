; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_kvm_register_target_coproc_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_kvm_register_target_coproc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_coproc_target_table = type { i64, i32, i32 }

@target_tables = common dso_local global %struct.kvm_coproc_target_table** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_register_target_coproc_table(%struct.kvm_coproc_target_table* %0) #0 {
  %2 = alloca %struct.kvm_coproc_target_table*, align 8
  store %struct.kvm_coproc_target_table* %0, %struct.kvm_coproc_target_table** %2, align 8
  %3 = load %struct.kvm_coproc_target_table*, %struct.kvm_coproc_target_table** %2, align 8
  %4 = getelementptr inbounds %struct.kvm_coproc_target_table, %struct.kvm_coproc_target_table* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.kvm_coproc_target_table*, %struct.kvm_coproc_target_table** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_coproc_target_table, %struct.kvm_coproc_target_table* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @check_reg_table(i32 %5, i32 %8)
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.kvm_coproc_target_table*, %struct.kvm_coproc_target_table** %2, align 8
  %12 = load %struct.kvm_coproc_target_table**, %struct.kvm_coproc_target_table*** @target_tables, align 8
  %13 = load %struct.kvm_coproc_target_table*, %struct.kvm_coproc_target_table** %2, align 8
  %14 = getelementptr inbounds %struct.kvm_coproc_target_table, %struct.kvm_coproc_target_table* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.kvm_coproc_target_table*, %struct.kvm_coproc_target_table** %12, i64 %15
  store %struct.kvm_coproc_target_table* %11, %struct.kvm_coproc_target_table** %16, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @check_reg_table(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
