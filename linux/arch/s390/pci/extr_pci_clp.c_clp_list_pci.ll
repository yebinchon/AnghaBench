; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_list_pci.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_list_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clp_req_rsp_list_pci = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.clp_fh_list_entry*, i64, %struct.TYPE_7__, i32 }
%struct.clp_fh_list_entry = type { i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@CLP_LIST_PCI = common dso_local global i32 0, align 4
@CLP_BLK_SIZE = common dso_local global i32 0, align 4
@LIST_PCI_HDR_LEN = common dso_local global i32 0, align 4
@CLP_LPS_PCI = common dso_local global i32 0, align 4
@CLP_RC_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"List PCI FN:\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clp_req_rsp_list_pci*, i8*, void (%struct.clp_fh_list_entry*, i8*)*)* @clp_list_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clp_list_pci(%struct.clp_req_rsp_list_pci* %0, i8* %1, void (%struct.clp_fh_list_entry*, i8*)* %2) #0 {
  %4 = alloca %struct.clp_req_rsp_list_pci*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (%struct.clp_fh_list_entry*, i8*)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clp_req_rsp_list_pci* %0, %struct.clp_req_rsp_list_pci** %4, align 8
  store i8* %1, i8** %5, align 8
  store void (%struct.clp_fh_list_entry*, i8*)* %2, void (%struct.clp_fh_list_entry*, i8*)** %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %106, %3
  %12 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %4, align 8
  %13 = call i32 @memset(%struct.clp_req_rsp_list_pci* %12, i32 0, i32 64)
  %14 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %4, align 8
  %15 = getelementptr inbounds %struct.clp_req_rsp_list_pci, %struct.clp_req_rsp_list_pci* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 16, i32* %17, align 8
  %18 = load i32, i32* @CLP_LIST_PCI, align 4
  %19 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %4, align 8
  %20 = getelementptr inbounds %struct.clp_req_rsp_list_pci, %struct.clp_req_rsp_list_pci* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @CLP_BLK_SIZE, align 4
  %24 = load i32, i32* @LIST_PCI_HDR_LEN, align 4
  %25 = sub nsw i32 %23, %24
  %26 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %4, align 8
  %27 = getelementptr inbounds %struct.clp_req_rsp_list_pci, %struct.clp_req_rsp_list_pci* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %4, align 8
  %32 = getelementptr inbounds %struct.clp_req_rsp_list_pci, %struct.clp_req_rsp_list_pci* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %4, align 8
  %35 = load i32, i32* @CLP_LPS_PCI, align 4
  %36 = call i32 @clp_req(%struct.clp_req_rsp_list_pci* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %11
  %40 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %4, align 8
  %41 = getelementptr inbounds %struct.clp_req_rsp_list_pci, %struct.clp_req_rsp_list_pci* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CLP_RC_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %39, %11
  %48 = call i32 @zpci_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %4, align 8
  %50 = getelementptr inbounds %struct.clp_req_rsp_list_pci, %struct.clp_req_rsp_list_pci* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @zpci_err_clp(i64 %53, i32 %54)
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %110

58:                                               ; preds = %39
  %59 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %4, align 8
  %60 = getelementptr inbounds %struct.clp_req_rsp_list_pci, %struct.clp_req_rsp_list_pci* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @update_uid_checking(i32 %62)
  %64 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %4, align 8
  %65 = getelementptr inbounds %struct.clp_req_rsp_list_pci, %struct.clp_req_rsp_list_pci* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 4
  %70 = zext i1 %69 to i32
  %71 = call i32 @WARN_ON_ONCE(i32 %70)
  %72 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %4, align 8
  %73 = getelementptr inbounds %struct.clp_req_rsp_list_pci, %struct.clp_req_rsp_list_pci* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @LIST_PCI_HDR_LEN, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %4, align 8
  %80 = getelementptr inbounds %struct.clp_req_rsp_list_pci, %struct.clp_req_rsp_list_pci* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %78, %82
  store i32 %83, i32* %8, align 4
  %84 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %4, align 8
  %85 = getelementptr inbounds %struct.clp_req_rsp_list_pci, %struct.clp_req_rsp_list_pci* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %102, %58
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load void (%struct.clp_fh_list_entry*, i8*)*, void (%struct.clp_fh_list_entry*, i8*)** %6, align 8
  %94 = load %struct.clp_req_rsp_list_pci*, %struct.clp_req_rsp_list_pci** %4, align 8
  %95 = getelementptr inbounds %struct.clp_req_rsp_list_pci, %struct.clp_req_rsp_list_pci* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load %struct.clp_fh_list_entry*, %struct.clp_fh_list_entry** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.clp_fh_list_entry, %struct.clp_fh_list_entry* %97, i64 %99
  %101 = load i8*, i8** %5, align 8
  call void %93(%struct.clp_fh_list_entry* %100, i8* %101)
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %88

105:                                              ; preds = %88
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %7, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %11, label %109

109:                                              ; preds = %106
  br label %110

110:                                              ; preds = %109, %47
  %111 = load i32, i32* %10, align 4
  ret i32 %111
}

declare dso_local i32 @memset(%struct.clp_req_rsp_list_pci*, i32, i32) #1

declare dso_local i32 @clp_req(%struct.clp_req_rsp_list_pci*, i32) #1

declare dso_local i32 @zpci_err(i8*) #1

declare dso_local i32 @zpci_err_clp(i64, i32) #1

declare dso_local i32 @update_uid_checking(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
