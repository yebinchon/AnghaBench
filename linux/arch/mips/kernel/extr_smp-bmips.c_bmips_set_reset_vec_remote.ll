; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_smp-bmips.c_bmips_set_reset_vec_remote.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_smp-bmips.c_bmips_set_reset_vec_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_vec_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bmips_set_reset_vec_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bmips_set_reset_vec_remote(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.reset_vec_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.reset_vec_info*
  store %struct.reset_vec_info* %8, %struct.reset_vec_info** %3, align 8
  %9 = load %struct.reset_vec_info*, %struct.reset_vec_info** %3, align 8
  %10 = getelementptr inbounds %struct.reset_vec_info, %struct.reset_vec_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 16, i32 0
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 65535, %16
  %18 = xor i32 %17, -1
  store i32 %18, i32* %5, align 4
  %19 = load %struct.reset_vec_info*, %struct.reset_vec_info** %3, align 8
  %20 = getelementptr inbounds %struct.reset_vec_info, %struct.reset_vec_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 16
  store i32 %22, i32* %6, align 4
  %23 = call i32 (...) @preempt_disable()
  %24 = call i64 (...) @smp_processor_id()
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.reset_vec_info*, %struct.reset_vec_info** %3, align 8
  %28 = call i32 @smp_call_function_single(i32 0, void (i8*)* @bmips_set_reset_vec_remote, %struct.reset_vec_info* %27, i32 1)
  br label %52

29:                                               ; preds = %1
  %30 = load %struct.reset_vec_info*, %struct.reset_vec_info** %3, align 8
  %31 = getelementptr inbounds %struct.reset_vec_info, %struct.reset_vec_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 %36, 16
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @bmips_write_zscm_reg(i32 160, i32 %39)
  %41 = call i32 @bmips_read_zscm_reg(i32 160)
  br label %51

42:                                               ; preds = %29
  %43 = call i32 (...) @read_c0_brcm_bootvec()
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %45, %48
  %50 = call i32 @write_c0_brcm_bootvec(i32 %49)
  br label %51

51:                                               ; preds = %42, %35
  br label %52

52:                                               ; preds = %51, %26
  %53 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @smp_call_function_single(i32, void (i8*)*, %struct.reset_vec_info*, i32) #1

declare dso_local i32 @bmips_write_zscm_reg(i32, i32) #1

declare dso_local i32 @bmips_read_zscm_reg(i32) #1

declare dso_local i32 @write_c0_brcm_bootvec(i32) #1

declare dso_local i32 @read_c0_brcm_bootvec(...) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
