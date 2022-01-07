; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_query_pci_fngrp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_query_pci_fngrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32 }
%struct.clp_req_rsp_query_pci_grp = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLP_QUERY_PCI_FNGRP = common dso_local global i32 0, align 4
@CLP_LPS_PCI = common dso_local global i32 0, align 4
@CLP_RC_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Q PCI FGRP:\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zpci_dev*, i32)* @clp_query_pci_fngrp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clp_query_pci_fngrp(%struct.zpci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zpci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clp_req_rsp_query_pci_grp*, align 8
  %7 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.clp_req_rsp_query_pci_grp* @clp_alloc_block(i32 %8)
  store %struct.clp_req_rsp_query_pci_grp* %9, %struct.clp_req_rsp_query_pci_grp** %6, align 8
  %10 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %6, align 8
  %11 = icmp ne %struct.clp_req_rsp_query_pci_grp* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %68

15:                                               ; preds = %2
  %16 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %6, align 8
  %17 = call i32 @memset(%struct.clp_req_rsp_query_pci_grp* %16, i32 0, i32 32)
  %18 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %6, align 8
  %19 = getelementptr inbounds %struct.clp_req_rsp_query_pci_grp, %struct.clp_req_rsp_query_pci_grp* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 12, i32* %21, align 4
  %22 = load i32, i32* @CLP_QUERY_PCI_FNGRP, align 4
  %23 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %6, align 8
  %24 = getelementptr inbounds %struct.clp_req_rsp_query_pci_grp, %struct.clp_req_rsp_query_pci_grp* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %6, align 8
  %28 = getelementptr inbounds %struct.clp_req_rsp_query_pci_grp, %struct.clp_req_rsp_query_pci_grp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 16, i32* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %6, align 8
  %33 = getelementptr inbounds %struct.clp_req_rsp_query_pci_grp, %struct.clp_req_rsp_query_pci_grp* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %6, align 8
  %36 = load i32, i32* @CLP_LPS_PCI, align 4
  %37 = call i32 @clp_req(%struct.clp_req_rsp_query_pci_grp* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %15
  %41 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %6, align 8
  %42 = getelementptr inbounds %struct.clp_req_rsp_query_pci_grp, %struct.clp_req_rsp_query_pci_grp* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CLP_RC_OK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.zpci_dev*, %struct.zpci_dev** %4, align 8
  %50 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %6, align 8
  %51 = getelementptr inbounds %struct.clp_req_rsp_query_pci_grp, %struct.clp_req_rsp_query_pci_grp* %50, i32 0, i32 0
  %52 = call i32 @clp_store_query_pci_fngrp(%struct.zpci_dev* %49, %struct.TYPE_8__* %51)
  br label %64

53:                                               ; preds = %40, %15
  %54 = call i32 @zpci_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %6, align 8
  %56 = getelementptr inbounds %struct.clp_req_rsp_query_pci_grp, %struct.clp_req_rsp_query_pci_grp* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @zpci_err_clp(i64 %59, i32 %60)
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %53, %48
  %65 = load %struct.clp_req_rsp_query_pci_grp*, %struct.clp_req_rsp_query_pci_grp** %6, align 8
  %66 = call i32 @clp_free_block(%struct.clp_req_rsp_query_pci_grp* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.clp_req_rsp_query_pci_grp* @clp_alloc_block(i32) #1

declare dso_local i32 @memset(%struct.clp_req_rsp_query_pci_grp*, i32, i32) #1

declare dso_local i32 @clp_req(%struct.clp_req_rsp_query_pci_grp*, i32) #1

declare dso_local i32 @clp_store_query_pci_fngrp(%struct.zpci_dev*, %struct.TYPE_8__*) #1

declare dso_local i32 @zpci_err(i8*) #1

declare dso_local i32 @zpci_err_clp(i64, i32) #1

declare dso_local i32 @clp_free_block(%struct.clp_req_rsp_query_pci_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
