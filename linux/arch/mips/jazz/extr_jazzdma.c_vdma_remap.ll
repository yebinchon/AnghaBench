; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/jazz/extr_jazzdma.c_vdma_remap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/jazz/extr_jazzdma.c_vdma_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@vdma_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"vdma_map: Invalid logical address: %08lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"vdma_map: Invalid physical address: %08lx\0A\00", align 1
@VDMA_PAGESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"vdma_remap: first=%x, pages=%x\0A\00", align 1
@VDMA_PGTBL_ENTRIES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"vdma_alloc: Invalid size: %08lx\0A\00", align 1
@pgtbl = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Trying to remap other's pages.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@JAZZ_R4030_TRSTBL_INV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"LADDR: \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\0APADDR: \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"\0AOWNER: \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdma_remap(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ugt i64 %11, 16777215
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i32, i32* @vdma_debug, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %194

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = icmp ugt i64 %23, 536870911
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* @vdma_debug, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* %6, align 8
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %194

34:                                               ; preds = %22
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* @VDMA_PAGESIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = and i64 %35, %38
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %39, %40
  %42 = lshr i64 %41, 12
  %43 = add i64 %42, 1
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i64, i64* %5, align 8
  %46 = lshr i64 %45, 12
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @vdma_debug, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %34
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %34
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* @VDMA_PGTBL_ENTRIES, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32, i32* @vdma_debug, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i64, i64* %7, align 8
  %65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %194

69:                                               ; preds = %54
  %70 = load i32, i32* @VDMA_PAGESIZE, align 4
  %71 = sub nsw i32 %70, 1
  %72 = xor i32 %71, -1
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %6, align 8
  %75 = and i64 %74, %73
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %102, %69
  %77 = load i32, i32* %9, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @VDMA_PGTBL_ENTRIES, align 4
  %82 = icmp slt i32 %80, %81
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i1 [ false, %76 ], [ %82, %79 ]
  br i1 %84, label %85, label %117

85:                                               ; preds = %83
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %85
  %95 = load i32, i32* @vdma_debug, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %94
  %100 = load i32, i32* @EPERM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %194

102:                                              ; preds = %85
  %103 = load i64, i64* %6, align 8
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i64 %103, i64* %108, align 8
  %109 = load i32, i32* @VDMA_PAGESIZE, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %9, align 4
  br label %76

117:                                              ; preds = %83
  %118 = load i32, i32* @JAZZ_R4030_TRSTBL_INV, align 4
  %119 = call i32 @r4030_write_reg32(i32 %118, i32 0)
  %120 = load i32, i32* @vdma_debug, align 4
  %121 = icmp sgt i32 %120, 2
  br i1 %121, label %122, label %193

122:                                              ; preds = %117
  %123 = load i64, i64* %6, align 8
  %124 = load i32, i32* @VDMA_PAGESIZE, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = and i64 %123, %126
  %128 = load i64, i64* %7, align 8
  %129 = add i64 %127, %128
  %130 = lshr i64 %129, 12
  %131 = add i64 %130, 1
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %9, align 4
  %133 = load i64, i64* %5, align 8
  %134 = lshr i64 %133, 12
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %8, align 4
  %136 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %148, %122
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %140, %141
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %138
  %145 = load i32, i32* %10, align 4
  %146 = shl i32 %145, 12
  %147 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %138

151:                                              ; preds = %138
  %152 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %168, %151
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %156, %157
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %154
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %166)
  br label %168

168:                                              ; preds = %160
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %154

171:                                              ; preds = %154
  %172 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %10, align 4
  br label %174

174:                                              ; preds = %188, %171
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %176, %177
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %174
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %186)
  br label %188

188:                                              ; preds = %180
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %174

191:                                              ; preds = %174
  %192 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %117
  store i32 0, i32* %4, align 4
  br label %194

194:                                              ; preds = %193, %99, %66, %31, %19
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @r4030_write_reg32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
