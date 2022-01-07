; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_slice_convert.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_slice_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.slice_mask = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"slice_convert(mm=%p, psize=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" mask\00", align 1
@slice_convert_lock = common dso_local global i32 0, align 4
@SLICE_NUM_LOW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c" lsps=%lx, hsps=%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, %struct.slice_mask*, i32)* @slice_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slice_convert(%struct.mm_struct* %0, %struct.slice_mask* %1, i32 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.slice_mask*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.slice_mask*, align 8
  %12 = alloca %struct.slice_mask*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store %struct.slice_mask* %1, %struct.slice_mask** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i8*, ...) @slice_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.mm_struct* %16, i32 %17)
  %19 = load %struct.slice_mask*, %struct.slice_mask** %5, align 8
  %20 = call i32 @slice_print_mask(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.slice_mask* %19)
  %21 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %22 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.slice_mask* @slice_mask_for_size(i32* %22, i32 %23)
  store %struct.slice_mask* %24, %struct.slice_mask** %11, align 8
  %25 = load i64, i64* %14, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @slice_convert_lock, i64 %25)
  %27 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %27, i32 0, i32 0
  %29 = call i8* @mm_ctx_low_slices(i32* %28)
  store i8* %29, i8** %10, align 8
  store i64 0, i64* %13, align 8
  br label %30

30:                                               ; preds = %104, %3
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @SLICE_NUM_LOW, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %107

34:                                               ; preds = %30
  %35 = load %struct.slice_mask*, %struct.slice_mask** %5, align 8
  %36 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %13, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 1, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %104

44:                                               ; preds = %34
  %45 = load i64, i64* %13, align 8
  %46 = and i64 %45, 1
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i64, i64* %13, align 8
  %49 = lshr i64 %48, 1
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32, i32* %8, align 4
  %58 = mul nsw i32 %57, 4
  %59 = ashr i32 %56, %58
  %60 = and i32 %59, 15
  store i32 %60, i32* %15, align 4
  %61 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %62 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %61, i32 0, i32 0
  %63 = load i32, i32* %15, align 4
  %64 = call %struct.slice_mask* @slice_mask_for_size(i32* %62, i32 %63)
  store %struct.slice_mask* %64, %struct.slice_mask** %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = trunc i64 %65 to i32
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.slice_mask*, %struct.slice_mask** %12, align 8
  %70 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i64, i64* %13, align 8
  %74 = trunc i64 %73 to i32
  %75 = shl i32 1, %74
  %76 = load %struct.slice_mask*, %struct.slice_mask** %11, align 8
  %77 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i32, i32* %8, align 4
  %87 = mul nsw i32 %86, 4
  %88 = shl i32 15, %87
  %89 = xor i32 %88, -1
  %90 = and i32 %85, %89
  %91 = sext i32 %90 to i64
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = load i32, i32* %8, align 4
  %95 = mul nsw i32 %94, 4
  %96 = zext i32 %95 to i64
  %97 = shl i64 %93, %96
  %98 = or i64 %91, %97
  %99 = trunc i64 %98 to i8
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 %99, i8* %103, align 1
  br label %104

104:                                              ; preds = %44, %43
  %105 = load i64, i64* %13, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %13, align 8
  br label %30

107:                                              ; preds = %30
  %108 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %109 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %108, i32 0, i32 0
  %110 = call i8* @mm_ctx_high_slices(i32* %109)
  store i8* %110, i8** %9, align 8
  store i64 0, i64* %13, align 8
  br label %111

111:                                              ; preds = %181, %107
  %112 = load i64, i64* %13, align 8
  %113 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %114 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %113, i32 0, i32 0
  %115 = call i32 @mm_ctx_slb_addr_limit(i32* %114)
  %116 = call i64 @GET_HIGH_SLICE_INDEX(i32 %115)
  %117 = icmp ult i64 %112, %116
  br i1 %117, label %118, label %184

118:                                              ; preds = %111
  %119 = load i64, i64* %13, align 8
  %120 = load %struct.slice_mask*, %struct.slice_mask** %5, align 8
  %121 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @test_bit(i64 %119, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  br label %181

126:                                              ; preds = %118
  %127 = load i64, i64* %13, align 8
  %128 = and i64 %127, 1
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %8, align 4
  %130 = load i64, i64* %13, align 8
  %131 = lshr i64 %130, 1
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %7, align 4
  %133 = load i8*, i8** %9, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = load i32, i32* %8, align 4
  %140 = mul nsw i32 %139, 4
  %141 = ashr i32 %138, %140
  %142 = and i32 %141, 15
  store i32 %142, i32* %15, align 4
  %143 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %144 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %143, i32 0, i32 0
  %145 = load i32, i32* %15, align 4
  %146 = call %struct.slice_mask* @slice_mask_for_size(i32* %144, i32 %145)
  store %struct.slice_mask* %146, %struct.slice_mask** %12, align 8
  %147 = load i64, i64* %13, align 8
  %148 = load %struct.slice_mask*, %struct.slice_mask** %12, align 8
  %149 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @__clear_bit(i64 %147, i32 %150)
  %152 = load i64, i64* %13, align 8
  %153 = load %struct.slice_mask*, %struct.slice_mask** %11, align 8
  %154 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @__set_bit(i64 %152, i32 %155)
  %157 = load i8*, i8** %9, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = load i32, i32* %8, align 4
  %164 = mul nsw i32 %163, 4
  %165 = shl i32 15, %164
  %166 = xor i32 %165, -1
  %167 = and i32 %162, %166
  %168 = sext i32 %167 to i64
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = load i32, i32* %8, align 4
  %172 = mul nsw i32 %171, 4
  %173 = zext i32 %172 to i64
  %174 = shl i64 %170, %173
  %175 = or i64 %168, %174
  %176 = trunc i64 %175 to i8
  %177 = load i8*, i8** %9, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  store i8 %176, i8* %180, align 1
  br label %181

181:                                              ; preds = %126, %125
  %182 = load i64, i64* %13, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %13, align 8
  br label %111

184:                                              ; preds = %111
  %185 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %186 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %185, i32 0, i32 0
  %187 = call i8* @mm_ctx_low_slices(i32* %186)
  %188 = ptrtoint i8* %187 to i64
  %189 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %190 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %189, i32 0, i32 0
  %191 = call i8* @mm_ctx_high_slices(i32* %190)
  %192 = ptrtoint i8* %191 to i64
  %193 = call i32 (i8*, ...) @slice_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %188, i64 %192)
  %194 = load i64, i64* %14, align 8
  %195 = call i32 @spin_unlock_irqrestore(i32* @slice_convert_lock, i64 %194)
  %196 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %197 = call i32 @copro_flush_all_slbs(%struct.mm_struct* %196)
  ret void
}

declare dso_local i32 @slice_dbg(i8*, ...) #1

declare dso_local i32 @slice_print_mask(i8*, %struct.slice_mask*) #1

declare dso_local %struct.slice_mask* @slice_mask_for_size(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @mm_ctx_low_slices(i32*) #1

declare dso_local i8* @mm_ctx_high_slices(i32*) #1

declare dso_local i64 @GET_HIGH_SLICE_INDEX(i32) #1

declare dso_local i32 @mm_ctx_slb_addr_limit(i32*) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @copro_flush_all_slbs(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
