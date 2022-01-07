; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_set_pci_fn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_set_pci_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clp_req_rsp_set_pci = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLP_SET_PCI_FN = common dso_local global i32 0, align 4
@CLP_LPS_PCI = common dso_local global i32 0, align 4
@CLP_RC_SETPCIFN_BUSY = common dso_local global i64 0, align 8
@CLP_RC_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Set PCI FN:\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @clp_set_pci_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clp_set_pci_fn(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.clp_req_rsp_set_pci*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 100, i32* %10, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.clp_req_rsp_set_pci* @clp_alloc_block(i32 %11)
  store %struct.clp_req_rsp_set_pci* %12, %struct.clp_req_rsp_set_pci** %8, align 8
  %13 = load %struct.clp_req_rsp_set_pci*, %struct.clp_req_rsp_set_pci** %8, align 8
  %14 = icmp ne %struct.clp_req_rsp_set_pci* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %107

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %67, %18
  %20 = load %struct.clp_req_rsp_set_pci*, %struct.clp_req_rsp_set_pci** %8, align 8
  %21 = call i32 @memset(%struct.clp_req_rsp_set_pci* %20, i32 0, i32 56)
  %22 = load %struct.clp_req_rsp_set_pci*, %struct.clp_req_rsp_set_pci** %8, align 8
  %23 = getelementptr inbounds %struct.clp_req_rsp_set_pci, %struct.clp_req_rsp_set_pci* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 32, i32* %25, align 4
  %26 = load i32, i32* @CLP_SET_PCI_FN, align 4
  %27 = load %struct.clp_req_rsp_set_pci*, %struct.clp_req_rsp_set_pci** %8, align 8
  %28 = getelementptr inbounds %struct.clp_req_rsp_set_pci, %struct.clp_req_rsp_set_pci* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load %struct.clp_req_rsp_set_pci*, %struct.clp_req_rsp_set_pci** %8, align 8
  %32 = getelementptr inbounds %struct.clp_req_rsp_set_pci, %struct.clp_req_rsp_set_pci* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 24, i32* %34, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.clp_req_rsp_set_pci*, %struct.clp_req_rsp_set_pci** %8, align 8
  %38 = getelementptr inbounds %struct.clp_req_rsp_set_pci, %struct.clp_req_rsp_set_pci* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.clp_req_rsp_set_pci*, %struct.clp_req_rsp_set_pci** %8, align 8
  %42 = getelementptr inbounds %struct.clp_req_rsp_set_pci, %struct.clp_req_rsp_set_pci* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.clp_req_rsp_set_pci*, %struct.clp_req_rsp_set_pci** %8, align 8
  %46 = getelementptr inbounds %struct.clp_req_rsp_set_pci, %struct.clp_req_rsp_set_pci* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load %struct.clp_req_rsp_set_pci*, %struct.clp_req_rsp_set_pci** %8, align 8
  %49 = load i32, i32* @CLP_LPS_PCI, align 4
  %50 = call i32 @clp_req(%struct.clp_req_rsp_set_pci* %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.clp_req_rsp_set_pci*, %struct.clp_req_rsp_set_pci** %8, align 8
  %52 = getelementptr inbounds %struct.clp_req_rsp_set_pci, %struct.clp_req_rsp_set_pci* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CLP_RC_SETPCIFN_BUSY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %19
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %75

64:                                               ; preds = %58
  %65 = call i32 @msleep(i32 20)
  br label %66

66:                                               ; preds = %64, %19
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.clp_req_rsp_set_pci*, %struct.clp_req_rsp_set_pci** %8, align 8
  %69 = getelementptr inbounds %struct.clp_req_rsp_set_pci, %struct.clp_req_rsp_set_pci* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CLP_RC_SETPCIFN_BUSY, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %19, label %75

75:                                               ; preds = %67, %63
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = load %struct.clp_req_rsp_set_pci*, %struct.clp_req_rsp_set_pci** %8, align 8
  %80 = getelementptr inbounds %struct.clp_req_rsp_set_pci, %struct.clp_req_rsp_set_pci* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CLP_RC_OK, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load %struct.clp_req_rsp_set_pci*, %struct.clp_req_rsp_set_pci** %8, align 8
  %88 = getelementptr inbounds %struct.clp_req_rsp_set_pci, %struct.clp_req_rsp_set_pci* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %5, align 8
  store i32 %90, i32* %91, align 4
  br label %103

92:                                               ; preds = %78, %75
  %93 = call i32 @zpci_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.clp_req_rsp_set_pci*, %struct.clp_req_rsp_set_pci** %8, align 8
  %95 = getelementptr inbounds %struct.clp_req_rsp_set_pci, %struct.clp_req_rsp_set_pci* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @zpci_err_clp(i64 %98, i32 %99)
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %92, %86
  %104 = load %struct.clp_req_rsp_set_pci*, %struct.clp_req_rsp_set_pci** %8, align 8
  %105 = call i32 @clp_free_block(%struct.clp_req_rsp_set_pci* %104)
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %103, %15
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.clp_req_rsp_set_pci* @clp_alloc_block(i32) #1

declare dso_local i32 @memset(%struct.clp_req_rsp_set_pci*, i32, i32) #1

declare dso_local i32 @clp_req(%struct.clp_req_rsp_set_pci*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @zpci_err(i8*) #1

declare dso_local i32 @zpci_err_clp(i64, i32) #1

declare dso_local i32 @clp_free_block(%struct.clp_req_rsp_set_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
