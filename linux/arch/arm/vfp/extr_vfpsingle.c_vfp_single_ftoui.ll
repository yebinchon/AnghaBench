; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpsingle.c_vfp_single_ftoui.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpsingle.c_vfp_single_ftoui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_single = type { i64, i32, i32 }

@FPSCR_RMODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"VSM\00", align 1
@VFP_DENORMAL = common dso_local global i32 0, align 4
@FPSCR_IDC = common dso_local global i32 0, align 4
@VFP_NAN = common dso_local global i32 0, align 4
@FPSCR_IOC = common dso_local global i32 0, align 4
@FPSCR_ROUND_NEAREST = common dso_local global i32 0, align 4
@FPSCR_ROUND_TOZERO = common dso_local global i32 0, align 4
@FPSCR_ROUND_PLUSINF = common dso_local global i32 0, align 4
@FPSCR_IXC = common dso_local global i32 0, align 4
@FPSCR_ROUND_MINUSINF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"VFP: ftoui: d(s%d)=%08x exceptions=%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vfp_single_ftoui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_single_ftoui(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfp_single, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @FPSCR_RMODE_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @vfp_single_unpack(%struct.vfp_single* %9, i32 %20)
  %22 = call i32 @vfp_single_dump(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.vfp_single* %9)
  %23 = call i32 @vfp_single_type(%struct.vfp_single* %9)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @VFP_DENORMAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* @FPSCR_IDC, align 4
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %28, %4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @VFP_NAN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %37, %32
  %40 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %41, 159
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 -1
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @FPSCR_IOC, align 4
  store i32 %49, i32* %11, align 4
  br label %170

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %52, 126
  br i1 %53, label %54, label %135

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 158, %56
  store i32 %57, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %58 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 1
  %61 = load i32, i32* %14, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 33, %65
  %67 = shl i32 %64, %66
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @FPSCR_ROUND_NEAREST, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %54
  store i32 -2147483648, i32* %16, align 4
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %16, align 4
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %75, %71
  br label %98

79:                                               ; preds = %54
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @FPSCR_ROUND_TOZERO, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 0, i32* %16, align 4
  br label %97

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @FPSCR_ROUND_PLUSINF, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = xor i32 %88, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  store i32 -1, i32* %16, align 4
  br label %96

96:                                               ; preds = %95, %84
  br label %97

97:                                               ; preds = %96, %83
  br label %98

98:                                               ; preds = %97, %78
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* %15, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %98
  %105 = load i32, i32* %10, align 4
  %106 = icmp ult i32 %105, -1
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %114

110:                                              ; preds = %104
  %111 = load i32, i32* @FPSCR_IOC, align 4
  %112 = load i32, i32* %11, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %110, %107
  br label %115

115:                                              ; preds = %114, %98
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  store i32 0, i32* %10, align 4
  %123 = load i32, i32* @FPSCR_IOC, align 4
  %124 = load i32, i32* %11, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %11, align 4
  br label %134

126:                                              ; preds = %118, %115
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* @FPSCR_IXC, align 4
  %131 = load i32, i32* %11, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %129, %126
  br label %134

134:                                              ; preds = %133, %122
  br label %169

135:                                              ; preds = %50
  store i32 0, i32* %10, align 4
  %136 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %168

142:                                              ; preds = %135
  %143 = load i32, i32* @FPSCR_IXC, align 4
  %144 = load i32, i32* %11, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @FPSCR_ROUND_PLUSINF, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 1, i32* %10, align 4
  br label %167

154:                                              ; preds = %149, %142
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @FPSCR_ROUND_MINUSINF, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %9, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  store i32 0, i32* %10, align 4
  %163 = load i32, i32* @FPSCR_IOC, align 4
  %164 = load i32, i32* %11, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %11, align 4
  br label %166

166:                                              ; preds = %162, %158, %154
  br label %167

167:                                              ; preds = %166, %153
  br label %168

168:                                              ; preds = %167, %135
  br label %169

169:                                              ; preds = %168, %134
  br label %170

170:                                              ; preds = %169, %43
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %171, i32 %172, i32 %173)
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @vfp_put_float(i32 %175, i32 %176)
  %178 = load i32, i32* %11, align 4
  ret i32 %178
}

declare dso_local i32 @vfp_single_unpack(%struct.vfp_single*, i32) #1

declare dso_local i32 @vfp_single_dump(i8*, %struct.vfp_single*) #1

declare dso_local i32 @vfp_single_type(%struct.vfp_single*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @vfp_put_float(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
