; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_setup.c_lookup_processor.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_setup.c_lookup_processor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_info_list = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"CPU%u: configuration botched (ID %08x), CPU halted\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc_info_list* @lookup_processor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proc_info_list*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.proc_info_list* @lookup_processor_type(i32 %4)
  store %struct.proc_info_list* %5, %struct.proc_info_list** %3, align 8
  %6 = load %struct.proc_info_list*, %struct.proc_info_list** %3, align 8
  %7 = icmp ne %struct.proc_info_list* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = call i32 (...) @smp_processor_id()
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %8, %12
  br label %12

13:                                               ; preds = %1
  %14 = load %struct.proc_info_list*, %struct.proc_info_list** %3, align 8
  ret %struct.proc_info_list* %14
}

declare dso_local %struct.proc_info_list* @lookup_processor_type(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
