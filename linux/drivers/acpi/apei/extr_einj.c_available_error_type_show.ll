; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_einj.c_available_error_type_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_einj.c_available_error_type_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"0x00000001\09Processor Correctable\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"0x00000002\09Processor Uncorrectable non-fatal\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"0x00000004\09Processor Uncorrectable fatal\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"0x00000008\09Memory Correctable\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"0x00000010\09Memory Uncorrectable non-fatal\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"0x00000020\09Memory Uncorrectable fatal\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"0x00000040\09PCI Express Correctable\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"0x00000080\09PCI Express Uncorrectable non-fatal\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"0x00000100\09PCI Express Uncorrectable fatal\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"0x00000200\09Platform Correctable\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"0x00000400\09Platform Uncorrectable non-fatal\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"0x00000800\09Platform Uncorrectable fatal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @available_error_type_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @available_error_type_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @einj_get_available_error_type(i32* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %98

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = call i32 @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = call i32 @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 16
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %47 = call i32 @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %54 = call i32 @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 64
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %61 = call i32 @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 128
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %68 = call i32 @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 256
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %75 = call i32 @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 512
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %82 = call i32 @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, 1024
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %89 = call i32 @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, 2048
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %96 = call i32 @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %90
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %11
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @einj_get_available_error_type(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
