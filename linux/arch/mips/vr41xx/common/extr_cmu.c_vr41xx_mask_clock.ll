; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/vr41xx/common/extr_cmu.c_vr41xx_mask_clock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/vr41xx/common/extr_cmu.c_vr41xx_mask_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmu_lock = common dso_local global i32 0, align 4
@MSKPIU = common dso_local global i32 0, align 4
@cmuclkmsk = common dso_local global i32 0, align 4
@CPU_VR4111 = common dso_local global i32 0, align 4
@CPU_VR4121 = common dso_local global i32 0, align 4
@MSKSIU = common dso_local global i32 0, align 4
@MSKSSIU = common dso_local global i32 0, align 4
@MSKDSIU = common dso_local global i32 0, align 4
@MSKAIU = common dso_local global i32 0, align 4
@MSKKIU = common dso_local global i32 0, align 4
@MSKFIR = common dso_local global i32 0, align 4
@MSKFFIR = common dso_local global i32 0, align 4
@MSKCSI = common dso_local global i32 0, align 4
@MSKSCSI = common dso_local global i32 0, align 4
@MSKPCIU = common dso_local global i32 0, align 4
@MSKSHSP = common dso_local global i32 0, align 4
@MSKPPCIU = common dso_local global i32 0, align 4
@MSKCEU = common dso_local global i32 0, align 4
@cmuclkmsk2 = common dso_local global i32 0, align 4
@MSKMAC0 = common dso_local global i32 0, align 4
@MSKMAC1 = common dso_local global i32 0, align 4
@CMUCLKMSK2 = common dso_local global i32 0, align 4
@CMUCLKMSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vr41xx_mask_clock(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @spin_lock_irq(i32* @cmu_lock)
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %130 [
    i32 129, label %5
    i32 128, label %10
    i32 140, label %44
    i32 132, label %49
    i32 134, label %54
    i32 137, label %61
    i32 138, label %93
    i32 131, label %100
    i32 133, label %105
    i32 130, label %110
    i32 139, label %115
    i32 136, label %120
    i32 135, label %125
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @MSKPIU, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* @cmuclkmsk, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* @cmuclkmsk, align 4
  br label %131

10:                                               ; preds = %1
  %11 = call i32 (...) @current_cpu_type()
  %12 = load i32, i32* @CPU_VR4111, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = call i32 (...) @current_cpu_type()
  %16 = load i32, i32* @CPU_VR4121, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @MSKSIU, align 4
  %20 = load i32, i32* @MSKSSIU, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* @cmuclkmsk, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* @cmuclkmsk, align 4
  br label %43

25:                                               ; preds = %14
  %26 = load i32, i32* @cmuclkmsk, align 4
  %27 = load i32, i32* @MSKDSIU, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @MSKSSIU, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* @cmuclkmsk, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* @cmuclkmsk, align 4
  br label %42

35:                                               ; preds = %25
  %36 = load i32, i32* @MSKSIU, align 4
  %37 = load i32, i32* @MSKSSIU, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* @cmuclkmsk, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* @cmuclkmsk, align 4
  br label %42

42:                                               ; preds = %35, %30
  br label %43

43:                                               ; preds = %42, %18
  br label %131

44:                                               ; preds = %1
  %45 = load i32, i32* @MSKAIU, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* @cmuclkmsk, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* @cmuclkmsk, align 4
  br label %131

49:                                               ; preds = %1
  %50 = load i32, i32* @MSKKIU, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* @cmuclkmsk, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* @cmuclkmsk, align 4
  br label %131

54:                                               ; preds = %1
  %55 = load i32, i32* @MSKFIR, align 4
  %56 = load i32, i32* @MSKFFIR, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* @cmuclkmsk, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* @cmuclkmsk, align 4
  br label %131

61:                                               ; preds = %1
  %62 = call i32 (...) @current_cpu_type()
  %63 = load i32, i32* @CPU_VR4111, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = call i32 (...) @current_cpu_type()
  %67 = load i32, i32* @CPU_VR4121, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @MSKDSIU, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* @cmuclkmsk, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* @cmuclkmsk, align 4
  br label %92

74:                                               ; preds = %65
  %75 = load i32, i32* @cmuclkmsk, align 4
  %76 = load i32, i32* @MSKSSIU, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* @MSKDSIU, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* @cmuclkmsk, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* @cmuclkmsk, align 4
  br label %91

84:                                               ; preds = %74
  %85 = load i32, i32* @MSKSIU, align 4
  %86 = load i32, i32* @MSKDSIU, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = load i32, i32* @cmuclkmsk, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* @cmuclkmsk, align 4
  br label %91

91:                                               ; preds = %84, %79
  br label %92

92:                                               ; preds = %91, %69
  br label %131

93:                                               ; preds = %1
  %94 = load i32, i32* @MSKCSI, align 4
  %95 = load i32, i32* @MSKSCSI, align 4
  %96 = or i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = load i32, i32* @cmuclkmsk, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* @cmuclkmsk, align 4
  br label %131

100:                                              ; preds = %1
  %101 = load i32, i32* @MSKPCIU, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* @cmuclkmsk, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* @cmuclkmsk, align 4
  br label %131

105:                                              ; preds = %1
  %106 = load i32, i32* @MSKSHSP, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* @cmuclkmsk, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* @cmuclkmsk, align 4
  br label %131

110:                                              ; preds = %1
  %111 = load i32, i32* @MSKPPCIU, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* @cmuclkmsk, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* @cmuclkmsk, align 4
  br label %131

115:                                              ; preds = %1
  %116 = load i32, i32* @MSKCEU, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* @cmuclkmsk2, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* @cmuclkmsk2, align 4
  br label %131

120:                                              ; preds = %1
  %121 = load i32, i32* @MSKMAC0, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* @cmuclkmsk2, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* @cmuclkmsk2, align 4
  br label %131

125:                                              ; preds = %1
  %126 = load i32, i32* @MSKMAC1, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* @cmuclkmsk2, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* @cmuclkmsk2, align 4
  br label %131

130:                                              ; preds = %1
  br label %131

131:                                              ; preds = %130, %125, %120, %115, %110, %105, %100, %93, %92, %54, %49, %44, %43, %5
  %132 = load i32, i32* %2, align 4
  %133 = icmp eq i32 %132, 139
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %2, align 4
  %136 = icmp eq i32 %135, 136
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %2, align 4
  %139 = icmp eq i32 %138, 135
  br i1 %139, label %140, label %144

140:                                              ; preds = %137, %134, %131
  %141 = load i32, i32* @CMUCLKMSK2, align 4
  %142 = load i32, i32* @cmuclkmsk2, align 4
  %143 = call i32 @cmu_write(i32 %141, i32 %142)
  br label %148

144:                                              ; preds = %137
  %145 = load i32, i32* @CMUCLKMSK, align 4
  %146 = load i32, i32* @cmuclkmsk, align 4
  %147 = call i32 @cmu_write(i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %140
  %149 = call i32 @spin_unlock_irq(i32* @cmu_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i32 @cmu_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
