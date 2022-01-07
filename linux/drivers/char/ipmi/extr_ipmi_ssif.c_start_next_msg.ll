; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_start_next_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_start_next_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssif_info = type { %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg* }
%struct.ipmi_smi_msg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssif_info*, i64*)* @start_next_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_next_msg(%struct.ssif_info* %0, i64* %1) #0 {
  %3 = alloca %struct.ssif_info*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.ipmi_smi_msg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ssif_info* %0, %struct.ssif_info** %3, align 8
  store i64* %1, i64** %4, align 8
  br label %8

8:                                                ; preds = %52, %2
  %9 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %10 = call i32 @SSIF_IDLE(%struct.ssif_info* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %14 = load i64*, i64** %4, align 8
  %15 = call i32 @ipmi_ssif_unlock_cond(%struct.ssif_info* %13, i64* %14)
  br label %64

16:                                               ; preds = %8
  %17 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %18 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %17, i32 0, i32 1
  %19 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %18, align 8
  %20 = icmp ne %struct.ipmi_smi_msg* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %23 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %22, i32 0, i32 0
  store %struct.ipmi_smi_msg* null, %struct.ipmi_smi_msg** %23, align 8
  %24 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %25 = load i64*, i64** %4, align 8
  %26 = call i32 @ipmi_ssif_unlock_cond(%struct.ssif_info* %24, i64* %25)
  br label %64

27:                                               ; preds = %16
  %28 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %29 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %28, i32 0, i32 1
  %30 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %29, align 8
  %31 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %32 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %31, i32 0, i32 0
  store %struct.ipmi_smi_msg* %30, %struct.ipmi_smi_msg** %32, align 8
  %33 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %34 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %33, i32 0, i32 1
  store %struct.ipmi_smi_msg* null, %struct.ipmi_smi_msg** %34, align 8
  %35 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %36 = load i64*, i64** %4, align 8
  %37 = call i32 @ipmi_ssif_unlock_cond(%struct.ssif_info* %35, i64* %36)
  %38 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %39 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %40 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %39, i32 0, i32 0
  %41 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %40, align 8
  %42 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %45 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %44, i32 0, i32 0
  %46 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %45, align 8
  %47 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @start_send(%struct.ssif_info* %38, i32 %43, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %27
  %53 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %54 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %53, i32 0, i32 0
  %55 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %54, align 8
  store %struct.ipmi_smi_msg* %55, %struct.ipmi_smi_msg** %5, align 8
  %56 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %57 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %56, i32 0, i32 0
  store %struct.ipmi_smi_msg* null, %struct.ipmi_smi_msg** %57, align 8
  %58 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %59 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %60 = call i32 @return_hosed_msg(%struct.ssif_info* %58, %struct.ipmi_smi_msg* %59)
  %61 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %62 = call i64* @ipmi_ssif_lock_cond(%struct.ssif_info* %61, i64* %6)
  store i64* %62, i64** %4, align 8
  br label %8

63:                                               ; preds = %27
  br label %64

64:                                               ; preds = %12, %63, %21
  ret void
}

declare dso_local i32 @SSIF_IDLE(%struct.ssif_info*) #1

declare dso_local i32 @ipmi_ssif_unlock_cond(%struct.ssif_info*, i64*) #1

declare dso_local i32 @start_send(%struct.ssif_info*, i32, i32) #1

declare dso_local i32 @return_hosed_msg(%struct.ssif_info*, %struct.ipmi_smi_msg*) #1

declare dso_local i64* @ipmi_ssif_lock_cond(%struct.ssif_info*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
