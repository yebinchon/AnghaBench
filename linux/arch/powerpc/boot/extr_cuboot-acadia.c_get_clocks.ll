; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_cuboot-acadia.c_get_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_cuboot-acadia.c_get_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@DCRN_CPR0_PLLD = common dso_local global i32 0, align 4
@DCRN_CPR0_PLLC = common dso_local global i32 0, align 4
@PLLD_FWDVA_MASK = common dso_local global i64 0, align 8
@PLLD_FWDVB_MASK = common dso_local global i64 0, align 8
@PLLD_FBDV_MASK = common dso_local global i64 0, align 8
@DCRN_CPR0_PRIMAD = common dso_local global i32 0, align 4
@PRIMAD_PLBDV_MASK = common dso_local global i64 0, align 8
@PRIMAD_EBCDV_MASK = common dso_local global i64 0, align 8
@PRIMAD_OPBDV_MASK = common dso_local global i64 0, align 8
@PLLC_SRC_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"serial0\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"no current-speed property\0A\0D\00", align 1
@bd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"/plb/ebc\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/plb/opb\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"/plb/opb/serial@ef600300\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"/plb/opb/serial@ef600400\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_clocks() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i16, align 2
  %19 = alloca i64, align 8
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = call i32 @in_8(i8* inttoptr (i64 2147483648 to i8*))
  %26 = icmp eq i32 %25, 12
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 66666666, i32 33333000
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %1, align 8
  %30 = load i32, i32* @DCRN_CPR0_PLLD, align 4
  %31 = call i64 @CPR0_READ(i32 %30)
  store i64 %31, i64* %2, align 8
  %32 = load i32, i32* @DCRN_CPR0_PLLC, align 4
  %33 = call i64 @CPR0_READ(i32 %32)
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @PLLD_FWDVA_MASK, align 8
  %36 = and i64 %34, %35
  %37 = lshr i64 %36, 16
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %2, align 8
  %39 = load i64, i64* @PLLD_FWDVB_MASK, align 8
  %40 = and i64 %38, %39
  %41 = lshr i64 %40, 8
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %0
  store i64 8, i64* %8, align 8
  br label %45

45:                                               ; preds = %44, %0
  %46 = load i64, i64* %2, align 8
  %47 = load i64, i64* @PLLD_FBDV_MASK, align 8
  %48 = and i64 %46, %47
  %49 = lshr i64 %48, 24
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i64 256, i64* %9, align 8
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i32, i32* @DCRN_CPR0_PRIMAD, align 4
  %55 = call i64 @CPR0_READ(i32 %54)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @PRIMAD_PLBDV_MASK, align 8
  %58 = and i64 %56, %57
  %59 = lshr i64 %58, 16
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i64 16, i64* %10, align 8
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @PRIMAD_EBCDV_MASK, align 8
  %66 = and i64 %64, %65
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i64 16, i64* %11, align 8
  br label %70

70:                                               ; preds = %69, %63
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* @PRIMAD_OPBDV_MASK, align 8
  %73 = and i64 %71, %72
  %74 = lshr i64 %73, 8
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i64 16, i64* %12, align 8
  br label %78

78:                                               ; preds = %77, %70
  %79 = load i64, i64* %1, align 8
  %80 = load i64, i64* %9, align 8
  %81 = mul i64 %79, %80
  %82 = load i64, i64* %12, align 8
  %83 = udiv i64 %81, %82
  store i64 %83, i64* %15, align 8
  %84 = load i64, i64* %1, align 8
  %85 = load i64, i64* %9, align 8
  %86 = mul i64 %84, %85
  %87 = load i64, i64* %11, align 8
  %88 = udiv i64 %86, %87
  store i64 %88, i64* %13, align 8
  %89 = load i64, i64* %1, align 8
  %90 = load i64, i64* %3, align 8
  %91 = load i64, i64* @PLLC_SRC_MASK, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %78
  %95 = load i64, i64* %8, align 8
  br label %98

96:                                               ; preds = %78
  %97 = load i64, i64* %7, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i64 [ %95, %94 ], [ %97, %96 ]
  %100 = mul i64 %89, %99
  %101 = load i64, i64* %9, align 8
  %102 = mul i64 %100, %101
  %103 = load i64, i64* %8, align 8
  %104 = udiv i64 %102, %103
  store i64 %104, i64* %5, align 8
  %105 = call i8* @find_node_by_alias(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %105, i8** %24, align 8
  %106 = load i8*, i8** %24, align 8
  %107 = call i32 @getprop(i8* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64* %23, i32 8)
  %108 = sext i32 %107 to i64
  %109 = icmp ne i64 %108, 8
  br i1 %109, label %110, label %112

110:                                              ; preds = %98
  %111 = call i32 @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %98
  store i64 256, i64* %19, align 8
  %113 = load i64, i64* %5, align 8
  %114 = load i64, i64* %23, align 8
  %115 = mul i64 16, %114
  %116 = udiv i64 %113, %115
  store i64 %116, i64* %16, align 8
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* %15, align 8
  %119 = udiv i64 %117, %118
  %120 = shl i64 %119, 1
  store i64 %120, i64* %17, align 8
  store i16 256, i16* %18, align 2
  store i64 256, i64* %6, align 8
  br label %121

121:                                              ; preds = %164, %112
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* %17, align 8
  %124 = icmp ugt i64 %122, %123
  br i1 %124, label %125, label %167

125:                                              ; preds = %121
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* %6, align 8
  %128 = udiv i64 %126, %127
  %129 = trunc i64 %128 to i16
  store i16 %129, i16* %21, align 2
  %130 = load i64, i64* %6, align 8
  %131 = load i16, i16* %21, align 2
  %132 = zext i16 %131 to i64
  %133 = mul i64 %130, %132
  store i64 %133, i64* %22, align 8
  %134 = load i64, i64* %22, align 8
  %135 = load i64, i64* %16, align 8
  %136 = icmp ugt i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %125
  %138 = load i64, i64* %22, align 8
  %139 = load i64, i64* %16, align 8
  %140 = sub i64 %138, %139
  br label %145

141:                                              ; preds = %125
  %142 = load i64, i64* %16, align 8
  %143 = load i64, i64* %22, align 8
  %144 = sub i64 %142, %143
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi i64 [ %140, %137 ], [ %144, %141 ]
  %147 = trunc i64 %146 to i16
  store i16 %147, i16* %20, align 2
  %148 = load i16, i16* %20, align 2
  %149 = zext i16 %148 to i32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i64, i64* %6, align 8
  store i64 %152, i64* %19, align 8
  br label %167

153:                                              ; preds = %145
  %154 = load i16, i16* %20, align 2
  %155 = zext i16 %154 to i32
  %156 = load i16, i16* %18, align 2
  %157 = zext i16 %156 to i32
  %158 = icmp slt i32 %155, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load i64, i64* %6, align 8
  store i64 %160, i64* %19, align 8
  %161 = load i16, i16* %20, align 2
  store i16 %161, i16* %18, align 2
  br label %162

162:                                              ; preds = %159, %153
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %6, align 8
  %166 = add i64 %165, -1
  store i64 %166, i64* %6, align 8
  br label %121

167:                                              ; preds = %151, %121
  %168 = load i64, i64* %5, align 8
  %169 = load i64, i64* %19, align 8
  %170 = udiv i64 %168, %169
  store i64 %170, i64* %14, align 8
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 2), align 4
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 1), align 4
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), align 4
  %174 = call i32 @dt_fixup_cpu_clocks(i32 %171, i32 %172, i32 %173)
  %175 = load i64, i64* %13, align 8
  %176 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %175)
  %177 = load i64, i64* %15, align 8
  %178 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %177)
  %179 = load i64, i64* %14, align 8
  %180 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %179)
  %181 = load i64, i64* %14, align 8
  %182 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %181)
  ret void
}

declare dso_local i32 @in_8(i8*) #1

declare dso_local i64 @CPR0_READ(i32) #1

declare dso_local i8* @find_node_by_alias(i8*) #1

declare dso_local i32 @getprop(i8*, i8*, i64*, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @dt_fixup_cpu_clocks(i32, i32, i32) #1

declare dso_local i32 @dt_fixup_clock(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
