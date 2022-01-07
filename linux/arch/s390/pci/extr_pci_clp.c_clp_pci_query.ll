; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_pci_query.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_pci_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clp_req = type { i32 }
%struct.clp_req_rsp_query_pci = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLP_LPS_PCI = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clp_req*, %struct.clp_req_rsp_query_pci*)* @clp_pci_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clp_pci_query(%struct.clp_req* %0, %struct.clp_req_rsp_query_pci* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clp_req*, align 8
  %5 = alloca %struct.clp_req_rsp_query_pci*, align 8
  %6 = alloca i64, align 8
  store %struct.clp_req* %0, %struct.clp_req** %4, align 8
  store %struct.clp_req_rsp_query_pci* %1, %struct.clp_req_rsp_query_pci** %5, align 8
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = sext i32 %7 to i64
  %9 = sub i64 %8, 24
  store i64 %9, i64* %6, align 8
  %10 = load %struct.clp_req_rsp_query_pci*, %struct.clp_req_rsp_query_pci** %5, align 8
  %11 = getelementptr inbounds %struct.clp_req_rsp_query_pci, %struct.clp_req_rsp_query_pci* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 24
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.clp_req_rsp_query_pci*, %struct.clp_req_rsp_query_pci** %5, align 8
  %19 = getelementptr inbounds %struct.clp_req_rsp_query_pci, %struct.clp_req_rsp_query_pci* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %54

28:                                               ; preds = %17
  %29 = load %struct.clp_req_rsp_query_pci*, %struct.clp_req_rsp_query_pci** %5, align 8
  %30 = getelementptr inbounds %struct.clp_req_rsp_query_pci, %struct.clp_req_rsp_query_pci* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.clp_req_rsp_query_pci*, %struct.clp_req_rsp_query_pci** %5, align 8
  %36 = getelementptr inbounds %struct.clp_req_rsp_query_pci, %struct.clp_req_rsp_query_pci* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %28
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %54

43:                                               ; preds = %34
  %44 = load %struct.clp_req_rsp_query_pci*, %struct.clp_req_rsp_query_pci** %5, align 8
  %45 = load i32, i32* @CLP_LPS_PCI, align 4
  %46 = call i64 @clp_req(%struct.clp_req_rsp_query_pci* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  br label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %40, %25
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @clp_req(%struct.clp_req_rsp_query_pci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
