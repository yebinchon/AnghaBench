; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_base.c_spu_request_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_base.c_spu_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu = type { i32, i64*, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"spe%02d.0\00", align 1
@spu_irq_class_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"spe%02d.1\00", align 1
@spu_irq_class_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"spe%02d.2\00", align 1
@spu_irq_class_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu*)* @spu_request_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_request_irqs(%struct.spu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spu*, align 8
  %4 = alloca i32, align 4
  store %struct.spu* %0, %struct.spu** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.spu*, %struct.spu** %3, align 8
  %6 = getelementptr inbounds %struct.spu, %struct.spu* %5, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load %struct.spu*, %struct.spu** %3, align 8
  %13 = getelementptr inbounds %struct.spu, %struct.spu* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.spu*, %struct.spu** %3, align 8
  %16 = getelementptr inbounds %struct.spu, %struct.spu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @snprintf(i32 %14, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.spu*, %struct.spu** %3, align 8
  %20 = getelementptr inbounds %struct.spu, %struct.spu* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @spu_irq_class_0, align 4
  %25 = load %struct.spu*, %struct.spu** %3, align 8
  %26 = getelementptr inbounds %struct.spu, %struct.spu* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.spu*, %struct.spu** %3, align 8
  %29 = call i32 @request_irq(i64 %23, i32 %24, i32 0, i32 %27, %struct.spu* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %11
  br label %127

33:                                               ; preds = %11
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.spu*, %struct.spu** %3, align 8
  %36 = getelementptr inbounds %struct.spu, %struct.spu* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %34
  %42 = load %struct.spu*, %struct.spu** %3, align 8
  %43 = getelementptr inbounds %struct.spu, %struct.spu* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.spu*, %struct.spu** %3, align 8
  %46 = getelementptr inbounds %struct.spu, %struct.spu* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @snprintf(i32 %44, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.spu*, %struct.spu** %3, align 8
  %50 = getelementptr inbounds %struct.spu, %struct.spu* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @spu_irq_class_1, align 4
  %55 = load %struct.spu*, %struct.spu** %3, align 8
  %56 = getelementptr inbounds %struct.spu, %struct.spu* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.spu*, %struct.spu** %3, align 8
  %59 = call i32 @request_irq(i64 %53, i32 %54, i32 0, i32 %57, %struct.spu* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %41
  br label %111

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63, %34
  %65 = load %struct.spu*, %struct.spu** %3, align 8
  %66 = getelementptr inbounds %struct.spu, %struct.spu* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %64
  %72 = load %struct.spu*, %struct.spu** %3, align 8
  %73 = getelementptr inbounds %struct.spu, %struct.spu* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.spu*, %struct.spu** %3, align 8
  %76 = getelementptr inbounds %struct.spu, %struct.spu* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @snprintf(i32 %74, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load %struct.spu*, %struct.spu** %3, align 8
  %80 = getelementptr inbounds %struct.spu, %struct.spu* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 2
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @spu_irq_class_2, align 4
  %85 = load %struct.spu*, %struct.spu** %3, align 8
  %86 = getelementptr inbounds %struct.spu, %struct.spu* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.spu*, %struct.spu** %3, align 8
  %89 = call i32 @request_irq(i64 %83, i32 %84, i32 0, i32 %87, %struct.spu* %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %71
  br label %95

93:                                               ; preds = %71
  br label %94

94:                                               ; preds = %93, %64
  store i32 0, i32* %2, align 4
  br label %129

95:                                               ; preds = %92
  %96 = load %struct.spu*, %struct.spu** %3, align 8
  %97 = getelementptr inbounds %struct.spu, %struct.spu* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.spu*, %struct.spu** %3, align 8
  %104 = getelementptr inbounds %struct.spu, %struct.spu* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.spu*, %struct.spu** %3, align 8
  %109 = call i32 @free_irq(i64 %107, %struct.spu* %108)
  br label %110

110:                                              ; preds = %102, %95
  br label %111

111:                                              ; preds = %110, %62
  %112 = load %struct.spu*, %struct.spu** %3, align 8
  %113 = getelementptr inbounds %struct.spu, %struct.spu* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %111
  %119 = load %struct.spu*, %struct.spu** %3, align 8
  %120 = getelementptr inbounds %struct.spu, %struct.spu* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.spu*, %struct.spu** %3, align 8
  %125 = call i32 @free_irq(i64 %123, %struct.spu* %124)
  br label %126

126:                                              ; preds = %118, %111
  br label %127

127:                                              ; preds = %126, %32
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %94
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.spu*) #1

declare dso_local i32 @free_irq(i64, %struct.spu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
