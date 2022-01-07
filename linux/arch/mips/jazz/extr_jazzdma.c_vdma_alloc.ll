; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/jazz/extr_jazzdma.c_vdma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/jazz/extr_jazzdma.c_vdma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@vdma_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"vdma_alloc: Invalid physical address: %08lx\0A\00", align 1
@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"vdma_alloc: Invalid size: %08lx\0A\00", align 1
@vdma_lock = common dso_local global i32 0, align 4
@pgtbl = common dso_local global %struct.TYPE_2__* null, align 8
@VDMA_PAGE_EMPTY = common dso_local global i64 0, align 8
@VDMA_PGTBL_ENTRIES = common dso_local global i32 0, align 4
@VDMA_PAGESIZE = common dso_local global i32 0, align 4
@JAZZ_R4030_TRSTBL_INV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"vdma_alloc: Allocated %d pages starting from %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"LADDR: \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\0APADDR: \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\0AOWNER: \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vdma_alloc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ugt i64 %13, 536870911
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @vdma_debug, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %22, i64* %3, align 8
  br label %219

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = icmp ugt i64 %24, 4194304
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @vdma_debug, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %36, i64* %3, align 8
  br label %219

37:                                               ; preds = %26
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @spin_lock_irqsave(i32* @vdma_lock, i64 %38)
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %40, %41
  %43 = call i32 @VDMA_PAGE(i64 %42)
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @VDMA_PAGE(i64 %44)
  %46 = sub nsw i32 %43, %45
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %37, %107
  br label %49

49:                                               ; preds = %64, %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VDMA_PAGE_EMPTY, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @VDMA_PGTBL_ENTRIES, align 4
  %61 = icmp slt i32 %59, %60
  br label %62

62:                                               ; preds = %58, %49
  %63 = phi i1 [ false, %49 ], [ %61, %58 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %49

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @VDMA_PGTBL_ENTRIES, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* @vdma_lock, i64 %74)
  %76 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %76, i64* %3, align 8
  br label %219

77:                                               ; preds = %67
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %97, %77
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @VDMA_PAGE_EMPTY, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %80
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %92, %93
  br label %95

95:                                               ; preds = %89, %80
  %96 = phi i1 [ false, %80 ], [ %94, %89 ]
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %80

100:                                              ; preds = %95
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %6, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %110

107:                                              ; preds = %100
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %48

110:                                              ; preds = %106
  %111 = load i32, i32* %6, align 4
  %112 = shl i32 %111, 12
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %4, align 8
  %115 = load i32, i32* @VDMA_PAGESIZE, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = and i64 %114, %117
  %119 = add i64 %113, %118
  store i64 %119, i64* %11, align 8
  %120 = load i64, i64* %4, align 8
  %121 = load i32, i32* @VDMA_PAGESIZE, align 4
  %122 = sub nsw i32 %121, 1
  %123 = xor i32 %122, -1
  %124 = sext i32 %123 to i64
  %125 = and i64 %120, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %148, %110
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %128
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  store i32 %133, i32* %138, align 8
  %139 = load i64, i64* %11, align 8
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  store i64 %139, i64* %144, align 8
  %145 = load i32, i32* @VDMA_PAGESIZE, align 4
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %132
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %128

151:                                              ; preds = %128
  %152 = load i32, i32* @JAZZ_R4030_TRSTBL_INV, align 4
  %153 = call i32 @r4030_write_reg32(i32 %152, i32 0)
  %154 = load i32, i32* @vdma_debug, align 4
  %155 = icmp sgt i32 %154, 1
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i32, i32* %8, align 4
  %158 = load i64, i64* %11, align 8
  %159 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %157, i64 %158)
  br label %160

160:                                              ; preds = %156, %151
  %161 = load i32, i32* @vdma_debug, align 4
  %162 = icmp sgt i32 %161, 2
  br i1 %162, label %163, label %215

163:                                              ; preds = %160
  %164 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %165 = load i32, i32* %6, align 4
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %174, %163
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %166
  %171 = load i32, i32* %10, align 4
  %172 = shl i32 %171, 12
  %173 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %166

177:                                              ; preds = %166
  %178 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %10, align 4
  br label %180

180:                                              ; preds = %192, %177
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %195

184:                                              ; preds = %180
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %184
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %10, align 4
  br label %180

195:                                              ; preds = %180
  %196 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %197 = load i32, i32* %6, align 4
  store i32 %197, i32* %10, align 4
  br label %198

198:                                              ; preds = %210, %195
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %198
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %208)
  br label %210

210:                                              ; preds = %202
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %198

213:                                              ; preds = %198
  %214 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %215

215:                                              ; preds = %213, %160
  %216 = load i64, i64* %12, align 8
  %217 = call i32 @spin_unlock_irqrestore(i32* @vdma_lock, i64 %216)
  %218 = load i64, i64* %11, align 8
  store i64 %218, i64* %3, align 8
  br label %219

219:                                              ; preds = %215, %73, %35, %21
  %220 = load i64, i64* %3, align 8
  ret i64 %220
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @VDMA_PAGE(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @r4030_write_reg32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
