; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_fault.c_spufs_handle_class1.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_fault.c_spufs_handle_class1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.spu_context = type { i64, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_11__ = type { {}* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MFC_DSISR_PTE_NOT_FOUND = common dso_local global i32 0, align 4
@MFC_DSISR_ACCESS_DENIED = common dso_local global i32 0, align 4
@SPU_UTIL_IOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ctx %p: ea %016llx, dsisr %016llx state %d\0A\00", align 1
@SPU_STATE_RUNNABLE = common dso_local global i64 0, align 8
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@_PAGE_READ = common dso_local global i32 0, align 4
@MFC_DSISR_ACCESS_PUT = common dso_local global i32 0, align 4
@_PAGE_WRITE = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_12__* null, align 8
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@SPE_EVENT_SPE_DATA_STORAGE = common dso_local global i32 0, align 4
@SPU_UTIL_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spufs_handle_class1(%struct.spu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spu_context* %0, %struct.spu_context** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %11 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %15 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MFC_DSISR_PTE_NOT_FOUND, align 4
  %20 = load i32, i32* @MFC_DSISR_ACCESS_DENIED, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %172

25:                                               ; preds = %1
  %26 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %27 = load i32, i32* @SPU_UTIL_IOWAIT, align 4
  %28 = call i32 @spuctx_switch_state(%struct.spu_context* %26, i32 %27)
  %29 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %33 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.spu_context* %29, i32 %30, i32 %31, i64 %34)
  %36 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %37 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %42 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SPU_STATE_RUNNABLE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %25
  %47 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %48 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %46, %25
  %55 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %56 = call i32 @spu_release(%struct.spu_context* %55)
  %57 = load i32, i32* @_PAGE_PRESENT, align 4
  %58 = load i32, i32* @_PAGE_READ, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MFC_DSISR_ACCESS_PUT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i64, i64* @_PAGE_WRITE, align 8
  br label %67

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i64 [ %65, %64 ], [ 0, %66 ]
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = or i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %6, align 4
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @local_irq_save(i64 %73)
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @hash_page(i32 %75, i32 %76, i32 768, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @local_irq_restore(i64 %79)
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %67
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @copro_handle_mm_fault(i32 %86, i32 %87, i32 %88, i32* %8)
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %83, %67
  %91 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %92 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %91, i32 0, i32 5
  %93 = call i32 @mutex_lock(i32* %92)
  %94 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %95 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %98 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %162, label %102

102:                                              ; preds = %90
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %109 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %119

113:                                              ; preds = %102
  %114 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %115 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %107
  %120 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %121 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @SPU_STATE_RUNNABLE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %147

125:                                              ; preds = %119
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %132 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %131, i32 0, i32 2
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  br label %146

138:                                              ; preds = %125
  %139 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %140 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %139, i32 0, i32 2
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %138, %130
  br label %147

147:                                              ; preds = %146, %119
  %148 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %149 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %148, i32 0, i32 2
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = icmp ne %struct.TYPE_10__* %150, null
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %154 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %153, i32 0, i32 1
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = bitcast {}** %156 to i32 (%struct.spu_context*)**
  %158 = load i32 (%struct.spu_context*)*, i32 (%struct.spu_context*)** %157, align 8
  %159 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %160 = call i32 %158(%struct.spu_context* %159)
  br label %161

161:                                              ; preds = %152, %147
  br label %167

162:                                              ; preds = %90
  %163 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @SPE_EVENT_SPE_DATA_STORAGE, align 4
  %166 = call i32 @spufs_handle_event(%struct.spu_context* %163, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %162, %161
  %168 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %169 = load i32, i32* @SPU_UTIL_SYSTEM, align 4
  %170 = call i32 @spuctx_switch_state(%struct.spu_context* %168, i32 %169)
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %167, %24
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @spuctx_switch_state(%struct.spu_context*, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.spu_context*, i32, i32, i64) #1

declare dso_local i32 @spu_release(%struct.spu_context*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @hash_page(i32, i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @copro_handle_mm_fault(i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spufs_handle_event(%struct.spu_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
