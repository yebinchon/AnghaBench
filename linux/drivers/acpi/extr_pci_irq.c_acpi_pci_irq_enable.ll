; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32, i32 }
%struct.acpi_prt_entry = type { i32, i64 }

@ACPI_LEVEL_SENSITIVE = common dso_local global i32 0, align 4
@acpi_irq_model = common dso_local global i64 0, align 8
@ACPI_IRQ_MODEL_GIC = common dso_local global i64 0, align 8
@ACPI_ACTIVE_HIGH = common dso_local global i32 0, align 4
@ACPI_ACTIVE_LOW = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No interrupt pin configured for device %s\0A\00", align 1
@PCI_CLASS_STORAGE_IDE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"PCI INT %c: no GSI\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"PCI INT %c: failed to register GSI\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" -> Link[%s]\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"PCI INT %c%s -> GSI %u (%s, %s) -> IRQ %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"high\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_pci_irq_enable(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.acpi_prt_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %12 = load i32, i32* @ACPI_LEVEL_SENSITIVE, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* @acpi_irq_model, align 8
  %14 = load i64, i64* @ACPI_IRQ_MODEL_GIC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ACPI_ACTIVE_HIGH, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ACPI_ACTIVE_LOW, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ACPI_DB_INFO, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = call i32 @pci_name(%struct.pci_dev* %29)
  %31 = call i32 @ACPI_DEBUG_PRINT(i32 %30)
  store i32 0, i32* %2, align 4
  br label %165

32:                                               ; preds = %20
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %165

43:                                               ; preds = %37, %32
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call %struct.acpi_prt_entry* @acpi_pci_irq_lookup(%struct.pci_dev* %44, i32 %45)
  store %struct.acpi_prt_entry* %46, %struct.acpi_prt_entry** %4, align 8
  %47 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %48 = icmp ne %struct.acpi_prt_entry* %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %43
  %50 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 8
  %54 = load i32, i32* @PCI_CLASS_STORAGE_IDE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %165

63:                                               ; preds = %56, %49
  br label %64

64:                                               ; preds = %63, %43
  %65 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %66 = icmp ne %struct.acpi_prt_entry* %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %69 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %74 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %77 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @acpi_pci_link_allocate_irq(i64 %75, i32 %78, i32* %7, i32* %8, i8** %9)
  store i32 %79, i32* %5, align 4
  br label %84

80:                                               ; preds = %67
  %81 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %82 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %72
  br label %86

85:                                               ; preds = %64
  store i32 -1, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %84
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %86
  %90 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @acpi_pci_irq_valid(%struct.pci_dev* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %96 = call i32 @kfree(%struct.acpi_prt_entry* %95)
  store i32 0, i32* %2, align 4
  br label %165

97:                                               ; preds = %89
  %98 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %99 = call i64 @acpi_isa_register_gsi(%struct.pci_dev* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 3
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @pin_name(i32 %104)
  %106 = call i32 @dev_warn(i32* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %101, %97
  %108 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %109 = call i32 @kfree(%struct.acpi_prt_entry* %108)
  store i32 0, i32* %2, align 4
  br label %165

110:                                              ; preds = %86
  %111 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 3
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @acpi_register_gsi(i32* %112, i32 %113, i32 %114, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %110
  %120 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 3
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @pin_name(i32 %122)
  %124 = call i32 @dev_warn(i32* %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %126 = call i32 @kfree(%struct.acpi_prt_entry* %125)
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %2, align 4
  br label %165

128:                                              ; preds = %110
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %131 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %133 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %132, i32 0, i32 0
  store i32 1, i32* %133, align 4
  %134 = load i8*, i8** %9, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %128
  %137 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %138 = load i8*, i8** %9, align 8
  %139 = call i32 @snprintf(i8* %137, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %138)
  br label %142

140:                                              ; preds = %128
  %141 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %141, align 16
  br label %142

142:                                              ; preds = %140, %136
  %143 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %144 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %143, i32 0, i32 3
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @pin_name(i32 %145)
  %147 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @ACPI_LEVEL_SENSITIVE, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @ACPI_ACTIVE_LOW, align 4
  %156 = icmp eq i32 %154, %155
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %159 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %160 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @dev_dbg(i32* %144, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %146, i8* %147, i32 %148, i8* %153, i8* %158, i32 %161)
  %163 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %164 = call i32 @kfree(%struct.acpi_prt_entry* %163)
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %142, %119, %107, %94, %62, %42, %27
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.acpi_prt_entry* @acpi_pci_irq_lookup(%struct.pci_dev*, i32) #1

declare dso_local i32 @acpi_pci_link_allocate_irq(i64, i32, i32*, i32*, i8**) #1

declare dso_local i32 @acpi_pci_irq_valid(%struct.pci_dev*, i32) #1

declare dso_local i32 @kfree(%struct.acpi_prt_entry*) #1

declare dso_local i64 @acpi_isa_register_gsi(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pin_name(i32) #1

declare dso_local i32 @acpi_register_gsi(i32*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
