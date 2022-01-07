; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_flush_tlb_func_common.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_flush_tlb_func_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mm_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.flush_tlb_info = type { i64, i64, i64, i64 }

@cpu_tlbstate = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 8
@TLB_FLUSH_ALL = common dso_local global i64 0, align 8
@NR_TLB_LOCAL_FLUSH_ONE = common dso_local global i32 0, align 4
@NR_TLB_LOCAL_FLUSH_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flush_tlb_info*, i32, i32)* @flush_tlb_func_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_tlb_func_common(%struct.flush_tlb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.flush_tlb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.flush_tlb_info* %0, %struct.flush_tlb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpu_tlbstate, i32 0, i32 3), align 8
  %14 = call i64 @this_cpu_read(i32 %13)
  %15 = inttoptr i64 %14 to %struct.mm_struct*
  store %struct.mm_struct* %15, %struct.mm_struct** %7, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpu_tlbstate, i32 0, i32 2), align 4
  %17 = call i64 @this_cpu_read(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = call i64 @atomic64_read(i32* %20)
  store i64 %21, i64* %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpu_tlbstate, i32 0, i32 0), align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @this_cpu_read(i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = call i32 (...) @irqs_disabled()
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @VM_WARN_ON(i32 %31)
  %33 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %34 = icmp eq %struct.mm_struct* %33, @init_mm
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  br label %159

39:                                               ; preds = %3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpu_tlbstate, i32 0, i32 0), align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @this_cpu_read(i32 %44)
  %46 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %47 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %45, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @VM_WARN_ON(i32 %51)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpu_tlbstate, i32 0, i32 1), align 8
  %54 = call i64 @this_cpu_read(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %39
  %57 = call i32 @switch_mm_irqs_off(i32* null, %struct.mm_struct* @init_mm, i32* null)
  br label %159

58:                                               ; preds = %39
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @trace_tlb_flush(i32 %66, i64 0)
  br label %159

68:                                               ; preds = %58
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp sgt i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @WARN_ON_ONCE(i32 %72)
  %74 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %75 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp sgt i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @WARN_ON_ONCE(i32 %79)
  %81 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %82 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TLB_FLUSH_ALL, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %140

86:                                               ; preds = %68
  %87 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %88 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = add nsw i64 %90, 1
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %140

93:                                               ; preds = %86
  %94 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %95 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %140

99:                                               ; preds = %93
  %100 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %101 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %104 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %102, %105
  %107 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %108 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = lshr i64 %106, %109
  store i64 %110, i64* %11, align 8
  %111 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %112 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %12, align 8
  br label %114

114:                                              ; preds = %120, %99
  %115 = load i64, i64* %12, align 8
  %116 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %117 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ult i64 %115, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load i64, i64* %12, align 8
  %122 = call i32 @__flush_tlb_one_user(i64 %121)
  %123 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %124 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = shl i64 1, %125
  %127 = load i64, i64* %12, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %12, align 8
  br label %114

129:                                              ; preds = %114
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i32, i32* @NR_TLB_LOCAL_FLUSH_ONE, align 4
  %134 = load i64, i64* %11, align 8
  %135 = call i32 @count_vm_tlb_events(i32 %133, i64 %134)
  br label %136

136:                                              ; preds = %132, %129
  %137 = load i32, i32* %6, align 4
  %138 = load i64, i64* %11, align 8
  %139 = call i32 @trace_tlb_flush(i32 %137, i64 %138)
  br label %151

140:                                              ; preds = %93, %86, %68
  %141 = call i32 (...) @local_flush_tlb()
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* @NR_TLB_LOCAL_FLUSH_ALL, align 4
  %146 = call i32 @count_vm_tlb_event(i32 %145)
  br label %147

147:                                              ; preds = %144, %140
  %148 = load i32, i32* %6, align 4
  %149 = load i64, i64* @TLB_FLUSH_ALL, align 8
  %150 = call i32 @trace_tlb_flush(i32 %148, i64 %149)
  br label %151

151:                                              ; preds = %147, %136
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpu_tlbstate, i32 0, i32 0), align 8
  %153 = load i64, i64* %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i64, i64* %9, align 8
  %158 = call i32 @this_cpu_write(i32 %156, i64 %157)
  br label %159

159:                                              ; preds = %151, %65, %56, %38
  ret void
}

declare dso_local i64 @this_cpu_read(i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @VM_WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @switch_mm_irqs_off(i32*, %struct.mm_struct*, i32*) #1

declare dso_local i32 @trace_tlb_flush(i32, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__flush_tlb_one_user(i64) #1

declare dso_local i32 @count_vm_tlb_events(i32, i64) #1

declare dso_local i32 @local_flush_tlb(...) #1

declare dso_local i32 @count_vm_tlb_event(i32) #1

declare dso_local i32 @this_cpu_write(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
