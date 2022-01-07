; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_init_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_init_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@log_ts_exact_interval = common dso_local global i32 0, align 4
@h_pref = common dso_local global i32 0, align 4
@h_id = common dso_local global i32 0, align 4
@header = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ratingT = common dso_local global i32 0, align 4
@use_stemmer = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@STAT_ST = common dso_local global i32 0, align 4
@qr = common dso_local global i32 0, align 4
@q_entry = common dso_local global %struct.TYPE_3__* null, align 8
@q_rev = common dso_local global i8* null, align 8
@hp = common dso_local global i32* null, align 8
@MAX_S_LEN = common dso_local global i32 0, align 4
@H_MUL = common dso_local global i32 0, align 4
@alph = common dso_local global i8* null, align 8
@alph_n = common dso_local global i32 0, align 4
@short_distance_errors = common dso_local global i32 0, align 4
@common_spelling_errors = common dso_local global i32 0, align 4
@prob = common dso_local global double** null, align 8
@h_word = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* @log_ts_exact_interval, align 4
  %6 = call i32 @hmap_ll_int_init(i32* @h_pref)
  %7 = call i32 @hmap_ll_int_init(i32* @h_id)
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @load_index(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @header, i32 0, i32 4), align 4
  store i32 %10, i32* @ratingT, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @header, i32 0, i32 3), align 4
  store i32 %11, i32* @use_stemmer, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @header, i32 0, i32 2), align 4
  store i32 %12, i32* @jump_log_ts, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @header, i32 0, i32 1), align 4
  store i32 %13, i32* @jump_log_pos, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @header, i32 0, i32 0), align 4
  store i32 %14, i32* @jump_log_crc32, align 4
  %15 = load i32, i32* @STAT_ST, align 4
  store i32 %15, i32* @qr, align 4
  %16 = load i32, i32* @STAT_ST, align 4
  %17 = load i32, i32* @qr, align 4
  %18 = add nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = call i8* @dl_malloc0(i32 %21)
  %23 = bitcast i8* %22 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** @q_entry, align 8
  %24 = load i32, i32* @qr, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = call i8* @dl_malloc0(i32 %27)
  store i8* %28, i8** @q_rev, align 8
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %46, %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @STAT_ST, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @q_entry, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @q_entry, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %40, i32* %45, align 4
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %29

49:                                               ; preds = %29
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @q_entry, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @q_entry, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i32*, i32** @hp, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 1, i32* %57, align 4
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %75, %49
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @MAX_S_LEN, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load i32*, i32** @hp, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @H_MUL, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32*, i32** @hp, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %58

78:                                               ; preds = %58
  %79 = load i8*, i8** @alph, align 8
  %80 = load i32, i32* @alph_n, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @alph_n, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8 63, i8* %83, align 1
  %84 = load i32, i32* @short_distance_errors, align 4
  %85 = call i32 @process_errors(i32 %84, double 5.000000e-01)
  %86 = load i32, i32* @common_spelling_errors, align 4
  %87 = call i32 @process_errors(i32 %86, double 1.000000e+00)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %119, %78
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %89, 128
  br i1 %90, label %91, label %122

91:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %115, %91
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 128
  br i1 %94, label %95, label %118

95:                                               ; preds = %92
  %96 = load double**, double*** @prob, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double*, double** %96, i64 %98
  %100 = load double*, double** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %100, i64 %102
  %104 = load double, double* %103, align 8
  %105 = fadd double 1.000000e+00, %104
  %106 = fmul double %105, 5.000000e-01
  %107 = load double**, double*** @prob, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double*, double** %107, i64 %109
  %111 = load double*, double** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, double* %111, i64 %113
  store double %106, double* %114, align 8
  br label %115

115:                                              ; preds = %95
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %92

118:                                              ; preds = %92
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %88

122:                                              ; preds = %88
  %123 = call i32 (...) @stem_init()
  %124 = load i32, i32* %3, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = call i32 (...) @try_init_local_uid()
  br label %128

128:                                              ; preds = %126, %122
  ret i32 1
}

declare dso_local i32 @hmap_ll_int_init(i32*) #1

declare dso_local i32 @load_index(i32) #1

declare dso_local i8* @dl_malloc0(i32) #1

declare dso_local i32 @process_errors(i32, double) #1

declare dso_local i32 @stem_init(...) #1

declare dso_local i32 @try_init_local_uid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
