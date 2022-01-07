; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci.c_pnv_pci_set_tunnel_bar.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci.c_pnv_pci_set_tunnel_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_controller = type { %struct.pnv_phb* }
%struct.pnv_phb = type { i32 }

@OPAL_PCI_GET_PBCQ_TUNNEL_BAR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@OPAL_PCI_SET_PBCQ_TUNNEL_BAR = common dso_local global i32 0, align 4
@tunnel_mutex = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnv_pci_set_tunnel_bar(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_controller*, align 8
  %10 = alloca %struct.pnv_phb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @OPAL_PCI_GET_PBCQ_TUNNEL_BAR, align 4
  %14 = call i32 @opal_check_token(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %82

19:                                               ; preds = %3
  %20 = load i32, i32* @OPAL_PCI_SET_PBCQ_TUNNEL_BAR, align 4
  %21 = call i32 @opal_check_token(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %82

26:                                               ; preds = %19
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.pci_controller* @pci_bus_to_host(i32 %29)
  store %struct.pci_controller* %30, %struct.pci_controller** %9, align 8
  %31 = load %struct.pci_controller*, %struct.pci_controller** %9, align 8
  %32 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %31, i32 0, i32 0
  %33 = load %struct.pnv_phb*, %struct.pnv_phb** %32, align 8
  store %struct.pnv_phb* %33, %struct.pnv_phb** %10, align 8
  %34 = call i32 @mutex_lock(i32* @tunnel_mutex)
  %35 = load %struct.pnv_phb*, %struct.pnv_phb** %10, align 8
  %36 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @opal_pci_get_pbcq_tunnel_bar(i32 %37, i32* %8)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @OPAL_SUCCESS, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %79

45:                                               ; preds = %26
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @be64_to_cpu(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %61

60:                                               ; preds = %53
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %60, %57
  br label %79

62:                                               ; preds = %50
  br label %71

63:                                               ; preds = %45
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EPERM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  br label %79

70:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %62
  %72 = load %struct.pnv_phb*, %struct.pnv_phb** %10, align 8
  %73 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @opal_pci_set_pbcq_tunnel_bar(i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @opal_error_code(i32 %77)
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %71, %67, %61, %42
  %80 = call i32 @mutex_unlock(i32* @tunnel_mutex)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %23, %16
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @opal_check_token(i32) #1

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @opal_pci_get_pbcq_tunnel_bar(i32, i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @opal_pci_set_pbcq_tunnel_bar(i32, i32) #1

declare dso_local i32 @opal_error_code(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
