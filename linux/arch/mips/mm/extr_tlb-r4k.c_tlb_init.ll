; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r4k.c_tlb_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r4k.c_tlb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ntlb = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"Restricting TLB to %d entries\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Ignoring invalid argument ntlb=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @r4k_tlb_configure()
  %3 = load i32, i32* @ntlb, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %0
  %6 = load i32, i32* @ntlb, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load i32, i32* @ntlb, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  %14 = load i32, i32* @ntlb, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @write_c0_wired(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @write_c0_index(i32 %19)
  %21 = load i32, i32* @ntlb, align 4
  %22 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %26

23:                                               ; preds = %8, %5
  %24 = load i32, i32* @ntlb, align 4
  %25 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %12
  br label %27

27:                                               ; preds = %26, %0
  %28 = call i32 (...) @build_tlb_refill_handler()
  ret void
}

declare dso_local i32 @r4k_tlb_configure(...) #1

declare dso_local i32 @write_c0_wired(i32) #1

declare dso_local i32 @write_c0_index(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @build_tlb_refill_handler(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
