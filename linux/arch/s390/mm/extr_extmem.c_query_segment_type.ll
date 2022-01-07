; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_extmem.c_query_segment_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_extmem.c_query_segment_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcss_segment = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qout64 = type { i64, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.qin64 = type { i64, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DCSS_FINDSEGA = common dso_local global i32 0, align 4
@segext_scode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Querying a DCSS type failed with rc=%ld\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@SEG_TYPE_EW = common dso_local global i32 0, align 4
@SEG_TYPE_EN = common dso_local global i32 0, align 4
@SEG_TYPE_EWEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcss_segment*)* @query_segment_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_segment_type(%struct.dcss_segment* %0) #0 {
  %2 = alloca %struct.dcss_segment*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qout64*, align 8
  %9 = alloca %struct.qin64*, align 8
  %10 = alloca i64, align 8
  store %struct.dcss_segment* %0, %struct.dcss_segment** %2, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load i32, i32* @GFP_DMA, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.qout64* @kmalloc(i32 48, i32 %13)
  %15 = bitcast %struct.qout64* %14 to %struct.qin64*
  store %struct.qin64* %15, %struct.qin64** %9, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i32, i32* @GFP_DMA, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.qout64* @kmalloc(i32 48, i32 %18)
  store %struct.qout64* %19, %struct.qout64** %8, align 8
  %20 = load %struct.qin64*, %struct.qin64** %9, align 8
  %21 = icmp eq %struct.qin64* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load %struct.qout64*, %struct.qout64** %8, align 8
  %24 = icmp eq %struct.qout64* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %183

28:                                               ; preds = %22
  %29 = load i32, i32* @DCSS_FINDSEGA, align 4
  %30 = load %struct.qin64*, %struct.qin64** %9, align 8
  %31 = getelementptr inbounds %struct.qin64, %struct.qin64* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load %struct.qout64*, %struct.qout64** %8, align 8
  %33 = ptrtoint %struct.qout64* %32 to i64
  %34 = load %struct.qin64*, %struct.qin64** %9, align 8
  %35 = getelementptr inbounds %struct.qin64, %struct.qin64* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.qin64*, %struct.qin64** %9, align 8
  %37 = getelementptr inbounds %struct.qin64, %struct.qin64* %36, i32 0, i32 1
  store i32 48, i32* %37, align 8
  %38 = load %struct.qin64*, %struct.qin64** %9, align 8
  %39 = getelementptr inbounds %struct.qin64, %struct.qin64* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dcss_segment*, %struct.dcss_segment** %2, align 8
  %42 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %41, i32 0, i32 5
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @memcpy(i32 %40, %struct.TYPE_2__* %43, i32 8)
  %45 = load %struct.qin64*, %struct.qin64** %9, align 8
  %46 = bitcast %struct.qin64* %45 to %struct.qout64*
  %47 = call i32 @dcss_diag(i32* @segext_scode, %struct.qout64* %46, i64* %3, i64* %4)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %28
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %6, align 4
  br label %183

52:                                               ; preds = %28
  %53 = load i32, i32* %5, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @dcss_diag_translate_rc(i64 %58)
  store i32 %59, i32* %6, align 4
  br label %183

60:                                               ; preds = %52
  %61 = load %struct.qout64*, %struct.qout64** %8, align 8
  %62 = getelementptr inbounds %struct.qout64, %struct.qout64* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 6
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %183

68:                                               ; preds = %60
  %69 = load %struct.qout64*, %struct.qout64** %8, align 8
  %70 = getelementptr inbounds %struct.qout64, %struct.qout64* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.qout64*, %struct.qout64** %8, align 8
  %75 = getelementptr inbounds %struct.qout64, %struct.qout64* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 255
  %81 = load %struct.dcss_segment*, %struct.dcss_segment** %2, align 8
  %82 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %160

83:                                               ; preds = %68
  %84 = load %struct.qout64*, %struct.qout64** %8, align 8
  %85 = getelementptr inbounds %struct.qout64, %struct.qout64* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PAGE_SHIFT, align 4
  %88 = ashr i32 %86, %87
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %10, align 8
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %153, %83
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.qout64*, %struct.qout64** %8, align 8
  %93 = getelementptr inbounds %struct.qout64, %struct.qout64* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %156

96:                                               ; preds = %90
  %97 = load %struct.qout64*, %struct.qout64** %8, align 8
  %98 = getelementptr inbounds %struct.qout64, %struct.qout64* %97, i32 0, i32 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 255
  %106 = load i32, i32* @SEG_TYPE_EW, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %96
  %109 = load %struct.qout64*, %struct.qout64** %8, align 8
  %110 = getelementptr inbounds %struct.qout64, %struct.qout64* %109, i32 0, i32 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 255
  %118 = load i32, i32* @SEG_TYPE_EN, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %108
  %121 = load i32, i32* @EOPNOTSUPP, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %183

123:                                              ; preds = %108, %96
  %124 = load i64, i64* %10, align 8
  %125 = load %struct.qout64*, %struct.qout64** %8, align 8
  %126 = getelementptr inbounds %struct.qout64, %struct.qout64* %125, i32 0, i32 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @PAGE_SHIFT, align 4
  %134 = ashr i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = icmp ne i64 %124, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %123
  %138 = load i32, i32* @EOPNOTSUPP, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %6, align 4
  br label %183

140:                                              ; preds = %123
  %141 = load %struct.qout64*, %struct.qout64** %8, align 8
  %142 = getelementptr inbounds %struct.qout64, %struct.qout64* %141, i32 0, i32 4
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @PAGE_SHIFT, align 4
  %150 = ashr i32 %148, %149
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %10, align 8
  br label %153

153:                                              ; preds = %140
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %90

156:                                              ; preds = %90
  %157 = load i32, i32* @SEG_TYPE_EWEN, align 4
  %158 = load %struct.dcss_segment*, %struct.dcss_segment** %2, align 8
  %159 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %156, %73
  %161 = load %struct.qout64*, %struct.qout64** %8, align 8
  %162 = getelementptr inbounds %struct.qout64, %struct.qout64* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.dcss_segment*, %struct.dcss_segment** %2, align 8
  %165 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.qout64*, %struct.qout64** %8, align 8
  %167 = getelementptr inbounds %struct.qout64, %struct.qout64* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.dcss_segment*, %struct.dcss_segment** %2, align 8
  %170 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  %171 = load %struct.dcss_segment*, %struct.dcss_segment** %2, align 8
  %172 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.qout64*, %struct.qout64** %8, align 8
  %175 = getelementptr inbounds %struct.qout64, %struct.qout64* %174, i32 0, i32 4
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = call i32 @memcpy(i32 %173, %struct.TYPE_2__* %176, i32 24)
  %178 = load %struct.qout64*, %struct.qout64** %8, align 8
  %179 = getelementptr inbounds %struct.qout64, %struct.qout64* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.dcss_segment*, %struct.dcss_segment** %2, align 8
  %182 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %160, %137, %120, %65, %55, %50, %25
  %184 = load %struct.qin64*, %struct.qin64** %9, align 8
  %185 = bitcast %struct.qin64* %184 to %struct.qout64*
  %186 = call i32 @kfree(%struct.qout64* %185)
  %187 = load %struct.qout64*, %struct.qout64** %8, align 8
  %188 = call i32 @kfree(%struct.qout64* %187)
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local %struct.qout64* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @dcss_diag(i32*, %struct.qout64*, i64*, i64*) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @dcss_diag_translate_rc(i64) #1

declare dso_local i32 @kfree(%struct.qout64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
