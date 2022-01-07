; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_pci_command.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_pci_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clp_req = type { i32 }
%struct.clp_req_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clp_req*, %struct.clp_req_hdr*)* @clp_pci_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clp_pci_command(%struct.clp_req* %0, %struct.clp_req_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clp_req*, align 8
  %5 = alloca %struct.clp_req_hdr*, align 8
  store %struct.clp_req* %0, %struct.clp_req** %4, align 8
  store %struct.clp_req_hdr* %1, %struct.clp_req_hdr** %5, align 8
  %6 = load %struct.clp_req_hdr*, %struct.clp_req_hdr** %5, align 8
  %7 = getelementptr inbounds %struct.clp_req_hdr, %struct.clp_req_hdr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %29 [
    i32 1, label %9
    i32 2, label %14
    i32 3, label %19
    i32 4, label %24
  ]

9:                                                ; preds = %2
  %10 = load %struct.clp_req*, %struct.clp_req** %4, align 8
  %11 = load %struct.clp_req_hdr*, %struct.clp_req_hdr** %5, align 8
  %12 = bitcast %struct.clp_req_hdr* %11 to i8*
  %13 = call i32 @clp_pci_slpc(%struct.clp_req* %10, i8* %12)
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.clp_req*, %struct.clp_req** %4, align 8
  %16 = load %struct.clp_req_hdr*, %struct.clp_req_hdr** %5, align 8
  %17 = bitcast %struct.clp_req_hdr* %16 to i8*
  %18 = call i32 @clp_pci_list(%struct.clp_req* %15, i8* %17)
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.clp_req*, %struct.clp_req** %4, align 8
  %21 = load %struct.clp_req_hdr*, %struct.clp_req_hdr** %5, align 8
  %22 = bitcast %struct.clp_req_hdr* %21 to i8*
  %23 = call i32 @clp_pci_query(%struct.clp_req* %20, i8* %22)
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.clp_req*, %struct.clp_req** %4, align 8
  %26 = load %struct.clp_req_hdr*, %struct.clp_req_hdr** %5, align 8
  %27 = bitcast %struct.clp_req_hdr* %26 to i8*
  %28 = call i32 @clp_pci_query_grp(%struct.clp_req* %25, i8* %27)
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %24, %19, %14, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @clp_pci_slpc(%struct.clp_req*, i8*) #1

declare dso_local i32 @clp_pci_list(%struct.clp_req*, i8*) #1

declare dso_local i32 @clp_pci_query(%struct.clp_req*, i8*) #1

declare dso_local i32 @clp_pci_query_grp(%struct.clp_req*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
