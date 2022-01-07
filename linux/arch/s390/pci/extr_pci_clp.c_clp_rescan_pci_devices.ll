; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_rescan_pci_devices.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_rescan_pci_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clp_req_rsp_list_pci = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__clp_add = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clp_rescan_pci_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.clp_req_rsp_list_pci*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @zpci_remove_reserved_devices()
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.clp_req_rsp_list_pci* @clp_alloc_block(i32 %5)
  store %struct.clp_req_rsp_list_pci* %6, %struct.clp_req_rsp_list_pci** %2, align 8
  %7 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %2, align 8
  %8 = icmp ne %struct.clp_req_rsp_list_pci* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %19

12:                                               ; preds = %0
  %13 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %2, align 8
  %14 = load i32, i32* @__clp_add, align 4
  %15 = call i32 @clp_list_pci(%struct.clp_req_rsp_list_pci* %13, i32* null, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %2, align 8
  %17 = call i32 @clp_free_block(%struct.clp_req_rsp_list_pci* %16)
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %12, %9
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @zpci_remove_reserved_devices(...) #1

declare dso_local %struct.clp_req_rsp_list_pci* @clp_alloc_block(i32) #1

declare dso_local i32 @clp_list_pci(%struct.clp_req_rsp_list_pci*, i32*, i32) #1

declare dso_local i32 @clp_free_block(%struct.clp_req_rsp_list_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
