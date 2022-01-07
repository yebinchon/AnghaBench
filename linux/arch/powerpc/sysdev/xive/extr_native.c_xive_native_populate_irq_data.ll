; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_populate_irq_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_populate_irq_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_irq_data = type { i32, i8*, i8*, i8*, i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"opal_xive_get_irq_info(0x%x) returned %lld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OPAL_XIVE_IRQ_STORE_EOI = common dso_local global i32 0, align 4
@XIVE_IRQ_FLAG_STORE_EOI = common dso_local global i32 0, align 4
@OPAL_XIVE_IRQ_LSI = common dso_local global i32 0, align 4
@XIVE_IRQ_FLAG_LSI = common dso_local global i32 0, align 4
@OPAL_XIVE_IRQ_SHIFT_BUG = common dso_local global i32 0, align 4
@XIVE_IRQ_FLAG_SHIFT_BUG = common dso_local global i32 0, align 4
@OPAL_XIVE_IRQ_MASK_VIA_FW = common dso_local global i32 0, align 4
@XIVE_IRQ_FLAG_MASK_FW = common dso_local global i32 0, align 4
@OPAL_XIVE_IRQ_EOI_VIA_FW = common dso_local global i32 0, align 4
@XIVE_IRQ_FLAG_EOI_FW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to map EOI page for irq 0x%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to map trigger page for irq 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xive_native_populate_irq_data(i32 %0, %struct.xive_irq_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xive_irq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.xive_irq_data* %1, %struct.xive_irq_data** %5, align 8
  %13 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %14 = call i32 @memset(%struct.xive_irq_data* %13, i32 0, i32 64)
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @opal_xive_get_irq_info(i32 %15, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* %12, align 8
  %22 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %164

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @be64_to_cpu(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @OPAL_XIVE_IRQ_STORE_EOI, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i32, i32* @XIVE_IRQ_FLAG_STORE_EOI, align 4
  %35 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %36 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %25
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @OPAL_XIVE_IRQ_LSI, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @XIVE_IRQ_FLAG_LSI, align 4
  %46 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %47 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @OPAL_XIVE_IRQ_SHIFT_BUG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* @XIVE_IRQ_FLAG_SHIFT_BUG, align 4
  %57 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %58 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @OPAL_XIVE_IRQ_MASK_VIA_FW, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @XIVE_IRQ_FLAG_MASK_FW, align 4
  %68 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %69 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %61
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @OPAL_XIVE_IRQ_EOI_VIA_FW, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @XIVE_IRQ_FLAG_EOI_FW, align 4
  %79 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %80 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %72
  %84 = load i32, i32* %7, align 4
  %85 = call i8* @be64_to_cpu(i32 %84)
  %86 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %87 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i8* @be64_to_cpu(i32 %88)
  %90 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %91 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i8* @be32_to_cpu(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %96 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i8* @be32_to_cpu(i32 %97)
  %99 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %100 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %99, i32 0, i32 6
  store i8* %98, i8** %100, align 8
  %101 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %102 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %101, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %105 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = shl i32 1, %106
  %108 = call i8* @ioremap(i8* %103, i32 %107)
  %109 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %110 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %112 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %83
  %116 = load i32, i32* %4, align 4
  %117 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %164

120:                                              ; preds = %83
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %123 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 8
  %124 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %125 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %164

129:                                              ; preds = %120
  %130 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %131 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %134 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %133, i32 0, i32 4
  %135 = load i8*, i8** %134, align 8
  %136 = icmp eq i8* %132, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %129
  %138 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %139 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %138, i32 0, i32 3
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %142 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  store i32 0, i32* %3, align 4
  br label %164

143:                                              ; preds = %129
  %144 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %145 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %148 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = shl i32 1, %149
  %151 = call i8* @ioremap(i8* %146, i32 %150)
  %152 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %153 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %155 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %143
  %159 = load i32, i32* %4, align 4
  %160 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %164

163:                                              ; preds = %143
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %158, %137, %128, %115, %19
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @memset(%struct.xive_irq_data*, i32, i32) #1

declare dso_local i64 @opal_xive_get_irq_info(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @ioremap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
