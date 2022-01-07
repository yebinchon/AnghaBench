; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-debugfs.c_tlb_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-debugfs.c_tlb_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }
%struct.seq_file = type { i64 }

@MMUCR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"address translation disabled\0A\00", align 1
@TLB_TYPE_ITLB = common dso_local global i32 0, align 4
@MMU_ITLB_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@MMU_ITLB_ADDRESS_ARRAY2 = common dso_local global i64 0, align 8
@MMU_ITLB_DATA_ARRAY = common dso_local global i64 0, align 8
@MMU_ITLB_DATA_ARRAY2 = common dso_local global i64 0, align 8
@MMU_UTLB_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@MMU_UTLB_ADDRESS_ARRAY2 = common dso_local global i64 0, align 8
@MMU_UTLB_DATA_ARRAY = common dso_local global i64 0, align 8
@MMU_UTLB_DATA_ARRAY2 = common dso_local global i64 0, align 8
@MMUCR_URB = common dso_local global i64 0, align 8
@MMUCR_URB_SHIFT = common dso_local global i64 0, align 8
@MMUCR_URB_NENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"entry:     vpn        ppn     asid  size valid wired\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"    ?\00", align 1
@MMU_TLB_ENTRY_SHIFT = common dso_local global i32 0, align 4
@MMU_CONTEXT_ASID_MASK = common dso_local global i64 0, align 8
@tlb_sizes = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"%2d:    0x%08lx 0x%08lx %5lu %s   %s     %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @tlb_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlb_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i64, i64* @MMUCR, align 8
  %29 = call i64 @__raw_readl(i64 %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = and i64 %30, 1
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %187

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @TLB_TYPE_ITLB, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i64, i64* @MMU_ITLB_ADDRESS_ARRAY, align 8
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* @MMU_ITLB_ADDRESS_ARRAY2, align 8
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* @MMU_ITLB_DATA_ARRAY, align 8
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* @MMU_ITLB_DATA_ARRAY2, align 8
  store i64 %44, i64* %10, align 8
  store i32 4, i32* %13, align 4
  br label %50

45:                                               ; preds = %36
  %46 = load i64, i64* @MMU_UTLB_ADDRESS_ARRAY, align 8
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* @MMU_UTLB_ADDRESS_ARRAY2, align 8
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* @MMU_UTLB_DATA_ARRAY, align 8
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* @MMU_UTLB_DATA_ARRAY2, align 8
  store i64 %49, i64* %10, align 8
  store i32 64, i32* %13, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @local_irq_save(i64 %51)
  %53 = call i32 (...) @jump_to_uncached()
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @MMUCR_URB, align 8
  %56 = and i64 %54, %55
  %57 = load i64, i64* @MMUCR_URB_SHIFT, align 8
  %58 = lshr i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i32, i32* @MMUCR_URB_NENTRIES, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %62, %50
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @TLB_TYPE_ITLB, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i64, i64* @MMU_ITLB_ADDRESS_ARRAY, align 8
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* @MMU_ITLB_ADDRESS_ARRAY2, align 8
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* @MMU_ITLB_DATA_ARRAY, align 8
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* @MMU_ITLB_DATA_ARRAY2, align 8
  store i64 %73, i64* %10, align 8
  store i32 4, i32* %13, align 4
  br label %79

74:                                               ; preds = %65
  %75 = load i64, i64* @MMU_UTLB_ADDRESS_ARRAY, align 8
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* @MMU_UTLB_ADDRESS_ARRAY2, align 8
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* @MMU_UTLB_DATA_ARRAY, align 8
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* @MMU_UTLB_DATA_ARRAY2, align 8
  store i64 %78, i64* %10, align 8
  store i32 64, i32* %13, align 4
  br label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %81 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %80, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %180, %79
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %183

86:                                               ; preds = %82
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @MMU_TLB_ENTRY_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = zext i32 %90 to i64
  %92 = or i64 %87, %91
  %93 = call i64 @__raw_readl(i64 %92)
  store i64 %93, i64* %21, align 8
  %94 = call i32 (...) @ctrl_barrier()
  %95 = load i64, i64* %21, align 8
  %96 = and i64 %95, 4294966272
  store i64 %96, i64* %16, align 8
  %97 = load i64, i64* %21, align 8
  %98 = and i64 %97, 256
  store i64 %98, i64* %20, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @MMU_TLB_ENTRY_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = zext i32 %102 to i64
  %104 = or i64 %99, %103
  %105 = call i64 @__raw_readl(i64 %104)
  store i64 %105, i64* %21, align 8
  %106 = call i32 (...) @ctrl_barrier()
  %107 = load i64, i64* %21, align 8
  %108 = load i64, i64* @MMU_CONTEXT_ASID_MASK, align 8
  %109 = and i64 %107, %108
  store i64 %109, i64* %18, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @MMU_TLB_ENTRY_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = zext i32 %113 to i64
  %115 = or i64 %110, %114
  %116 = call i64 @__raw_readl(i64 %115)
  store i64 %116, i64* %21, align 8
  %117 = call i32 (...) @ctrl_barrier()
  %118 = load i64, i64* %21, align 8
  %119 = and i64 %118, 268434432
  %120 = shl i64 %119, 4
  store i64 %120, i64* %17, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @MMU_TLB_ENTRY_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = zext i32 %124 to i64
  %126 = or i64 %121, %125
  %127 = call i64 @__raw_readl(i64 %126)
  store i64 %127, i64* %21, align 8
  %128 = call i32 (...) @ctrl_barrier()
  %129 = load i64, i64* %21, align 8
  %130 = and i64 %129, 240
  %131 = lshr i64 %130, 4
  store i64 %131, i64* %19, align 8
  store i32 0, i32* %23, align 4
  br label %132

132:                                              ; preds = %148, %86
  %133 = load i32, i32* %23, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tlb_sizes, align 8
  %135 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %134)
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %132
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tlb_sizes, align 8
  %139 = load i32, i32* %23, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %19, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %151

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %23, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %23, align 4
  br label %132

151:                                              ; preds = %146, %132
  %152 = load i32, i32* %23, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tlb_sizes, align 8
  %154 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %153)
  %155 = icmp ne i32 %152, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tlb_sizes, align 8
  %158 = load i32, i32* %23, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  store i8* %162, i8** %22, align 8
  br label %163

163:                                              ; preds = %156, %151
  %164 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %165 = load i32, i32* %14, align 4
  %166 = load i64, i64* %16, align 8
  %167 = load i64, i64* %17, align 8
  %168 = load i64, i64* %18, align 8
  %169 = load i8*, i8** %22, align 8
  %170 = load i64, i64* %20, align 8
  %171 = icmp ne i64 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp ule i32 %174, %175
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %179 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %164, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %165, i64 %166, i64 %167, i64 %168, i8* %169, i8* %173, i8* %178)
  br label %180

180:                                              ; preds = %163
  %181 = load i32, i32* %14, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %14, align 4
  br label %82

183:                                              ; preds = %82
  %184 = call i32 (...) @back_to_cached()
  %185 = load i64, i64* %11, align 8
  %186 = call i32 @local_irq_restore(i64 %185)
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %183, %33
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @jump_to_uncached(...) #1

declare dso_local i32 @ctrl_barrier(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @back_to_cached(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
