; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_hash.c_ht_compact.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_hash.c_ht_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*)* @ht_compact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ht_compact(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = icmp eq %struct.TYPE_11__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %155

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %5, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %25, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = call i32 @ht_index(i32* %33, %struct.TYPE_11__* %34)
  br label %155

36:                                               ; preds = %22, %14
  br label %37

37:                                               ; preds = %111, %36
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %40, label %115

40:                                               ; preds = %37
  store i64 0, i64* %6, align 8
  br label %41

41:                                               ; preds = %108, %40
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %111

47:                                               ; preds = %41
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = icmp ne %struct.TYPE_10__* %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %47
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp uge i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %116

66:                                               ; preds = %59, %47
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @mrb_undef_p(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = icmp eq %struct.TYPE_10__* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %7, align 8
  %75 = load i64, i64* %6, align 8
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %73, %70
  br label %107

77:                                               ; preds = %66
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %9, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = icmp ne %struct.TYPE_10__* %80, null
  br i1 %81, label %82, label %106

82:                                               ; preds = %77
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %86
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %92
  %94 = bitcast %struct.TYPE_8__* %88 to i8*
  %95 = bitcast %struct.TYPE_8__* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 4, i1 false)
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp uge i64 %96, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %82
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  store %struct.TYPE_10__* %104, %struct.TYPE_10__** %7, align 8
  store i64 0, i64* %8, align 8
  br label %105

105:                                              ; preds = %101, %82
  br label %106

106:                                              ; preds = %105, %77
  br label %107

107:                                              ; preds = %106, %76
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %6, align 8
  br label %41

111:                                              ; preds = %41
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %5, align 8
  br label %37

115:                                              ; preds = %37
  br label %116

116:                                              ; preds = %115, %65
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %121 = icmp ne %struct.TYPE_10__* %120, null
  br i1 %121, label %122, label %146

122:                                              ; preds = %116
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  store %struct.TYPE_10__* %125, %struct.TYPE_10__** %5, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %127, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  store %struct.TYPE_10__* %131, %struct.TYPE_10__** %133, align 8
  br label %134

134:                                              ; preds = %137, %122
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %136 = icmp ne %struct.TYPE_10__* %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  store %struct.TYPE_10__* %140, %struct.TYPE_10__** %7, align 8
  %141 = load i32*, i32** %3, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = call i32 @mrb_free(i32* %141, %struct.TYPE_10__* %142)
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %144, %struct.TYPE_10__** %5, align 8
  br label %134

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145, %116
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = icmp ne %struct.TYPE_9__* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load i32*, i32** %3, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %154 = call i32 @ht_index(i32* %152, %struct.TYPE_11__* %153)
  br label %155

155:                                              ; preds = %13, %32, %151, %146
  ret void
}

declare dso_local i32 @ht_index(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @mrb_undef_p(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mrb_free(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
