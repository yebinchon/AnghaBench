; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ip32.c_macepci_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ip32.c_macepci_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@mace = common dso_local global %struct.TYPE_4__* null, align 8
@MACEPCI_ERROR_MEMORY_ADDR = common dso_local global i32 0, align 4
@MACEPCI_ERROR_CONFIG_ADDR = common dso_local global i32 0, align 4
@MACEPCI_ERROR_MASTER_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"MACEPCI: Master abort at 0x%08x (%c)\0A\00", align 1
@MACEPCI_ERROR_TARGET_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"MACEPCI: Target abort at 0x%08x (%c)\0A\00", align 1
@MACEPCI_ERROR_DATA_PARITY_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"MACEPCI: Data parity error at 0x%08x (%c)\0A\00", align 1
@MACEPCI_ERROR_RETRY_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"MACEPCI: Retry error at 0x%08x (%c)\0A\00", align 1
@MACEPCI_ERROR_ILLEGAL_CMD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"MACEPCI: Illegal command at 0x%08x (%c)\0A\00", align 1
@MACEPCI_ERROR_SYSTEM_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"MACEPCI: System error at 0x%08x (%c)\0A\00", align 1
@MACEPCI_ERROR_PARITY_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"MACEPCI: Parity error at 0x%08x (%c)\0A\00", align 1
@MACEPCI_ERROR_OVERRUN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"MACEPCI: Overrun error at 0x%08x (%c)\0A\00", align 1
@MACEPCI_ERROR_SIG_TABORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"MACEPCI: Signaled target abort (clearing)\0A\00", align 1
@MACEPCI_ERROR_INTERRUPT_TEST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"MACEPCI: Interrupt test triggered (clearing)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @macepci_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macepci_error(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mace, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mace, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MACEPCI_ERROR_MEMORY_ADDR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i8 77, i8* %5, align 1
  br label %29

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MACEPCI_ERROR_CONFIG_ADDR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i8 67, i8* %5, align 1
  br label %28

27:                                               ; preds = %21
  store i8 88, i8* %5, align 1
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MACEPCI_ERROR_MASTER_ABORT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = load i8, i8* %5, align 1
  %37 = sext i8 %36 to i32
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37)
  %39 = load i32, i32* @MACEPCI_ERROR_MASTER_ABORT, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %34, %29
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MACEPCI_ERROR_TARGET_ABORT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = load i8, i8* %5, align 1
  %51 = sext i8 %50 to i32
  %52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %51)
  %53 = load i32, i32* @MACEPCI_ERROR_TARGET_ABORT, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %48, %43
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @MACEPCI_ERROR_DATA_PARITY_ERR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = load i8, i8* %5, align 1
  %65 = sext i8 %64 to i32
  %66 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %65)
  %67 = load i32, i32* @MACEPCI_ERROR_DATA_PARITY_ERR, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %62, %57
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @MACEPCI_ERROR_RETRY_ERR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = load i8, i8* %5, align 1
  %79 = sext i8 %78 to i32
  %80 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %79)
  %81 = load i32, i32* @MACEPCI_ERROR_RETRY_ERR, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %76, %71
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @MACEPCI_ERROR_ILLEGAL_CMD, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i32, i32* %7, align 4
  %92 = load i8, i8* %5, align 1
  %93 = sext i8 %92 to i32
  %94 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %93)
  %95 = load i32, i32* @MACEPCI_ERROR_ILLEGAL_CMD, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %90, %85
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @MACEPCI_ERROR_SYSTEM_ERR, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load i32, i32* %7, align 4
  %106 = load i8, i8* %5, align 1
  %107 = sext i8 %106 to i32
  %108 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %105, i32 %107)
  %109 = load i32, i32* @MACEPCI_ERROR_SYSTEM_ERR, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %6, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %104, %99
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @MACEPCI_ERROR_PARITY_ERR, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load i32, i32* %7, align 4
  %120 = load i8, i8* %5, align 1
  %121 = sext i8 %120 to i32
  %122 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %119, i32 %121)
  %123 = load i32, i32* @MACEPCI_ERROR_PARITY_ERR, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %118, %113
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @MACEPCI_ERROR_OVERRUN, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load i32, i32* %7, align 4
  %134 = load i8, i8* %5, align 1
  %135 = sext i8 %134 to i32
  %136 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %133, i32 %135)
  %137 = load i32, i32* @MACEPCI_ERROR_OVERRUN, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %6, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %132, %127
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @MACEPCI_ERROR_SIG_TABORT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %148 = load i32, i32* @MACEPCI_ERROR_SIG_TABORT, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %6, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %146, %141
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @MACEPCI_ERROR_INTERRUPT_TEST, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  %159 = load i32, i32* @MACEPCI_ERROR_INTERRUPT_TEST, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %6, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %157, %152
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mace, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 4
  %168 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %168
}

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
