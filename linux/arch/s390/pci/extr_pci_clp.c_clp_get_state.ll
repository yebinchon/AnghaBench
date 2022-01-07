; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clp_req_rsp_list_pci = type { i32 }
%struct.clp_state_data = type { i32, i32, i32 }

@ZPCI_FN_STATE_RESERVED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__clp_get_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clp_get_state(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.clp_req_rsp_list_pci*, align 8
  %7 = alloca %struct.clp_state_data, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = getelementptr inbounds %struct.clp_state_data, %struct.clp_state_data* %7, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.clp_state_data, %struct.clp_state_data* %7, i32 0, i32 1
  %12 = load i32, i32* @ZPCI_FN_STATE_RESERVED, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.clp_state_data, %struct.clp_state_data* %7, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.clp_req_rsp_list_pci* @clp_alloc_block(i32 %14)
  store %struct.clp_req_rsp_list_pci* %15, %struct.clp_req_rsp_list_pci** %6, align 8
  %16 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %6, align 8
  %17 = icmp ne %struct.clp_req_rsp_list_pci* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %35

21:                                               ; preds = %2
  %22 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %6, align 8
  %23 = load i32, i32* @__clp_get_state, align 4
  %24 = call i32 @clp_list_pci(%struct.clp_req_rsp_list_pci* %22, %struct.clp_state_data* %7, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.clp_state_data, %struct.clp_state_data* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %6, align 8
  %33 = call i32 @clp_free_block(%struct.clp_req_rsp_list_pci* %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %18
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.clp_req_rsp_list_pci* @clp_alloc_block(i32) #1

declare dso_local i32 @clp_list_pci(%struct.clp_req_rsp_list_pci*, %struct.clp_state_data*, i32) #1

declare dso_local i32 @clp_free_block(%struct.clp_req_rsp_list_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
