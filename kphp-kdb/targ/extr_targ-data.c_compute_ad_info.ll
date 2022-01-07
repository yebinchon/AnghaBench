; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_ad_info.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_ad_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_ad_info(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.advert*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.advert* @get_ad_f(i32 %7, i32 0)
  store %struct.advert* %8, %struct.advert** %6, align 8
  %9 = load %struct.advert*, %struct.advert** %6, align 8
  %10 = icmp ne %struct.advert* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %219

12:                                               ; preds = %2
  %13 = load %struct.advert*, %struct.advert** %6, align 8
  %14 = getelementptr inbounds %struct.advert, %struct.advert* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.advert*, %struct.advert** %6, align 8
  %19 = getelementptr inbounds %struct.advert, %struct.advert* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %5, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.advert*, %struct.advert** %6, align 8
  %24 = getelementptr inbounds %struct.advert, %struct.advert* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.advert*, %struct.advert** %6, align 8
  %29 = getelementptr inbounds %struct.advert, %struct.advert* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 3
  store i64 %30, i64* %32, align 8
  %33 = load %struct.advert*, %struct.advert** %6, align 8
  %34 = getelementptr inbounds %struct.advert, %struct.advert* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %5, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 4
  store i64 %35, i64* %37, align 8
  %38 = load %struct.advert*, %struct.advert** %6, align 8
  %39 = getelementptr inbounds %struct.advert, %struct.advert* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %5, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 5
  store i64 %40, i64* %42, align 8
  %43 = load %struct.advert*, %struct.advert** %6, align 8
  %44 = getelementptr inbounds %struct.advert, %struct.advert* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %5, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 6
  store i64 %45, i64* %47, align 8
  %48 = load %struct.advert*, %struct.advert** %6, align 8
  %49 = getelementptr inbounds %struct.advert, %struct.advert* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %5, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 7
  store i64 %50, i64* %52, align 8
  %53 = load %struct.advert*, %struct.advert** %6, align 8
  %54 = getelementptr inbounds %struct.advert, %struct.advert* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %5, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 8
  store i64 %55, i64* %57, align 8
  %58 = load %struct.advert*, %struct.advert** %6, align 8
  %59 = getelementptr inbounds %struct.advert, %struct.advert* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %5, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 9
  store i64 %60, i64* %62, align 8
  %63 = load %struct.advert*, %struct.advert** %6, align 8
  %64 = getelementptr inbounds %struct.advert, %struct.advert* %63, i32 0, i32 10
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %5, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 10
  store i64 %65, i64* %67, align 8
  %68 = load %struct.advert*, %struct.advert** %6, align 8
  %69 = getelementptr inbounds %struct.advert, %struct.advert* %68, i32 0, i32 11
  %70 = load i32, i32* %69, align 8
  %71 = sitofp i32 %70 to double
  %72 = fmul double %71, 1.000000e+09
  %73 = fptosi double %72 to i64
  %74 = load i64*, i64** %5, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 11
  store i64 %73, i64* %75, align 8
  %76 = load %struct.advert*, %struct.advert** %6, align 8
  %77 = getelementptr inbounds %struct.advert, %struct.advert* %76, i32 0, i32 12
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %5, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 12
  store i64 %78, i64* %80, align 8
  %81 = load %struct.advert*, %struct.advert** %6, align 8
  %82 = getelementptr inbounds %struct.advert, %struct.advert* %81, i32 0, i32 13
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %5, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 13
  store i64 %83, i64* %85, align 8
  %86 = load %struct.advert*, %struct.advert** %6, align 8
  %87 = getelementptr inbounds %struct.advert, %struct.advert* %86, i32 0, i32 14
  %88 = load i32, i32* %87, align 8
  %89 = sitofp i32 %88 to double
  %90 = fmul double %89, 1.000000e+09
  %91 = fadd double %90, 5.000000e-01
  %92 = fptosi double %91 to i64
  %93 = load i64*, i64** %5, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 14
  store i64 %92, i64* %94, align 8
  %95 = load %struct.advert*, %struct.advert** %6, align 8
  %96 = getelementptr inbounds %struct.advert, %struct.advert* %95, i32 0, i32 15
  %97 = load i32, i32* %96, align 4
  %98 = sitofp i32 %97 to double
  %99 = fmul double %98, 1.000000e+09
  %100 = fadd double %99, 5.000000e-01
  %101 = fptosi double %100 to i64
  %102 = load i64*, i64** %5, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 15
  store i64 %101, i64* %103, align 8
  %104 = load %struct.advert*, %struct.advert** %6, align 8
  %105 = getelementptr inbounds %struct.advert, %struct.advert* %104, i32 0, i32 16
  %106 = load i32, i32* %105, align 8
  %107 = sitofp i32 %106 to double
  %108 = fmul double %107, 1.000000e+09
  %109 = fadd double %108, 5.000000e-01
  %110 = fptosi double %109 to i64
  %111 = load i64*, i64** %5, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 16
  store i64 %110, i64* %112, align 8
  %113 = load %struct.advert*, %struct.advert** %6, align 8
  %114 = getelementptr inbounds %struct.advert, %struct.advert* %113, i32 0, i32 17
  %115 = load i32, i32* %114, align 4
  %116 = sitofp i32 %115 to double
  %117 = fmul double %116, 1.000000e+09
  %118 = fadd double %117, 5.000000e-01
  %119 = fptosi double %118 to i64
  %120 = load i64*, i64** %5, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 17
  store i64 %119, i64* %121, align 8
  %122 = load %struct.advert*, %struct.advert** %6, align 8
  %123 = getelementptr inbounds %struct.advert, %struct.advert* %122, i32 0, i32 18
  %124 = load i32, i32* %123, align 8
  %125 = sitofp i32 %124 to double
  %126 = fmul double %125, 1.000000e+09
  %127 = fadd double %126, 5.000000e-01
  %128 = fptosi double %127 to i64
  %129 = load i64*, i64** %5, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 18
  store i64 %128, i64* %130, align 8
  %131 = load %struct.advert*, %struct.advert** %6, align 8
  %132 = getelementptr inbounds %struct.advert, %struct.advert* %131, i32 0, i32 19
  %133 = load i32, i32* %132, align 4
  %134 = sitofp i32 %133 to double
  %135 = fmul double %134, 1.000000e+09
  %136 = fadd double %135, 5.000000e-01
  %137 = fptosi double %136 to i64
  %138 = load i64*, i64** %5, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 19
  store i64 %137, i64* %139, align 8
  %140 = load %struct.advert*, %struct.advert** %6, align 8
  %141 = getelementptr inbounds %struct.advert, %struct.advert* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %174

144:                                              ; preds = %12
  %145 = load %struct.advert*, %struct.advert** %6, align 8
  %146 = getelementptr inbounds %struct.advert, %struct.advert* %145, i32 0, i32 20
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = load %struct.advert*, %struct.advert** %6, align 8
  %150 = getelementptr inbounds %struct.advert, %struct.advert* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = sdiv i64 %148, %151
  %153 = sitofp i64 %152 to double
  %154 = fmul double %153, 1.000000e+09
  %155 = fptosi double %154 to i64
  %156 = load i64*, i64** %5, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 20
  store i64 %155, i64* %157, align 8
  %158 = load %struct.advert*, %struct.advert** %6, align 8
  %159 = getelementptr inbounds %struct.advert, %struct.advert* %158, i32 0, i32 21
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.advert*, %struct.advert** %6, align 8
  %163 = getelementptr inbounds %struct.advert, %struct.advert* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = sdiv i64 %161, %164
  %166 = sitofp i64 %165 to double
  %167 = call i32 @sqrt(i32 3)
  %168 = sitofp i32 %167 to double
  %169 = fdiv double 1.000000e+09, %168
  %170 = fmul double %166, %169
  %171 = fptosi double %170 to i64
  %172 = load i64*, i64** %5, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 21
  store i64 %171, i64* %173, align 8
  br label %179

174:                                              ; preds = %12
  %175 = load i64*, i64** %5, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 21
  store i64 0, i64* %176, align 8
  %177 = load i64*, i64** %5, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 20
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %174, %144
  %180 = load %struct.advert*, %struct.advert** %6, align 8
  %181 = getelementptr inbounds %struct.advert, %struct.advert* %180, i32 0, i32 22
  %182 = load i64, i64* %181, align 8
  %183 = load i64*, i64** %5, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 22
  store i64 %182, i64* %184, align 8
  %185 = load %struct.advert*, %struct.advert** %6, align 8
  %186 = getelementptr inbounds %struct.advert, %struct.advert* %185, i32 0, i32 23
  %187 = load i64, i64* %186, align 8
  %188 = load i64*, i64** %5, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 23
  store i64 %187, i64* %189, align 8
  %190 = load %struct.advert*, %struct.advert** %6, align 8
  %191 = getelementptr inbounds %struct.advert, %struct.advert* %190, i32 0, i32 24
  %192 = load i32, i32* %191, align 8
  %193 = sitofp i32 %192 to double
  %194 = fmul double %193, 1.000000e+06
  %195 = fadd double %194, 5.000000e-01
  %196 = fptosi double %195 to i64
  %197 = load i64*, i64** %5, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 24
  store i64 %196, i64* %198, align 8
  %199 = load %struct.advert*, %struct.advert** %6, align 8
  %200 = getelementptr inbounds %struct.advert, %struct.advert* %199, i32 0, i32 25
  %201 = load i64, i64* %200, align 8
  %202 = load i64*, i64** %5, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 25
  store i64 %201, i64* %203, align 8
  %204 = load %struct.advert*, %struct.advert** %6, align 8
  %205 = getelementptr inbounds %struct.advert, %struct.advert* %204, i32 0, i32 26
  %206 = load i64, i64* %205, align 8
  %207 = load i64*, i64** %5, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 26
  store i64 %206, i64* %208, align 8
  %209 = load %struct.advert*, %struct.advert** %6, align 8
  %210 = getelementptr inbounds %struct.advert, %struct.advert* %209, i32 0, i32 27
  %211 = load i64, i64* %210, align 8
  %212 = load i64*, i64** %5, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 27
  store i64 %211, i64* %213, align 8
  %214 = load %struct.advert*, %struct.advert** %6, align 8
  %215 = getelementptr inbounds %struct.advert, %struct.advert* %214, i32 0, i32 28
  %216 = load i64, i64* %215, align 8
  %217 = load i64*, i64** %5, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 28
  store i64 %216, i64* %218, align 8
  store i32 29, i32* %3, align 4
  br label %219

219:                                              ; preds = %179, %11
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
