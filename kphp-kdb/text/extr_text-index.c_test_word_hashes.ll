; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_test_word_hashes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_test_word_hashes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_3__* }

@dyn_cur = common dso_local global i64 0, align 8
@PRIME = common dso_local global i32 0, align 4
@Words = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@dyn_top = common dso_local global i8* null, align 8
@hash_conflicts = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%d distinct words, %d distinct word hashes (%d conflicts)\0A\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"total word hash prefix size %lld, %.3f average; optimal total size %lld, %.3f average\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_word_hashes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 0, i64* %7, align 8
  %12 = load i64, i64* @dyn_cur, align 8
  %13 = add nsw i64 %12, 8
  %14 = inttoptr i64 %13 to i64*
  store i64* %14, i64** %5, align 8
  store i64* %14, i64** %6, align 8
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %51, %0
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @PRIME, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Words, i32 0, i32 0), align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %4, align 8
  br label %25

25:                                               ; preds = %46, %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %25
  %29 = load i64*, i64** %6, align 8
  %30 = bitcast i64* %29 to i8*
  %31 = getelementptr inbounds i8, i8* %30, i64 16
  %32 = load i8*, i8** @dyn_top, align 8
  %33 = icmp ule i8* %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @crc64(i32 %38, i32 %41)
  %43 = sext i32 %42 to i64
  %44 = load i64*, i64** %6, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %6, align 8
  store i64 %43, i64* %44, align 8
  br label %46

46:                                               ; preds = %28
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %4, align 8
  br label %25

50:                                               ; preds = %25
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %15

54:                                               ; preds = %15
  %55 = load i64*, i64** %6, align 8
  %56 = load i64*, i64** %5, align 8
  %57 = ptrtoint i64* %55 to i64
  %58 = ptrtoint i64* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %54
  br label %187

65:                                               ; preds = %54
  %66 = load i64*, i64** %5, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sub nsw i32 %67, 1
  %69 = call i32 @ull_sort(i64* %66, i32 %68)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %70

70:                                               ; preds = %99, %65
  %71 = load i32, i32* %1, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %70
  %75 = load i64*, i64** %5, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %5, align 8
  %81 = load i32, i32* %1, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %79, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %74
  %88 = load i64*, i64** %5, align 8
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %5, align 8
  %94 = load i32, i32* %2, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %2, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  store i64 %92, i64* %97, align 8
  br label %98

98:                                               ; preds = %87, %74
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %1, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %1, align 4
  br label %70

102:                                              ; preds = %70
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %2, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* @hash_conflicts, align 4
  %106 = load i32, i32* @stderr, align 4
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = load i32, i32* %2, align 4
  %110 = sitofp i32 %109 to double
  %111 = load i32, i32* @hash_conflicts, align 4
  %112 = sext i32 %111 to i64
  %113 = call i32 (i32, i8*, i64, double, i64, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %108, double %110, i64 %112)
  %114 = load i32, i32* %2, align 4
  store i32 %114, i32* %3, align 4
  %115 = load i64*, i64** %5, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 -1
  store i64 -1, i64* %116, align 8
  %117 = load i64*, i64** %5, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  store i64 0, i64* %120, align 8
  store i32 0, i32* %1, align 4
  br label %121

121:                                              ; preds = %166, %102
  %122 = load i32, i32* %1, align 4
  %123 = load i32, i32* %3, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %169

125:                                              ; preds = %121
  %126 = load i64*, i64** %5, align 8
  %127 = load i32, i32* %1, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load i64*, i64** %5, align 8
  %132 = load i32, i32* %1, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %131, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = xor i64 %130, %136
  store i64 %137, i64* %9, align 8
  %138 = load i64*, i64** %5, align 8
  %139 = load i32, i32* %1, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load i64*, i64** %5, align 8
  %144 = load i32, i32* %1, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %143, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = xor i64 %142, %148
  store i64 %149, i64* %10, align 8
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* %10, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %125
  %154 = load i64, i64* %9, align 8
  br label %157

155:                                              ; preds = %125
  %156 = load i64, i64* %10, align 8
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i64 [ %154, %153 ], [ %156, %155 ]
  %159 = call i64 @llvm.ctlz.i64(i64 %158, i1 true)
  %160 = trunc i64 %159 to i32
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %7, align 8
  %165 = add nsw i64 %164, %163
  store i64 %165, i64* %7, align 8
  br label %166

166:                                              ; preds = %157
  %167 = load i32, i32* %1, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %1, align 4
  br label %121

169:                                              ; preds = %121
  %170 = load i64*, i64** %5, align 8
  %171 = load i32, i32* %3, align 4
  %172 = call i64 @estimate_opt_pfx_size(i64* %170, i32 %171)
  store i64 %172, i64* %8, align 8
  %173 = load i32, i32* @stderr, align 4
  %174 = load i64, i64* %7, align 8
  %175 = load i64, i64* %7, align 8
  %176 = sitofp i64 %175 to double
  %177 = load i32, i32* %3, align 4
  %178 = sitofp i32 %177 to double
  %179 = fdiv double %176, %178
  %180 = load i64, i64* %8, align 8
  %181 = load i64, i64* %8, align 8
  %182 = sitofp i64 %181 to double
  %183 = load i32, i32* %3, align 4
  %184 = sitofp i32 %183 to double
  %185 = fdiv double %182, %184
  %186 = call i32 (i32, i8*, i64, double, i64, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i64 %174, double %179, i64 %180, double %185)
  br label %187

187:                                              ; preds = %169, %64
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crc64(i32, i32) #1

declare dso_local i32 @ull_sort(i64*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, double, i64, ...) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

declare dso_local i64 @estimate_opt_pfx_size(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
