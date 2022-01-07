; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpsingle.c_vfp_single_cpdo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpsingle.c_vfp_single_cpdo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op = type { i32, i64 (i32, i32, i32, i64)* }

@FOP_MASK = common dso_local global i64 0, align 8
@FPSCR_STRIDE_MASK = common dso_local global i64 0, align 8
@FOP_EXT = common dso_local global i64 0, align 8
@fops_ext = common dso_local global %struct.op* null, align 8
@fops = common dso_local global %struct.op* null, align 8
@OP_DD = common dso_local global i32 0, align 4
@OP_SCALAR = common dso_local global i32 0, align 4
@FPSCR_LENGTH_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"VFP: vecstride=%u veclen=%u\0A\00", align 1
@FPSCR_LENGTH_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"VFP: itr%d (%c%u) = op[%u] (s%u=%08x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"VFP: itr%d (%c%u) = (s%u) op[%u] (s%u=%08x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"VFP: itr%d: exceptions=%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vfp_single_cpdo(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.op*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @FOP_MASK, align 8
  %20 = and i64 %18, %19
  store i64 %20, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @vfp_get_sn(i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @vfp_get_sm(i64 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @FPSCR_STRIDE_MASK, align 8
  %27 = and i64 %25, %26
  %28 = load i64, i64* @FPSCR_STRIDE_MASK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = add nsw i32 1, %30
  store i32 %31, i32* %13, align 4
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @FOP_EXT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.op*, %struct.op** @fops_ext, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @FEXT_TO_IDX(i64 %37)
  %39 = getelementptr inbounds %struct.op, %struct.op* %36, i64 %38
  br label %45

40:                                               ; preds = %2
  %41 = load %struct.op*, %struct.op** @fops, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @FOP_TO_IDX(i64 %42)
  %44 = getelementptr inbounds %struct.op, %struct.op* %41, i64 %43
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi %struct.op* [ %39, %35 ], [ %44, %40 ]
  store %struct.op* %46, %struct.op** %14, align 8
  %47 = load %struct.op*, %struct.op** %14, align 8
  %48 = getelementptr inbounds %struct.op, %struct.op* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @OP_DD, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @vfp_get_dd(i64 %54)
  store i32 %55, i32* %8, align 4
  br label %59

56:                                               ; preds = %45
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @vfp_get_sd(i64 %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.op*, %struct.op** %14, align 8
  %61 = getelementptr inbounds %struct.op, %struct.op* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @OP_SCALAR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @FREG_BANK(i32 %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %59
  store i32 0, i32* %12, align 4
  br label %76

71:                                               ; preds = %66
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @FPSCR_LENGTH_MASK, align 8
  %74 = and i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %71, %70
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @FPSCR_LENGTH_BIT, align 4
  %80 = lshr i32 %78, %79
  %81 = add i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %77, i64 %82)
  %84 = load %struct.op*, %struct.op** %14, align 8
  %85 = getelementptr inbounds %struct.op, %struct.op* %84, i32 0, i32 1
  %86 = load i64 (i32, i32, i32, i64)*, i64 (i32, i32, i32, i64)** %85, align 8
  %87 = icmp ne i64 (i32, i32, i32, i64)* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %76
  br label %186

89:                                               ; preds = %76
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %179, %89
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ule i32 %91, %92
  br i1 %93, label %94, label %184

94:                                               ; preds = %90
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @vfp_get_float(i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load %struct.op*, %struct.op** %14, align 8
  %98 = getelementptr inbounds %struct.op, %struct.op* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @OP_DD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 100, i32 115
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %17, align 1
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @FOP_EXT, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %94
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @FPSCR_LENGTH_BIT, align 4
  %112 = lshr i32 %110, %111
  %113 = load i8, i8* %17, align 1
  %114 = sext i8 %113 to i64
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %112, i64 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  br label %133

120:                                              ; preds = %94
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @FPSCR_LENGTH_BIT, align 4
  %123 = lshr i32 %121, %122
  %124 = load i8, i8* %17, align 1
  %125 = sext i8 %124 to i64
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i64, i64* %6, align 8
  %129 = call i64 @FOP_TO_IDX(i64 %128)
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %123, i64 %125, i32 %126, i32 %127, i64 %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %120, %109
  %134 = load %struct.op*, %struct.op** %14, align 8
  %135 = getelementptr inbounds %struct.op, %struct.op* %134, i32 0, i32 1
  %136 = load i64 (i32, i32, i32, i64)*, i64 (i32, i32, i32, i64)** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load i64, i64* %5, align 8
  %141 = call i64 %136(i32 %137, i32 %138, i32 %139, i64 %140)
  store i64 %141, i64* %16, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @FPSCR_LENGTH_BIT, align 4
  %144 = lshr i32 %142, %143
  %145 = load i64, i64* %16, align 8
  %146 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %144, i64 %145)
  %147 = load i64, i64* %16, align 8
  %148 = load i64, i64* %7, align 8
  %149 = or i64 %148, %147
  store i64 %149, i64* %7, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @FREG_BANK(i32 %150)
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @FREG_IDX(i32 %152)
  %154 = load i32, i32* %13, align 4
  %155 = add i32 %153, %154
  %156 = and i32 %155, 7
  %157 = add i32 %151, %156
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @FREG_BANK(i32 %158)
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @FREG_IDX(i32 %160)
  %162 = load i32, i32* %13, align 4
  %163 = add i32 %161, %162
  %164 = and i32 %163, 7
  %165 = add i32 %159, %164
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @FREG_BANK(i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %133
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @FREG_BANK(i32 %170)
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @FREG_IDX(i32 %172)
  %174 = load i32, i32* %13, align 4
  %175 = add i32 %173, %174
  %176 = and i32 %175, 7
  %177 = add i32 %171, %176
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %169, %133
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* @FPSCR_LENGTH_BIT, align 4
  %181 = shl i32 1, %180
  %182 = load i32, i32* %11, align 4
  %183 = add i32 %182, %181
  store i32 %183, i32* %11, align 4
  br label %90

184:                                              ; preds = %90
  %185 = load i64, i64* %7, align 8
  store i64 %185, i64* %3, align 8
  br label %187

186:                                              ; preds = %88
  store i64 -1, i64* %3, align 8
  br label %187

187:                                              ; preds = %186, %184
  %188 = load i64, i64* %3, align 8
  ret i64 %188
}

declare dso_local i32 @vfp_get_sn(i64) #1

declare dso_local i32 @vfp_get_sm(i64) #1

declare dso_local i64 @FEXT_TO_IDX(i64) #1

declare dso_local i64 @FOP_TO_IDX(i64) #1

declare dso_local i32 @vfp_get_dd(i64) #1

declare dso_local i32 @vfp_get_sd(i64) #1

declare dso_local i32 @FREG_BANK(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, ...) #1

declare dso_local i32 @vfp_get_float(i32) #1

declare dso_local i32 @FREG_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
