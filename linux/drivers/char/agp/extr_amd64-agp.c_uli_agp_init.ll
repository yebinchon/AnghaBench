; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_uli_agp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_uli_agp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.pci_dev* }

@.str = private unnamed_addr constant [20 x i8] c"setting up ULi AGP\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"can't find ULi secondary device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@uli_sizes = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"no ULi size found for %d\0A\00", align 1
@AMD64_GARTAPERTUREBASE = common dso_local global i32 0, align 4
@ULI_X86_64_BASE_ADDR = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i32 0, align 4
@ULI_X86_64_HTT_FEA_REG = common dso_local global i32 0, align 4
@ULI_X86_64_ENU_SCR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @uli_agp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uli_agp_init(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %11 = call i32 (...) @amd64_fetch_size()
  store i32 %11, i32* %10, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = call i32 (i32*, i8*, ...) @dev_info(i32* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %19 = call %struct.pci_dev* @pci_get_slot(i32 %17, i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %7, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %21 = icmp eq %struct.pci_dev* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 (i32*, i8*, ...) @dev_info(i32* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %109

28:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uli_sizes, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uli_sizes, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %48

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %29

48:                                               ; preds = %43, %29
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uli_sizes, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %50)
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i32*, i8*, ...) @dev_info(i32* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %105

60:                                               ; preds = %48
  %61 = call %struct.TYPE_5__* @node_to_amd_nb(i32 0)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.pci_dev*, %struct.pci_dev** %62, align 8
  %64 = load i32, i32* @AMD64_GARTAPERTUREBASE, align 4
  %65 = call i32 @pci_read_config_dword(%struct.pci_dev* %63, i32 %64, i32* %4)
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 32767
  %68 = ashr i32 %67, 7
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %105

73:                                               ; preds = %60
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 32767
  %76 = shl i32 %75, 25
  store i32 %76, i32* %4, align 4
  %77 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %78 = load i32, i32* @ULI_X86_64_BASE_ADDR, align 4
  %79 = call i32 @pci_read_config_dword(%struct.pci_dev* %77, i32 %78, i32* %5)
  %80 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %88 = load i32, i32* @ULI_X86_64_BASE_ADDR, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @pci_write_config_dword(%struct.pci_dev* %87, i32 %88, i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %10, align 4
  %93 = mul i32 %92, 1024
  %94 = mul i32 %93, 1024
  %95 = add i32 %91, %94
  %96 = sub i32 %95, 1
  store i32 %96, i32* %6, align 4
  %97 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %98 = load i32, i32* @ULI_X86_64_HTT_FEA_REG, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @pci_write_config_dword(%struct.pci_dev* %97, i32 %98, i32 %99)
  %101 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %102 = load i32, i32* @ULI_X86_64_ENU_SCR_REG, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @pci_write_config_dword(%struct.pci_dev* %101, i32 %102, i32 %103)
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %73, %70, %53
  %106 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %107 = call i32 @pci_dev_put(%struct.pci_dev* %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %22
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @amd64_fetch_size(...) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @node_to_amd_nb(i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
