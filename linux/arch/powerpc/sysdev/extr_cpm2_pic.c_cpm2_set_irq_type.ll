; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_cpm2_pic.c_cpm2_set_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_cpm2_pic.c_cpm2_set_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.irq_data = type { i32 }

@CPM2_IRQ_PORTC15 = common dso_local global i32 0, align 4
@CPM2_IRQ_PORTC0 = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@CPM2_IRQ_EXT1 = common dso_local global i32 0, align 4
@CPM2_IRQ_EXT7 = common dso_local global i32 0, align 4
@IRQ_SET_MASK_OK_NOCOPY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cpm2_intctl = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"CPM2 PIC: sense type 0x%x not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @cpm2_set_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpm2_set_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = call i32 @irqd_to_hwirq(%struct.irq_data* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @CPM2_IRQ_PORTC15, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @CPM2_IRQ_PORTC0, align 4
  %18 = icmp ule i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %136

34:                                               ; preds = %29, %25
  br label %50

35:                                               ; preds = %15, %2
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %44 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %136

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @irqd_set_trigger_type(%struct.irq_data* %51, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %60 = load i32, i32* @handle_level_irq, align 4
  %61 = call i32 @irq_set_handler_locked(%struct.irq_data* %59, i32 %60)
  br label %66

62:                                               ; preds = %50
  %63 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %64 = load i32, i32* @handle_edge_irq, align 4
  %65 = call i32 @irq_set_handler_locked(%struct.irq_data* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @CPM2_IRQ_EXT1, align 4
  %69 = icmp uge i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @CPM2_IRQ_EXT7, align 4
  %73 = icmp ule i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @CPM2_IRQ_EXT1, align 4
  %77 = sub i32 %75, %76
  %78 = sub i32 14, %77
  store i32 %78, i32* %9, align 4
  br label %105

79:                                               ; preds = %70, %66
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @CPM2_IRQ_PORTC15, align 4
  %82 = icmp uge i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @CPM2_IRQ_PORTC0, align 4
  %86 = icmp ule i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32, i32* @CPM2_IRQ_PORTC0, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sub i32 %88, %89
  %91 = sub i32 31, %90
  store i32 %91, i32* %9, align 4
  br label %104

92:                                               ; preds = %83, %79
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @IRQ_SET_MASK_OK_NOCOPY, align 4
  br label %102

99:                                               ; preds = %92
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  br label %102

102:                                              ; preds = %99, %97
  %103 = phi i32 [ %98, %97 ], [ %101, %99 ]
  store i32 %103, i32* %3, align 4
  br label %141

104:                                              ; preds = %87
  br label %105

105:                                              ; preds = %104, %74
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpm2_intctl, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = call i32 @in_be32(i32* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %105
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %9, align 4
  %117 = shl i32 1, %116
  %118 = or i32 %115, %117
  store i32 %118, i32* %8, align 4
  br label %125

119:                                              ; preds = %105
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %9, align 4
  %122 = shl i32 1, %121
  %123 = xor i32 %122, -1
  %124 = and i32 %120, %123
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %119, %114
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpm2_intctl, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @out_be32(i32* %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %125
  %135 = load i32, i32* @IRQ_SET_MASK_OK_NOCOPY, align 4
  store i32 %135, i32* %3, align 4
  br label %141

136:                                              ; preds = %48, %33
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %136, %134, %102
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @irqd_set_trigger_type(%struct.irq_data*, i32) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
