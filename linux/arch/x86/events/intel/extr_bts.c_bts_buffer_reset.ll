; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_bts_buffer_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_bts_buffer_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bts_buffer = type { i32, i64, i32, i64, i32, %struct.bts_phys*, i64 }
%struct.bts_phys = type { i64, i64, i64, i32 }
%struct.perf_output_handle = type { i32, i64, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@BTS_RECORD_SIZE = common dso_local global i64 0, align 8
@BTS_SAFETY_MARGIN = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bts_buffer*, %struct.perf_output_handle*)* @bts_buffer_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bts_buffer_reset(%struct.bts_buffer* %0, %struct.perf_output_handle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bts_buffer*, align 8
  %5 = alloca %struct.perf_output_handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bts_phys*, align 8
  %15 = alloca %struct.bts_phys*, align 8
  %16 = alloca i32, align 4
  store %struct.bts_buffer* %0, %struct.bts_buffer** %4, align 8
  store %struct.perf_output_handle* %1, %struct.perf_output_handle** %5, align 8
  %17 = load %struct.bts_buffer*, %struct.bts_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %215

22:                                               ; preds = %2
  %23 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %24 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bts_buffer*, %struct.bts_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PAGE_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %25, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %6, align 8
  %34 = load %struct.bts_buffer*, %struct.bts_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %34, i32 0, i32 5
  %36 = load %struct.bts_phys*, %struct.bts_phys** %35, align 8
  %37 = load %struct.bts_buffer*, %struct.bts_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %36, i64 %39
  store %struct.bts_phys* %40, %struct.bts_phys** %14, align 8
  %41 = load %struct.bts_phys*, %struct.bts_phys** %14, align 8
  %42 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.bts_phys*, %struct.bts_phys** %14, align 8
  %45 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = load %struct.bts_phys*, %struct.bts_phys** %14, align 8
  %49 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %47, %50
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %51, %52
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %57 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ugt i64 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %22
  %61 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %62 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @BTS_RECORD_SIZE, align 8
  %66 = urem i64 %64, %65
  %67 = load i64, i64* %7, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %60, %22
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @BTS_SAFETY_MARGIN, align 8
  %72 = icmp ule i64 %70, %71
  br i1 %72, label %73, label %180

73:                                               ; preds = %69
  %74 = load %struct.bts_buffer*, %struct.bts_buffer** %4, align 8
  %75 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 1
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.bts_buffer*, %struct.bts_buffer** %4, align 8
  %81 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp uge i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %84, %73
  %86 = load %struct.bts_buffer*, %struct.bts_buffer** %4, align 8
  %87 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %86, i32 0, i32 5
  %88 = load %struct.bts_phys*, %struct.bts_phys** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %88, i64 %90
  store %struct.bts_phys* %91, %struct.bts_phys** %15, align 8
  %92 = load %struct.bts_phys*, %struct.bts_phys** %14, align 8
  %93 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @buf_size(i32 %94)
  %96 = load %struct.bts_phys*, %struct.bts_phys** %14, align 8
  %97 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %95, %98
  %100 = load %struct.bts_phys*, %struct.bts_phys** %14, align 8
  %101 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %99, %102
  %104 = load %struct.bts_phys*, %struct.bts_phys** %15, align 8
  %105 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %103, %106
  store i64 %107, i64* %10, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %108, %109
  store i64 %110, i64* %11, align 8
  %111 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %112 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %11, align 8
  %115 = icmp uge i64 %113, %114
  br i1 %115, label %116, label %179

116:                                              ; preds = %85
  %117 = load %struct.bts_phys*, %struct.bts_phys** %15, align 8
  %118 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %11, align 8
  %122 = add i64 %120, %121
  %123 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %124 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ugt i64 %122, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %116
  %128 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %129 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %11, align 8
  %132 = sub i64 %130, %131
  store i64 %132, i64* %8, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* @BTS_RECORD_SIZE, align 8
  %135 = urem i64 %133, %134
  %136 = load i64, i64* %8, align 8
  %137 = sub i64 %136, %135
  store i64 %137, i64* %8, align 8
  br label %138

138:                                              ; preds = %127, %116
  %139 = load i64, i64* %8, align 8
  %140 = load i64, i64* %7, align 8
  %141 = icmp ugt i64 %139, %140
  br i1 %141, label %145, label %142

142:                                              ; preds = %138
  %143 = load i64, i64* %7, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %178, label %145

145:                                              ; preds = %142, %138
  %146 = load i64, i64* %9, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.bts_phys*, %struct.bts_phys** %14, align 8
  %150 = load i64, i64* %6, align 8
  %151 = call i32 @bts_buffer_pad_out(%struct.bts_phys* %149, i64 %150)
  br label %152

152:                                              ; preds = %148, %145
  %153 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %154 = load i64, i64* %11, align 8
  %155 = call i32 @perf_aux_output_skip(%struct.perf_output_handle* %153, i64 %154)
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %16, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* %16, align 4
  store i32 %159, i32* %3, align 4
  br label %215

160:                                              ; preds = %152
  %161 = load %struct.bts_phys*, %struct.bts_phys** %15, align 8
  store %struct.bts_phys* %161, %struct.bts_phys** %14, align 8
  %162 = load i64, i64* %8, align 8
  store i64 %162, i64* %7, align 8
  %163 = load %struct.bts_phys*, %struct.bts_phys** %14, align 8
  %164 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.bts_phys*, %struct.bts_phys** %14, align 8
  %167 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %165, %168
  store i64 %169, i64* %6, align 8
  %170 = load i32, i32* %13, align 4
  %171 = zext i32 %170 to i64
  %172 = load %struct.bts_buffer*, %struct.bts_buffer** %4, align 8
  %173 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  %174 = load %struct.bts_buffer*, %struct.bts_buffer** %4, align 8
  %175 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %174, i32 0, i32 4
  %176 = load i64, i64* %6, align 8
  %177 = call i32 @local_set(i32* %175, i64 %176)
  br label %178

178:                                              ; preds = %160, %142
  br label %179

179:                                              ; preds = %178, %85
  br label %180

180:                                              ; preds = %179, %69
  %181 = load i64, i64* @BTS_SAFETY_MARGIN, align 8
  %182 = load i64, i64* @BTS_RECORD_SIZE, align 8
  %183 = add i64 %181, %182
  %184 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %185 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %183, %186
  %188 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %189 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = sub i64 %187, %191
  store i64 %192, i64* %12, align 8
  %193 = load i64, i64* %7, align 8
  %194 = load i64, i64* %12, align 8
  %195 = icmp ugt i64 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %180
  %197 = load i64, i64* %12, align 8
  store i64 %197, i64* %7, align 8
  %198 = load i64, i64* %7, align 8
  %199 = load i64, i64* @BTS_RECORD_SIZE, align 8
  %200 = urem i64 %198, %199
  %201 = load i64, i64* %7, align 8
  %202 = sub i64 %201, %200
  store i64 %202, i64* %7, align 8
  br label %203

203:                                              ; preds = %196, %180
  %204 = load i64, i64* %6, align 8
  %205 = load i64, i64* %7, align 8
  %206 = add i64 %204, %205
  %207 = load %struct.bts_buffer*, %struct.bts_buffer** %4, align 8
  %208 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %207, i32 0, i32 3
  store i64 %206, i64* %208, align 8
  %209 = load i64, i64* %7, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %203
  %212 = load i32, i32* @ENOSPC, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %3, align 4
  br label %215

214:                                              ; preds = %203
  store i32 0, i32* %3, align 4
  br label %215

215:                                              ; preds = %214, %211, %158, %21
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i64 @buf_size(i32) #1

declare dso_local i32 @bts_buffer_pad_out(%struct.bts_phys*, i64) #1

declare dso_local i32 @perf_aux_output_skip(%struct.perf_output_handle*, i64) #1

declare dso_local i32 @local_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
