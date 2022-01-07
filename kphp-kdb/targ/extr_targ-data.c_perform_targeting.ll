; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_perform_targeting.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_perform_targeting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_targ_target = type { i64, i64, i32, i32* }
%struct.advert = type { i64, i32, i64 }

@MAX_QUERY_STRING_LEN = common dso_local global i64 0, align 8
@targeting_disabled = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"store_targeting(): ad_id=%d, ad_price=%d\0A\00", align 1
@ADF_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_targ_target*)* @perform_targeting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_targeting(%struct.lev_targ_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_targ_target*, align 8
  %4 = alloca %struct.advert*, align 8
  %5 = alloca i32, align 4
  store %struct.lev_targ_target* %0, %struct.lev_targ_target** %3, align 8
  %6 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %7 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %12 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %15 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %10, %1
  %22 = phi i1 [ false, %1 ], [ %20, %10 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %26 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MAX_QUERY_STRING_LEN, align 8
  %29 = icmp ule i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %33 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %21
  %37 = load i64, i64* @targeting_disabled, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %36, %21
  %40 = load i32, i32* @verbosity, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32, i32* @stderr, align 4
  %44 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %45 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %48 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %46, i32 %49)
  br label %51

51:                                               ; preds = %42, %39
  %52 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %53 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 15, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %2, align 4
  br label %180

57:                                               ; preds = %36
  %58 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %59 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %64 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ false, %57 ], [ %66, %62 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %72 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call %struct.advert* @get_ad_f(i64 %73, i32 1)
  store %struct.advert* %74, %struct.advert** %4, align 8
  %75 = load %struct.advert*, %struct.advert** %4, align 8
  %76 = icmp ne %struct.advert* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %67
  store i32 -1, i32* %2, align 4
  br label %180

78:                                               ; preds = %67
  %79 = load %struct.advert*, %struct.advert** %4, align 8
  %80 = call i32 @load_ancient_ad(%struct.advert* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %180

85:                                               ; preds = %78
  %86 = load %struct.advert*, %struct.advert** %4, align 8
  %87 = getelementptr inbounds %struct.advert, %struct.advert* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %90 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = icmp ne i64 %88, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %85
  %95 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %96 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %101 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = load %struct.advert*, %struct.advert** %4, align 8
  %105 = getelementptr inbounds %struct.advert, %struct.advert* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %99, %94, %85
  %107 = load %struct.advert*, %struct.advert** %4, align 8
  %108 = getelementptr inbounds %struct.advert, %struct.advert* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = load %struct.advert*, %struct.advert** %4, align 8
  %113 = getelementptr inbounds %struct.advert, %struct.advert* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %116 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = call i64 @strcmp(i64 %114, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %153

120:                                              ; preds = %111, %106
  %121 = load %struct.advert*, %struct.advert** %4, align 8
  %122 = call i32 @remove_queue_ad(%struct.advert* %121)
  %123 = load %struct.advert*, %struct.advert** %4, align 8
  %124 = call i32 @adjust_ctr_counters(%struct.advert* %123)
  %125 = load %struct.advert*, %struct.advert** %4, align 8
  %126 = getelementptr inbounds %struct.advert, %struct.advert* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %120
  %130 = load %struct.advert*, %struct.advert** %4, align 8
  %131 = getelementptr inbounds %struct.advert, %struct.advert* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @exact_strfree(i64 %132)
  br label %134

134:                                              ; preds = %129, %120
  %135 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %136 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %139 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i64 @exact_strdup(i32* %137, i32 %141)
  %143 = load %struct.advert*, %struct.advert** %4, align 8
  %144 = getelementptr inbounds %struct.advert, %struct.advert* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  %145 = load %struct.advert*, %struct.advert** %4, align 8
  %146 = getelementptr inbounds %struct.advert, %struct.advert* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %134
  %150 = load %struct.advert*, %struct.advert** %4, align 8
  %151 = call i32 @change_ad_target(%struct.advert* %150)
  br label %152

152:                                              ; preds = %149, %134
  br label %172

153:                                              ; preds = %111
  %154 = load %struct.advert*, %struct.advert** %4, align 8
  %155 = getelementptr inbounds %struct.advert, %struct.advert* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @ADF_ON, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %153
  %161 = load %struct.advert*, %struct.advert** %4, align 8
  %162 = getelementptr inbounds %struct.advert, %struct.advert* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load %struct.advert*, %struct.advert** %4, align 8
  %167 = load %struct.advert*, %struct.advert** %4, align 8
  %168 = getelementptr inbounds %struct.advert, %struct.advert* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @ad_enable(%struct.advert* %166, i64 %169)
  br label %171

171:                                              ; preds = %165, %160, %153
  br label %172

172:                                              ; preds = %171, %152
  %173 = load %struct.advert*, %struct.advert** %4, align 8
  %174 = call i32 @compute_estimated_gain(%struct.advert* %173)
  %175 = load %struct.lev_targ_target*, %struct.lev_targ_target** %3, align 8
  %176 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add i64 15, %177
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %172, %83, %77, %51
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i32) #1

declare dso_local %struct.advert* @get_ad_f(i64, i32) #1

declare dso_local i32 @load_ancient_ad(%struct.advert*) #1

declare dso_local i64 @strcmp(i64, i32*) #1

declare dso_local i32 @remove_queue_ad(%struct.advert*) #1

declare dso_local i32 @adjust_ctr_counters(%struct.advert*) #1

declare dso_local i32 @exact_strfree(i64) #1

declare dso_local i64 @exact_strdup(i32*, i32) #1

declare dso_local i32 @change_ad_target(%struct.advert*) #1

declare dso_local i32 @ad_enable(%struct.advert*, i64) #1

declare dso_local i32 @compute_estimated_gain(%struct.advert*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
