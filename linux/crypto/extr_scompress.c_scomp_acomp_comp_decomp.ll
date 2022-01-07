; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_scompress.c_scomp_acomp_comp_decomp.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_scompress.c_scomp_acomp_comp_decomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acomp_req = type { i32, i32, i32, i32 }
%struct.crypto_acomp = type { i32 }
%struct.crypto_scomp = type { i32 }
%struct.scomp_scratch = type { i32, i32, i32 }

@SCOMP_SCRATCH_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@scomp_scratch = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acomp_req*, i32)* @scomp_acomp_comp_decomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scomp_acomp_comp_decomp(%struct.acomp_req* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acomp_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_acomp*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.crypto_scomp*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.scomp_scratch*, align 8
  %11 = alloca i32, align 4
  store %struct.acomp_req* %0, %struct.acomp_req** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %13 = call %struct.crypto_acomp* @crypto_acomp_reqtfm(%struct.acomp_req* %12)
  store %struct.crypto_acomp* %13, %struct.crypto_acomp** %6, align 8
  %14 = load %struct.crypto_acomp*, %struct.crypto_acomp** %6, align 8
  %15 = call i8** @acomp_tfm_ctx(%struct.crypto_acomp* %14)
  store i8** %15, i8*** %7, align 8
  %16 = load i8**, i8*** %7, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.crypto_scomp*
  store %struct.crypto_scomp* %18, %struct.crypto_scomp** %8, align 8
  %19 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %20 = call i8** @acomp_request_ctx(%struct.acomp_req* %19)
  store i8** %20, i8*** %9, align 8
  %21 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %22 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %27 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %32 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SCOMP_SCRATCH_SIZE, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %25, %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %157

39:                                               ; preds = %30
  %40 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %41 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %46 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %157

52:                                               ; preds = %44, %39
  %53 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %54 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %59 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SCOMP_SCRATCH_SIZE, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57, %52
  %64 = load i32, i32* @SCOMP_SCRATCH_SIZE, align 4
  %65 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %66 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = call %struct.scomp_scratch* @raw_cpu_ptr(i32* @scomp_scratch)
  store %struct.scomp_scratch* %68, %struct.scomp_scratch** %10, align 8
  %69 = load %struct.scomp_scratch*, %struct.scomp_scratch** %10, align 8
  %70 = getelementptr inbounds %struct.scomp_scratch, %struct.scomp_scratch* %69, i32 0, i32 0
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load %struct.scomp_scratch*, %struct.scomp_scratch** %10, align 8
  %73 = getelementptr inbounds %struct.scomp_scratch, %struct.scomp_scratch* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %76 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %79 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @scatterwalk_map_and_copy(i32 %74, i32 %77, i32 0, i32 %80, i32 0)
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %67
  %85 = load %struct.crypto_scomp*, %struct.crypto_scomp** %8, align 8
  %86 = load %struct.scomp_scratch*, %struct.scomp_scratch** %10, align 8
  %87 = getelementptr inbounds %struct.scomp_scratch, %struct.scomp_scratch* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %90 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.scomp_scratch*, %struct.scomp_scratch** %10, align 8
  %93 = getelementptr inbounds %struct.scomp_scratch, %struct.scomp_scratch* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %96 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %95, i32 0, i32 0
  %97 = load i8**, i8*** %9, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @crypto_scomp_compress(%struct.crypto_scomp* %85, i32 %88, i32 %91, i32 %94, i32* %96, i8* %98)
  store i32 %99, i32* %11, align 4
  br label %116

100:                                              ; preds = %67
  %101 = load %struct.crypto_scomp*, %struct.crypto_scomp** %8, align 8
  %102 = load %struct.scomp_scratch*, %struct.scomp_scratch** %10, align 8
  %103 = getelementptr inbounds %struct.scomp_scratch, %struct.scomp_scratch* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %106 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.scomp_scratch*, %struct.scomp_scratch** %10, align 8
  %109 = getelementptr inbounds %struct.scomp_scratch, %struct.scomp_scratch* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %112 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %111, i32 0, i32 0
  %113 = load i8**, i8*** %9, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @crypto_scomp_decompress(%struct.crypto_scomp* %101, i32 %104, i32 %107, i32 %110, i32* %112, i8* %114)
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %100, %84
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %151, label %119

119:                                              ; preds = %116
  %120 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %121 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %140, label %124

124:                                              ; preds = %119
  %125 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %126 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @GFP_ATOMIC, align 4
  %129 = call i32 @sgl_alloc(i32 %127, i32 %128, i32* null)
  %130 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %131 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %133 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %124
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %11, align 4
  br label %152

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %139, %119
  %141 = load %struct.scomp_scratch*, %struct.scomp_scratch** %10, align 8
  %142 = getelementptr inbounds %struct.scomp_scratch, %struct.scomp_scratch* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %145 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.acomp_req*, %struct.acomp_req** %4, align 8
  %148 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @scatterwalk_map_and_copy(i32 %143, i32 %146, i32 0, i32 %149, i32 1)
  br label %151

151:                                              ; preds = %140, %116
  br label %152

152:                                              ; preds = %151, %136
  %153 = load %struct.scomp_scratch*, %struct.scomp_scratch** %10, align 8
  %154 = getelementptr inbounds %struct.scomp_scratch, %struct.scomp_scratch* %153, i32 0, i32 0
  %155 = call i32 @spin_unlock(i32* %154)
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %152, %49, %36
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.crypto_acomp* @crypto_acomp_reqtfm(%struct.acomp_req*) #1

declare dso_local i8** @acomp_tfm_ctx(%struct.crypto_acomp*) #1

declare dso_local i8** @acomp_request_ctx(%struct.acomp_req*) #1

declare dso_local %struct.scomp_scratch* @raw_cpu_ptr(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_scomp_compress(%struct.crypto_scomp*, i32, i32, i32, i32*, i8*) #1

declare dso_local i32 @crypto_scomp_decompress(%struct.crypto_scomp*, i32, i32, i32, i32*, i8*) #1

declare dso_local i32 @sgl_alloc(i32, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
