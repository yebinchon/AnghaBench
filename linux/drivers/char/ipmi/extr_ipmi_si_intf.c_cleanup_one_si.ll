; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_cleanup_one_si.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_cleanup_one_si.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smi_info*)* @cleanup_one_si to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_one_si(%struct.smi_info* %0) #0 {
  %2 = alloca %struct.smi_info*, align 8
  store %struct.smi_info* %0, %struct.smi_info** %2, align 8
  %3 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %4 = icmp ne %struct.smi_info* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %8 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %7, i32 0, i32 1
  %9 = call i32 @list_del(i32* %8)
  %10 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %11 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %6
  %15 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %16 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @ipmi_unregister_smi(i64 %17)
  br label %19

19:                                               ; preds = %14, %6
  %20 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %21 = call i32 @kfree(%struct.smi_info* %20)
  br label %22

22:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ipmi_unregister_smi(i64) #1

declare dso_local i32 @kfree(%struct.smi_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
