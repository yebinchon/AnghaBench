; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/math-emu/extr_fp_arith.c_fp_fsglmul.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/math-emu/extr_fp_arith.c_fp_fsglmul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp_ext = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32*, i64 }

@PINSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"fsglmul\0A\00", align 1
@FPSR_EXC_UNFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fp_ext* @fp_fsglmul(%struct.fp_ext* %0, %struct.fp_ext* %1) #0 {
  %3 = alloca %struct.fp_ext*, align 8
  %4 = alloca %struct.fp_ext*, align 8
  %5 = alloca %struct.fp_ext*, align 8
  %6 = alloca i32, align 4
  store %struct.fp_ext* %0, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %1, %struct.fp_ext** %5, align 8
  %7 = load i32, i32* @PINSTR, align 4
  %8 = call i32 @dprint(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %10 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %11 = call i32 @fp_dyadic_check(%struct.fp_ext* %9, %struct.fp_ext* %10)
  %12 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %13 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %16 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = xor i32 %14, %17
  %19 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %20 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %22 = call i64 @IS_INF(%struct.fp_ext* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %26 = call i64 @IS_ZERO(%struct.fp_ext* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %30 = call i32 @fp_set_nan(%struct.fp_ext* %29)
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %32, %struct.fp_ext** %3, align 8
  br label %124

33:                                               ; preds = %2
  %34 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %35 = call i64 @IS_INF(%struct.fp_ext* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %39 = call i64 @IS_ZERO(%struct.fp_ext* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %43 = call i32 @fp_set_nan(%struct.fp_ext* %42)
  br label %48

44:                                               ; preds = %37
  %45 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %46 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %47 = call i32 @fp_copy_ext(%struct.fp_ext* %45, %struct.fp_ext* %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %49, %struct.fp_ext** %3, align 8
  br label %124

50:                                               ; preds = %33
  %51 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %52 = call i64 @IS_ZERO(%struct.fp_ext* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %56 = call i64 @IS_ZERO(%struct.fp_ext* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54, %50
  %59 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %60 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %62 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %65 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %66, %struct.fp_ext** %3, align 8
  br label %124

67:                                               ; preds = %54
  %68 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %69 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %72 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = sub nsw i32 %74, 16382
  store i32 %75, i32* %6, align 4
  %76 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %77 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %83 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %89 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, -256
  %95 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %96 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, -256
  %102 = call i32 @fp_mul64(i32 %81, i32 %87, i32 %94, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = icmp sge i32 %103, 32767
  br i1 %104, label %105, label %109

105:                                              ; preds = %67
  %106 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %107 = call i32 @fp_set_ovrflw(%struct.fp_ext* %106)
  %108 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %108, %struct.fp_ext** %3, align 8
  br label %124

109:                                              ; preds = %67
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %112 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load i32, i32* @FPSR_EXC_UNFL, align 4
  %117 = call i32 @fp_set_sr(i32 %116)
  %118 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sub nsw i32 0, %119
  %121 = call i32 @fp_denormalize(%struct.fp_ext* %118, i32 %120)
  br label %122

122:                                              ; preds = %115, %109
  %123 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %123, %struct.fp_ext** %3, align 8
  br label %124

124:                                              ; preds = %122, %105, %58, %48, %31
  %125 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  ret %struct.fp_ext* %125
}

declare dso_local i32 @dprint(i32, i8*) #1

declare dso_local i32 @fp_dyadic_check(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i64 @IS_INF(%struct.fp_ext*) #1

declare dso_local i64 @IS_ZERO(%struct.fp_ext*) #1

declare dso_local i32 @fp_set_nan(%struct.fp_ext*) #1

declare dso_local i32 @fp_copy_ext(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i32 @fp_mul64(i32, i32, i32, i32) #1

declare dso_local i32 @fp_set_ovrflw(%struct.fp_ext*) #1

declare dso_local i32 @fp_set_sr(i32) #1

declare dso_local i32 @fp_denormalize(%struct.fp_ext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
