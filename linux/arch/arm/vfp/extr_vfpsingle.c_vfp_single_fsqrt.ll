; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpsingle.c_vfp_single_fsqrt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpsingle.c_vfp_single_fsqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_single = type { i64, i32, i32 }

@VFP_NAN = common dso_local global i32 0, align 4
@VFP_INFINITY = common dso_local global i32 0, align 4
@vfp_single_default_qnan = common dso_local global %struct.vfp_single zeroinitializer, align 8
@FPSCR_IOC = common dso_local global i32 0, align 4
@VFP_ZERO = common dso_local global i32 0, align 4
@VFP_DENORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"sqrt estimate\00", align 1
@VFP_SINGLE_LOW_BITS_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"VFP: term=%016llx rem=%016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"fsqrt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vfp_single_fsqrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_single_fsqrt(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfp_single, align 8
  %11 = alloca %struct.vfp_single, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vfp_single*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @vfp_single_unpack(%struct.vfp_single* %10, i32 %17)
  %19 = call i32 @vfp_single_type(%struct.vfp_single* %10)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @VFP_NAN, align 4
  %22 = load i32, i32* @VFP_INFINITY, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %4
  store %struct.vfp_single* %11, %struct.vfp_single** %14, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @VFP_NAN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.vfp_single*, %struct.vfp_single** %14, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @vfp_propagate_nan(%struct.vfp_single* %32, %struct.vfp_single* %10, i32* null, i32 %33)
  store i32 %34, i32* %12, align 4
  br label %45

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %56, %39
  store %struct.vfp_single* %10, %struct.vfp_single** %14, align 8
  store i32 0, i32* %12, align 4
  br label %44

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %68, %41
  store %struct.vfp_single* @vfp_single_default_qnan, %struct.vfp_single** %14, align 8
  %43 = load i32, i32* @FPSCR_IOC, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.vfp_single*, %struct.vfp_single** %14, align 8
  %47 = call i32 @vfp_single_pack(%struct.vfp_single* %46)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @vfp_put_float(i32 %47, i32 %48)
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %149

51:                                               ; preds = %4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @VFP_ZERO, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %40

57:                                               ; preds = %51
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @VFP_DENORMAL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @vfp_single_normalise_denormal(%struct.vfp_single* %10)
  br label %64

64:                                               ; preds = %62, %57
  %65 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %42

69:                                               ; preds = %64
  %70 = call i32 @vfp_single_dump(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.vfp_single* %10)
  %71 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 127
  %75 = ashr i32 %74, 1
  %76 = add nsw i32 %75, 127
  %77 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 1
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @vfp_estimate_sqrt_significand(i32 %79, i32 %81)
  %83 = add nsw i32 %82, 2
  %84 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = call i32 @vfp_single_dump(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.vfp_single* %11)
  %86 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @VFP_SINGLE_LOW_BITS_MASK, align 4
  %89 = and i32 %87, %88
  %90 = icmp sle i32 %89, 5
  br i1 %90, label %91, label %141

91:                                               ; preds = %69
  %92 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %93, 2
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  store i32 -1, i32* %96, align 4
  br label %140

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, %103
  store i32 %106, i32* %104, align 4
  %107 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %108, %110
  store i32 %111, i32* %15, align 4
  %112 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 32
  %115 = load i32, i32* %15, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %123, %97
  %121 = load i32, i32* %16, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 1
  %130 = or i32 %129, 1
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %16, align 4
  br label %120

133:                                              ; preds = %120
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %136
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %133, %95
  br label %141

141:                                              ; preds = %140, %69
  %142 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @vfp_shiftright32jamming(i32 %143, i32 1)
  %145 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @vfp_single_normaliseround(i32 %146, %struct.vfp_single* %11, i32 %147, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %141, %45
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @vfp_single_unpack(%struct.vfp_single*, i32) #1

declare dso_local i32 @vfp_single_type(%struct.vfp_single*) #1

declare dso_local i32 @vfp_propagate_nan(%struct.vfp_single*, %struct.vfp_single*, i32*, i32) #1

declare dso_local i32 @vfp_put_float(i32, i32) #1

declare dso_local i32 @vfp_single_pack(%struct.vfp_single*) #1

declare dso_local i32 @vfp_single_normalise_denormal(%struct.vfp_single*) #1

declare dso_local i32 @vfp_single_dump(i8*, %struct.vfp_single*) #1

declare dso_local i32 @vfp_estimate_sqrt_significand(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @vfp_shiftright32jamming(i32, i32) #1

declare dso_local i32 @vfp_single_normaliseround(i32, %struct.vfp_single*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
