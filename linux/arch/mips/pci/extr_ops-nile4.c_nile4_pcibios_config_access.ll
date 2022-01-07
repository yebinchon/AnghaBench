; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-nile4.c_nile4_pcibios_config_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-nile4.c_nile4_pcibios_config_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i8 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCI_ACCESS_WRITE = common dso_local global i8 0, align 1
@vrc_pciregs = common dso_local global i32* null, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@NILE4_PCIINIT1 = common dso_local global i32 0, align 4
@NILE4_PCIERR = common dso_local global i32 0, align 4
@PCI_WINDOW1 = common dso_local global i32 0, align 4
@NILE4_PCICTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.pci_bus*, i32, i32, i32*)* @nile4_pcibios_config_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nile4_pcibios_config_access(i8 zeroext %0, %struct.pci_bus* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.pci_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8 %0, i8* %7, align 1
  store %struct.pci_bus* %1, %struct.pci_bus** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %17 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %12, align 1
  %19 = load i8, i8* %12, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @PCI_SLOT(i32 %23)
  %25 = icmp sgt i32 %24, 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %27, i32* %6, align 4
  br label %156

28:                                               ; preds = %22, %5
  %29 = load i8, i8* %12, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %32
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @PCI_ACCESS_WRITE, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** @vrc_pciregs, align 8
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 512, %46
  %48 = ashr i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  store i32 %44, i32* %50, align 4
  br label %60

51:                                               ; preds = %36
  %52 = load i32*, i32** @vrc_pciregs, align 8
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 512, %53
  %55 = ashr i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %11, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %51, %42
  %61 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %61, i32* %6, align 4
  br label %156

62:                                               ; preds = %32, %28
  %63 = load i32*, i32** @vrc_pciregs, align 8
  %64 = load i32, i32* @NILE4_PCIINIT1, align 4
  %65 = call i64 @LO(i32 %64)
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i8, i8* %12, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 512, i32 0
  %73 = or i32 26, %72
  %74 = load i32*, i32** @vrc_pciregs, align 8
  %75 = load i32, i32* @NILE4_PCIINIT1, align 4
  %76 = call i64 @LO(i32 %75)
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  %78 = load i32*, i32** @vrc_pciregs, align 8
  %79 = load i32, i32* @NILE4_PCIERR, align 4
  %80 = call i64 @LO(i32 %79)
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 0, i32* %81, align 4
  %82 = load i32*, i32** @vrc_pciregs, align 8
  %83 = load i32, i32* @NILE4_PCIERR, align 4
  %84 = call i64 @HI(i32 %83)
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 0, i32* %85, align 4
  %86 = load i8, i8* %12, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %62
  %90 = load i32, i32* @PCI_WINDOW1, align 4
  %91 = call zeroext i8 @KSEG1ADDR(i32 %90)
  %92 = zext i8 %91 to i32
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @PCI_SLOT(i32 %93)
  %95 = add nsw i32 %94, 15
  %96 = shl i32 1, %95
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @PCI_FUNC(i32 %97)
  %99 = shl i32 %98, 8
  %100 = or i32 %96, %99
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, -4
  %103 = or i32 %100, %102
  %104 = add nsw i32 %92, %103
  store i32 %104, i32* %13, align 4
  br label %119

105:                                              ; preds = %62
  %106 = load i32, i32* @PCI_WINDOW1, align 4
  %107 = call zeroext i8 @KSEG1ADDR(i32 %106)
  %108 = zext i8 %107 to i32
  %109 = load i8, i8* %12, align 1
  %110 = zext i8 %109 to i32
  %111 = shl i32 %110, 16
  %112 = or i32 %108, %111
  %113 = load i32, i32* %9, align 4
  %114 = shl i32 %113, 8
  %115 = or i32 %112, %114
  %116 = load i32, i32* %10, align 4
  %117 = and i32 %116, -4
  %118 = or i32 %115, %117
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %105, %89
  %120 = load i8, i8* %7, align 1
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* @PCI_ACCESS_WRITE, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i32*
  store i32 %127, i32* %130, align 4
  br label %137

131:                                              ; preds = %119
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %11, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %131, %125
  %138 = load i32*, i32** @vrc_pciregs, align 8
  %139 = load i32, i32* @NILE4_PCICTRL, align 4
  %140 = call i64 @HI(i32 %139)
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, 5
  %144 = and i32 %143, 7
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32*, i32** @vrc_pciregs, align 8
  %147 = load i32, i32* @NILE4_PCIINIT1, align 4
  %148 = call i64 @LO(i32 %147)
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %145, i32* %149, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %137
  %153 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %153, i32* %6, align 4
  br label %156

154:                                              ; preds = %137
  %155 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %154, %152, %60, %26
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i64 @LO(i32) #1

declare dso_local i64 @HI(i32) #1

declare dso_local zeroext i8 @KSEG1ADDR(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
