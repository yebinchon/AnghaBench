; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_pci_query_grp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_pci_query_grp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clp_req = type { i32 }
%struct.clp_req_rsp_query_pci_grp = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLP_LPS_PCI = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clp_req*, %struct.clp_req_rsp_query_pci_grp*)* @clp_pci_query_grp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clp_pci_query_grp(%struct.clp_req* %0, %struct.clp_req_rsp_query_pci_grp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clp_req*, align 8
  %5 = alloca %struct.clp_req_rsp_query_pci_grp*, align 8
  %6 = alloca i64, align 8
  store %struct.clp_req* %0, %struct.clp_req** %4, align 8
  store %struct.clp_req_rsp_query_pci_grp* %1, %struct.clp_req_rsp_query_pci_grp** %5, align 8
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = sext i32 %7 to i64
  %9 = sub i64 %8, 32
  store i64 %9, i64* %6, align 8
  %10 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %5, align 8
  %11 = getelementptr inbounds %struct.clp_req_rsp_query_pci_grp, %struct.clp_req_rsp_query_pci_grp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 32
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %5, align 8
  %19 = getelementptr inbounds %struct.clp_req_rsp_query_pci_grp, %struct.clp_req_rsp_query_pci_grp* %18, i32 0, i32 1
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
  br label %60

28:                                               ; preds = %17
  %29 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %5, align 8
  %30 = getelementptr inbounds %struct.clp_req_rsp_query_pci_grp, %struct.clp_req_rsp_query_pci_grp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %5, align 8
  %36 = getelementptr inbounds %struct.clp_req_rsp_query_pci_grp, %struct.clp_req_rsp_query_pci_grp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %5, align 8
  %42 = getelementptr inbounds %struct.clp_req_rsp_query_pci_grp, %struct.clp_req_rsp_query_pci_grp* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %34, %28
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %60

49:                                               ; preds = %40
  %50 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %5, align 8
  %51 = load i32, i32* @CLP_LPS_PCI, align 4
  %52 = call i64 @clp_req(%struct.clp_req_rsp_query_pci_grp* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  br label %58

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i32 [ %56, %54 ], [ 0, %57 ]
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %46, %25
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @clp_req(%struct.clp_req_rsp_query_pci_grp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
