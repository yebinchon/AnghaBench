; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_cpu_cache_wbinval_range_check.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_cpu_cache_wbinval_range_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vm_area_struct = type { i32 }

@L1_cache_info = common dso_local global %struct.TYPE_2__* null, align 8
@DCACHE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_cache_wbinval_range_check(%struct.vm_area_struct* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %171

20:                                               ; preds = %16, %5
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @L1_cache_info, align 8
  %22 = load i64, i64* @DCACHE, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %11, align 8
  %28 = sub i64 %27, 1
  %29 = xor i64 %28, -1
  %30 = and i64 %26, %29
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %31, %32
  %34 = sub i64 %33, 1
  %35 = load i64, i64* %11, align 8
  %36 = sub i64 %35, 1
  %37 = xor i64 %36, -1
  %38 = and i64 %34, %37
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %39, %40
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = mul nsw i32 8, %42
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %41, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %20
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (...) @cpu_dcache_wbinval_all()
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (...) @cpu_icache_inval_all()
  br label %56

56:                                               ; preds = %54, %51
  br label %171

57:                                               ; preds = %20
  %58 = load i64, i64* %7, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %58, %60
  %62 = load i64, i64* @PAGE_MASK, align 8
  %63 = and i64 %61, %62
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub i64 %64, 1
  %66 = load i64, i64* @PAGE_MASK, align 8
  %67 = and i64 %65, %66
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @PAGE_MASK, align 8
  %70 = and i64 %68, %69
  %71 = load i64, i64* %13, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %57
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @va_present(i32 %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @cpu_dcache_wbinval_range(i64 %84, i64 %85)
  br label %87

87:                                               ; preds = %83, %80
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @cpu_icache_inval_range(i64 %91, i64 %92)
  br label %94

94:                                               ; preds = %90, %87
  br label %95

95:                                               ; preds = %94, %73
  br label %171

96:                                               ; preds = %57
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %98 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* %7, align 8
  %101 = call i64 @va_present(i32 %99, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %96
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %12, align 8
  %109 = call i32 @cpu_dcache_wbinval_range(i64 %107, i64 %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @cpu_icache_inval_range(i64 %114, i64 %115)
  br label %117

117:                                              ; preds = %113, %110
  br label %118

118:                                              ; preds = %117, %96
  %119 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %120 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %8, align 8
  %123 = sub i64 %122, 1
  %124 = call i64 @va_present(i32 %121, i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %118
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @cpu_dcache_wbinval_range(i64 %130, i64 %131)
  br label %133

133:                                              ; preds = %129, %126
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* %8, align 8
  %139 = call i32 @cpu_icache_inval_range(i64 %137, i64 %138)
  br label %140

140:                                              ; preds = %136, %133
  br label %141

141:                                              ; preds = %140, %118
  br label %142

142:                                              ; preds = %166, %141
  %143 = load i64, i64* %12, align 8
  %144 = load i64, i64* %13, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %171

146:                                              ; preds = %142
  %147 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %148 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i64, i64* %12, align 8
  %151 = call i64 @va_present(i32 %149, i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %146
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i64, i64* %12, align 8
  %158 = call i32 @cpu_dcache_wbinval_page(i64 %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i64, i64* %12, align 8
  %164 = call i32 @cpu_icache_inval_page(i64 %163)
  br label %165

165:                                              ; preds = %162, %159
  br label %166

166:                                              ; preds = %165, %146
  %167 = load i32, i32* @PAGE_SIZE, align 4
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* %12, align 8
  %170 = add i64 %169, %168
  store i64 %170, i64* %12, align 8
  br label %142

171:                                              ; preds = %19, %56, %95, %142
  ret void
}

declare dso_local i32 @cpu_dcache_wbinval_all(...) #1

declare dso_local i32 @cpu_icache_inval_all(...) #1

declare dso_local i64 @va_present(i32, i64) #1

declare dso_local i32 @cpu_dcache_wbinval_range(i64, i64) #1

declare dso_local i32 @cpu_icache_inval_range(i64, i64) #1

declare dso_local i32 @cpu_dcache_wbinval_page(i64) #1

declare dso_local i32 @cpu_icache_inval_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
