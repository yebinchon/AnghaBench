; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_pack.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_local_copy = type { i32, i32, i32, i32, i32, i32* }

@CACHE_LOCAL_COPY_FLAG_LAST = common dso_local global i32 0, align 4
@CACHE_LOCAL_COPY_FLAG_INT = common dso_local global i32 0, align 4
@CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK = common dso_local global i32 0, align 4
@CACHE_LOCAL_COPY_FLAG_MONTHLY_COUNTER = common dso_local global i32 0, align 4
@amortization_counter_types = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_local_copy_pack(%struct.cache_local_copy* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_local_copy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cache_local_copy* %0, %struct.cache_local_copy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %206

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 2
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %32, %16
  %20 = load i32, i32* %10, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_LAST, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.cache_local_copy*, %struct.cache_local_copy** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %25, i64 %27
  %29 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %24
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %10, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_LAST, align 4
  %37 = load %struct.cache_local_copy*, %struct.cache_local_copy** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %37, i64 %40
  %42 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %36
  store i32 %44, i32* %42, align 8
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %201, %35
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %204

49:                                               ; preds = %45
  %50 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_INT, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.cache_local_copy*, %struct.cache_local_copy** %6, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %52, i64 %54
  %56 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %51
  store i32 %58, i32* %56, align 8
  %59 = load %struct.cache_local_copy*, %struct.cache_local_copy** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %59, i64 %61
  %63 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %49
  %67 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_INT, align 4
  %68 = load %struct.cache_local_copy*, %struct.cache_local_copy** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %68, i64 %70
  %72 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %67
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %66, %49
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 -1, i32* %5, align 4
  br label %206

81:                                               ; preds = %75
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load %struct.cache_local_copy*, %struct.cache_local_copy** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %86, i64 %88
  %90 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %89, i32 0, i32 0
  %91 = call i32 @memcpy(i8* %85, i32* %90, i32 4)
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 4
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %81
  store i32 -1, i32* %5, align 4
  br label %206

99:                                               ; preds = %81
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load %struct.cache_local_copy*, %struct.cache_local_copy** %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %104, i64 %106
  %108 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %107, i32 0, i32 2
  %109 = call i32 @memcpy(i8* %103, i32* %108, i32 4)
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 4
  store i32 %111, i32* %11, align 4
  %112 = load %struct.cache_local_copy*, %struct.cache_local_copy** %6, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %112, i64 %114
  %116 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %99
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32 -1, i32* %5, align 4
  br label %206

127:                                              ; preds = %121
  %128 = load i8*, i8** %8, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load %struct.cache_local_copy*, %struct.cache_local_copy** %6, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %132, i64 %134
  %136 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %135, i32 0, i32 4
  %137 = call i32 @memcpy(i8* %131, i32* %136, i32 4)
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 4
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %127, %99
  %141 = load %struct.cache_local_copy*, %struct.cache_local_copy** %6, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %141, i64 %143
  %145 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_INT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %169

150:                                              ; preds = %140
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  store i32 -1, i32* %5, align 4
  br label %206

156:                                              ; preds = %150
  %157 = load i8*, i8** %8, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load %struct.cache_local_copy*, %struct.cache_local_copy** %6, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %161, i64 %163
  %165 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %164, i32 0, i32 1
  %166 = call i32 @memcpy(i8* %160, i32* %165, i32 4)
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 4
  store i32 %168, i32* %11, align 4
  br label %200

169:                                              ; preds = %140
  %170 = load %struct.cache_local_copy*, %struct.cache_local_copy** %6, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %170, i64 %172
  %174 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %173, i32 0, i32 5
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @strlen(i32* %175)
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %178, %179
  %181 = load i32, i32* %9, align 4
  %182 = icmp sgt i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %169
  store i32 -1, i32* %5, align 4
  br label %206

184:                                              ; preds = %169
  %185 = load i8*, i8** %8, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load %struct.cache_local_copy*, %struct.cache_local_copy** %6, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %189, i64 %191
  %193 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %192, i32 0, i32 5
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @memcpy(i8* %188, i32* %194, i32 %195)
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %11, align 4
  br label %200

200:                                              ; preds = %184, %156
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %45

204:                                              ; preds = %45
  %205 = load i32, i32* %11, align 4
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %204, %183, %155, %126, %98, %80, %15
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
