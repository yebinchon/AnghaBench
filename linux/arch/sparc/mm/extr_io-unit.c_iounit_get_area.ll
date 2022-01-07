; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_io-unit.c_iounit_get_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_io-unit.c_iounit_get_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iounit_struct = type { i64*, i64*, i32*, i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"iounit_get_area(%08lx,%d[%d])=\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"iounit_get_area: Couldn't find free iopte slots for (%08lx,%d)\0A\00", align 1
@IOUNIT_DMA_BASE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iounit_struct*, i64, i32)* @iounit_get_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iounit_get_area(%struct.iounit_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.iounit_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.iounit_struct* %0, %struct.iounit_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @PAGE_MASK, align 8
  %17 = xor i64 %16, -1
  %18 = and i64 %15, %17
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %18, %20
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = add i64 %21, %24
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = lshr i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  switch i32 %29, label %32 [
    i32 1, label %30
    i32 2, label %31
  ]

30:                                               ; preds = %3
  store i32 561, i32* %7, align 4
  br label %33

31:                                               ; preds = %3
  store i32 306, i32* %7, align 4
  br label %33

32:                                               ; preds = %3
  store i32 531, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %31, %30
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @IOD(i8* %38)
  br label %40

40:                                               ; preds = %96, %33
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 15
  store i32 %42, i32* %8, align 4
  %43 = load %struct.iounit_struct*, %struct.iounit_struct** %4, align 8
  %44 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %11, align 8
  %51 = load %struct.iounit_struct*, %struct.iounit_struct** %4, align 8
  %52 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %11, align 8
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %113, %76, %40
  %60 = load %struct.iounit_struct*, %struct.iounit_struct** %4, align 8
  %61 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i64 @find_next_zero_bit(i32 %62, i64 %63, i64 %64)
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %66, %68
  %70 = load i64, i64* %13, align 8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %59
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i64, i64* %11, align 8
  store i64 %77, i64* %13, align 8
  %78 = load %struct.iounit_struct*, %struct.iounit_struct** %4, align 8
  %79 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %12, align 8
  br label %59

86:                                               ; preds = %72
  %87 = load i32, i32* %7, align 4
  %88 = ashr i32 %87, 4
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 15
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %86
  %93 = load i64, i64* %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @panic(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %86
  br label %40

97:                                               ; preds = %59
  store i32 1, i32* %9, align 4
  %98 = load i64, i64* %12, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %12, align 8
  br label %100

100:                                              ; preds = %115, %97
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = load i64, i64* %12, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %12, align 8
  %107 = trunc i64 %105 to i32
  %108 = load %struct.iounit_struct*, %struct.iounit_struct** %4, align 8
  %109 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @test_bit(i32 %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %59

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %100

118:                                              ; preds = %100
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* %13, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i64, i64* %12, align 8
  br label %133

124:                                              ; preds = %118
  %125 = load %struct.iounit_struct*, %struct.iounit_struct** %4, align 8
  %126 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %127, i64 %130
  %132 = load i64, i64* %131, align 8
  br label %133

133:                                              ; preds = %124, %122
  %134 = phi i64 [ %123, %122 ], [ %132, %124 ]
  %135 = load %struct.iounit_struct*, %struct.iounit_struct** %4, align 8
  %136 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %137, i64 %140
  store i64 %134, i64* %141, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %12, align 8
  %145 = sub i64 %144, %143
  store i64 %145, i64* %12, align 8
  %146 = load i64, i64* %5, align 8
  %147 = load i64, i64* @PAGE_MASK, align 8
  %148 = and i64 %146, %147
  %149 = call i32 @__pa(i64 %148)
  %150 = call i32 @MKIOPTE(i32 %149)
  store i32 %150, i32* %14, align 4
  %151 = load i64, i64* @IOUNIT_DMA_BASE, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* @PAGE_SHIFT, align 8
  %154 = shl i64 %152, %153
  %155 = add i64 %151, %154
  %156 = load i64, i64* %5, align 8
  %157 = load i64, i64* @PAGE_MASK, align 8
  %158 = xor i64 %157, -1
  %159 = and i64 %156, %158
  %160 = add i64 %155, %159
  store i64 %160, i64* %5, align 8
  store i32 0, i32* %9, align 4
  br label %161

161:                                              ; preds = %179, %133
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %188

165:                                              ; preds = %161
  %166 = load i64, i64* %12, align 8
  %167 = load %struct.iounit_struct*, %struct.iounit_struct** %4, align 8
  %168 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @set_bit(i64 %166, i32 %169)
  %171 = load i32, i32* %14, align 4
  %172 = call i64 @iopte_val(i32 %171)
  %173 = load %struct.iounit_struct*, %struct.iounit_struct** %4, align 8
  %174 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %12, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = call i32 @sbus_writel(i64 %172, i32* %177)
  br label %179

179:                                              ; preds = %165
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i64 @iopte_val(i32 %182)
  %184 = add nsw i64 %183, 256
  %185 = call i32 @__iopte(i64 %184)
  store i32 %185, i32* %14, align 4
  %186 = load i64, i64* %12, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %12, align 8
  br label %161

188:                                              ; preds = %161
  %189 = load i64, i64* %5, align 8
  %190 = inttoptr i64 %189 to i8*
  %191 = call i32 @IOD(i8* %190)
  %192 = load i64, i64* %5, align 8
  ret i64 %192
}

declare dso_local i32 @IOD(i8*) #1

declare dso_local i64 @find_next_zero_bit(i32, i64, i64) #1

declare dso_local i32 @panic(i8*, i64, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @MKIOPTE(i32) #1

declare dso_local i32 @__pa(i64) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @sbus_writel(i64, i32*) #1

declare dso_local i64 @iopte_val(i32) #1

declare dso_local i32 @__iopte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
