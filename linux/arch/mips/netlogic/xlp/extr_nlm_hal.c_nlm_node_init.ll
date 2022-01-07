; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_nlm_hal.c_nlm_node_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_nlm_hal.c_nlm_node_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_soc_info = type { i32, i32, i32, i64, i32, i32 }

@MIPS_EBASE_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_node_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nlm_soc_info*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.nlm_soc_info* @nlm_get_node(i32 %4)
  store %struct.nlm_soc_info* %5, %struct.nlm_soc_info** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.nlm_soc_info*, %struct.nlm_soc_info** %3, align 8
  %10 = getelementptr inbounds %struct.nlm_soc_info, %struct.nlm_soc_info* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @nlm_get_sys_regbase(i32 %12)
  %14 = load %struct.nlm_soc_info*, %struct.nlm_soc_info** %3, align 8
  %15 = getelementptr inbounds %struct.nlm_soc_info, %struct.nlm_soc_info* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @nlm_get_pic_regbase(i32 %16)
  %18 = load %struct.nlm_soc_info*, %struct.nlm_soc_info** %3, align 8
  %19 = getelementptr inbounds %struct.nlm_soc_info, %struct.nlm_soc_info* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = call i32 (...) @read_c0_ebase()
  %21 = load i32, i32* @MIPS_EBASE_BASE, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.nlm_soc_info*, %struct.nlm_soc_info** %3, align 8
  %24 = getelementptr inbounds %struct.nlm_soc_info, %struct.nlm_soc_info* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = call i64 (...) @cpu_is_xlp9xx()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %11
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @xlp9xx_get_socbus(i32 %28)
  %30 = load %struct.nlm_soc_info*, %struct.nlm_soc_info** %3, align 8
  %31 = getelementptr inbounds %struct.nlm_soc_info, %struct.nlm_soc_info* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  br label %35

32:                                               ; preds = %11
  %33 = load %struct.nlm_soc_info*, %struct.nlm_soc_info** %3, align 8
  %34 = getelementptr inbounds %struct.nlm_soc_info, %struct.nlm_soc_info* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.nlm_soc_info*, %struct.nlm_soc_info** %3, align 8
  %37 = getelementptr inbounds %struct.nlm_soc_info, %struct.nlm_soc_info* %36, i32 0, i32 2
  %38 = call i32 @spin_lock_init(i32* %37)
  ret void
}

declare dso_local %struct.nlm_soc_info* @nlm_get_node(i32) #1

declare dso_local i32 @nlm_get_sys_regbase(i32) #1

declare dso_local i32 @nlm_get_pic_regbase(i32) #1

declare dso_local i32 @read_c0_ebase(...) #1

declare dso_local i64 @cpu_is_xlp9xx(...) #1

declare dso_local i64 @xlp9xx_get_socbus(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
