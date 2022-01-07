; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_hash.c_ht_index.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_hash.c_ht_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_10__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*)* @ht_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ht_index(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %7, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @UPPER_BOUND(i32 %27)
  %29 = icmp sge i64 %24, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %30, %21, %2
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @power2(i64 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %5, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %41, %36
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = load i64, i64* %5, align 8
  %52 = mul i64 8, %51
  %53 = add i64 24, %52
  %54 = trunc i64 %53 to i32
  %55 = call i64 @mrb_realloc_simple(i32* %49, %struct.TYPE_12__* %50, i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %7, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = icmp eq %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = call i32 @mrb_free(i32* %60, %struct.TYPE_12__* %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %64, align 8
  br label %172

65:                                               ; preds = %48
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 3
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %68, align 8
  br label %69

69:                                               ; preds = %65, %41
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %5, align 8
  %76 = trunc i64 %75 to i32
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  store i64 0, i64* %9, align 8
  br label %79

79:                                               ; preds = %89, %69
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %5, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %86, i64 %87
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %88, align 8
  br label %89

89:                                               ; preds = %83
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %79

92:                                               ; preds = %79
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = call i64 @HT_MASK(%struct.TYPE_12__* %93)
  store i64 %94, i64* %6, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %8, align 8
  br label %98

98:                                               ; preds = %168, %92
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = icmp ne %struct.TYPE_11__* %99, null
  br i1 %100, label %101, label %172

101:                                              ; preds = %98
  store i64 0, i64* %9, align 8
  br label %102

102:                                              ; preds = %165, %101
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ult i64 %103, %106
  br i1 %107, label %108, label %168

108:                                              ; preds = %102
  store i64 0, i64* %12, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = icmp ne %struct.TYPE_11__* %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %108
  %114 = load i64, i64* %9, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp uge i64 %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %172

120:                                              ; preds = %113, %108
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = load i64, i64* %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i64 @mrb_undef_p(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %165

132:                                              ; preds = %120
  %133 = load i32*, i32** %3, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i64 @ht_hash_func(i32* %133, %struct.TYPE_13__* %134, i32 %135)
  %137 = load i64, i64* %6, align 8
  %138 = and i64 %136, %137
  store i64 %138, i64* %11, align 8
  br label %139

139:                                              ; preds = %147, %132
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %141, align 8
  %143 = load i64, i64* %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %142, i64 %143
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = icmp ne %struct.TYPE_10__* %145, null
  br i1 %146, label %147, label %154

147:                                              ; preds = %139
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* %12, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %12, align 8
  %151 = add i64 %148, %150
  %152 = load i64, i64* %6, align 8
  %153 = and i64 %151, %152
  store i64 %153, i64* %11, align 8
  br label %139

154:                                              ; preds = %139
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = load i64, i64* %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i64 %158
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %161, align 8
  %163 = load i64, i64* %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %162, i64 %163
  store %struct.TYPE_10__* %159, %struct.TYPE_10__** %164, align 8
  br label %165

165:                                              ; preds = %154, %131
  %166 = load i64, i64* %9, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %9, align 8
  br label %102

168:                                              ; preds = %102
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  store %struct.TYPE_11__* %171, %struct.TYPE_11__** %8, align 8
  br label %98

172:                                              ; preds = %59, %119, %98
  ret void
}

declare dso_local i64 @UPPER_BOUND(i32) #1

declare dso_local i32 @power2(i64) #1

declare dso_local i64 @mrb_realloc_simple(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @mrb_free(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @HT_MASK(%struct.TYPE_12__*) #1

declare dso_local i64 @mrb_undef_p(i32) #1

declare dso_local i64 @ht_hash_func(i32*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
