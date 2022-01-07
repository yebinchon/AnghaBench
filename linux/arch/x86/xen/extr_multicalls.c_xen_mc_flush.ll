; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_multicalls.c_xen_mc_flush.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_multicalls.c_xen_mc_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc_buffer = type { i32, i64, i32, %struct.callback*, %struct.multicall_entry*, i32*, %struct.TYPE_2__* }
%struct.callback = type { i32, i32 (i32)* }
%struct.multicall_entry = type { i64, i32*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@mc_buffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%d of %d multicall(s) failed: cpu %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"  call %2d: op=%lu arg=[%lx] result=%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_mc_flush() #0 {
  %1 = alloca %struct.mc_buffer*, align 8
  %2 = alloca %struct.multicall_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.callback*, align 8
  %7 = call %struct.mc_buffer* @this_cpu_ptr(i32* @mc_buffer)
  store %struct.mc_buffer* %7, %struct.mc_buffer** %1, align 8
  store i32 0, i32* %3, align 4
  %8 = call i32 (...) @preemptible()
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %13 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %16 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %19 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @trace_xen_mc_flush(i32 %14, i64 %17, i32 %20)
  %22 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %23 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %73 [
    i32 0, label %25
    i32 1, label %32
  ]

25:                                               ; preds = %0
  %26 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %27 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  br label %109

32:                                               ; preds = %0
  %33 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %34 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %33, i32 0, i32 4
  %35 = load %struct.multicall_entry*, %struct.multicall_entry** %34, align 8
  %36 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %35, i64 0
  store %struct.multicall_entry* %36, %struct.multicall_entry** %2, align 8
  %37 = load %struct.multicall_entry*, %struct.multicall_entry** %2, align 8
  %38 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.multicall_entry*, %struct.multicall_entry** %2, align 8
  %41 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.multicall_entry*, %struct.multicall_entry** %2, align 8
  %46 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.multicall_entry*, %struct.multicall_entry** %2, align 8
  %51 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.multicall_entry*, %struct.multicall_entry** %2, align 8
  %56 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.multicall_entry*, %struct.multicall_entry** %2, align 8
  %61 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @xen_single_call(i32 %39, i32 %44, i32 %49, i32 %54, i32 %59, i32 %64)
  %66 = load %struct.multicall_entry*, %struct.multicall_entry** %2, align 8
  %67 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.multicall_entry*, %struct.multicall_entry** %2, align 8
  %69 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %109

73:                                               ; preds = %0
  %74 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %75 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %74, i32 0, i32 4
  %76 = load %struct.multicall_entry*, %struct.multicall_entry** %75, align 8
  %77 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %78 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @HYPERVISOR_multicall(%struct.multicall_entry* %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = call i32 (...) @BUG()
  br label %84

84:                                               ; preds = %82, %73
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %105, %84
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %88 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %85
  %92 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %93 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %92, i32 0, i32 4
  %94 = load %struct.multicall_entry*, %struct.multicall_entry** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %94, i64 %96
  %98 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %101, %91
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %85

108:                                              ; preds = %85
  br label %109

109:                                              ; preds = %108, %32, %25
  %110 = load i32, i32* %3, align 4
  %111 = call i64 @WARN_ON(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %171

113:                                              ; preds = %109
  %114 = load i32, i32* %3, align 4
  %115 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %116 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (...) @smp_processor_id()
  %119 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %117, i32 %118)
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %167, %113
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %123 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %170

126:                                              ; preds = %120
  %127 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %128 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %127, i32 0, i32 4
  %129 = load %struct.multicall_entry*, %struct.multicall_entry** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %129, i64 %131
  %133 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %166

136:                                              ; preds = %126
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  %139 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %140 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %139, i32 0, i32 4
  %141 = load %struct.multicall_entry*, %struct.multicall_entry** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %141, i64 %143
  %145 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %148 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %147, i32 0, i32 4
  %149 = load %struct.multicall_entry*, %struct.multicall_entry** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %149, i64 %151
  %153 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %158 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %157, i32 0, i32 4
  %159 = load %struct.multicall_entry*, %struct.multicall_entry** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %159, i64 %161
  %163 = getelementptr inbounds %struct.multicall_entry, %struct.multicall_entry* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %146, i32 %156, i64 %164)
  br label %166

166:                                              ; preds = %136, %126
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %120

170:                                              ; preds = %120
  br label %171

171:                                              ; preds = %170, %109
  %172 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %173 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  %174 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %175 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %174, i32 0, i32 1
  store i64 0, i64* %175, align 8
  store i32 0, i32* %5, align 4
  br label %176

176:                                              ; preds = %196, %171
  %177 = load i32, i32* %5, align 4
  %178 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %179 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %199

182:                                              ; preds = %176
  %183 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %184 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %183, i32 0, i32 3
  %185 = load %struct.callback*, %struct.callback** %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.callback, %struct.callback* %185, i64 %187
  store %struct.callback* %188, %struct.callback** %6, align 8
  %189 = load %struct.callback*, %struct.callback** %6, align 8
  %190 = getelementptr inbounds %struct.callback, %struct.callback* %189, i32 0, i32 1
  %191 = load i32 (i32)*, i32 (i32)** %190, align 8
  %192 = load %struct.callback*, %struct.callback** %6, align 8
  %193 = getelementptr inbounds %struct.callback, %struct.callback* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 %191(i32 %194)
  br label %196

196:                                              ; preds = %182
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %5, align 4
  br label %176

199:                                              ; preds = %176
  %200 = load %struct.mc_buffer*, %struct.mc_buffer** %1, align 8
  %201 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %200, i32 0, i32 2
  store i32 0, i32* %201, align 8
  %202 = load i64, i64* %4, align 8
  %203 = call i32 @local_irq_restore(i64 %202)
  ret void
}

declare dso_local %struct.mc_buffer* @this_cpu_ptr(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @preemptible(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @trace_xen_mc_flush(i32, i64, i32) #1

declare dso_local i64 @xen_single_call(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HYPERVISOR_multicall(%struct.multicall_entry*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
