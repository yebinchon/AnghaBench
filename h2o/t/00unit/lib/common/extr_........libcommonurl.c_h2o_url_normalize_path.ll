; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonurl.c_h2o_url_normalize_path.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonurl.c_h2o_url_normalize_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }

@SIZE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/../\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"/..\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"failed to normalize path: `%.*s` => `%.*s`\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i8*, i32 } @h2o_url_normalize_path(i32* %0, i8* %1, i64 %2, i64* %3, i64** %4) #0 {
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_5__, align 8
  %15 = alloca %struct.TYPE_5__, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64** %4, i64*** %11, align 8
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %13, align 8
  %21 = load i64, i64* @SIZE_MAX, align 8
  %22 = load i64*, i64** %10, align 8
  store i64 %21, i64* %22, align 8
  %23 = load i64**, i64*** %11, align 8
  store i64* null, i64** %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %5
  %27 = call { i8*, i32 } @h2o_iovec_init(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %28 = bitcast %struct.TYPE_5__* %14 to { i8*, i32 }*
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %28, i32 0, i32 0
  %30 = extractvalue { i8*, i32 } %27, 0
  store i8* %30, i8** %29, align 8
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %28, i32 0, i32 1
  %32 = extractvalue { i8*, i32 } %27, 1
  store i32 %32, i32* %31, align 8
  %33 = bitcast %struct.TYPE_5__* %6 to i8*
  %34 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  br label %187

35:                                               ; preds = %5
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 47
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %118

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %82, %42
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8*, i8** %13, align 8
  %47 = icmp ult i8* %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %43
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 47
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 46
  br i1 %59, label %66, label %60

60:                                               ; preds = %54, %48
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %54
  br label %118

67:                                               ; preds = %60
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 63
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load i8*, i8** %12, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = load i64*, i64** %10, align 8
  store i64 %78, i64* %79, align 8
  br label %108

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %12, align 8
  br label %43

85:                                               ; preds = %43
  br label %86

86:                                               ; preds = %104, %85
  %87 = load i8*, i8** %12, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = icmp ult i8* %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %86
  %91 = load i8*, i8** %12, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 63
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i8*, i8** %12, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = load i64*, i64** %10, align 8
  store i64 %101, i64* %102, align 8
  br label %108

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %12, align 8
  br label %86

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107, %96, %73
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %109, i8** %110, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %116, i32* %117, align 8
  br label %187

118:                                              ; preds = %66, %41
  %119 = load i32*, i32** %7, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load i64*, i64** %10, align 8
  %123 = load i64**, i64*** %11, align 8
  %124 = call { i8*, i32 } @rebuild_path(i32* %119, i8* %120, i64 %121, i64* %122, i64** %123)
  %125 = bitcast %struct.TYPE_5__* %15 to { i8*, i32 }*
  %126 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %125, i32 0, i32 0
  %127 = extractvalue { i8*, i32 } %124, 0
  store i8* %127, i8** %126, align 8
  %128 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %125, i32 0, i32 1
  %129 = extractvalue { i8*, i32 } %124, 1
  store i32 %129, i32* %128, align 8
  %130 = bitcast %struct.TYPE_5__* %6 to i8*
  %131 = bitcast %struct.TYPE_5__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %131, i64 16, i1 false)
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %118
  br label %170

136:                                              ; preds = %118
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 47
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %170

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %150 = call i64 @h2o_strstr(i8* %146, i32 %148, i32 %149)
  %151 = load i64, i64* @SIZE_MAX, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %170

154:                                              ; preds = %144
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp sge i32 %156, 3
  br i1 %157, label %158, label %169

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = getelementptr inbounds i8, i8* %164, i64 -3
  %166 = call i64 @memcmp(i8* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  br label %170

169:                                              ; preds = %158, %154
  br label %187

170:                                              ; preds = %168, %153, %143, %135
  %171 = load i64, i64* %9, align 8
  %172 = trunc i64 %171 to i32
  %173 = load i8*, i8** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @h2o_error_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %172, i8* %173, i32 %175, i8* %177)
  %179 = call { i8*, i32 } @h2o_iovec_init(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %180 = bitcast %struct.TYPE_5__* %16 to { i8*, i32 }*
  %181 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %180, i32 0, i32 0
  %182 = extractvalue { i8*, i32 } %179, 0
  store i8* %182, i8** %181, align 8
  %183 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %180, i32 0, i32 1
  %184 = extractvalue { i8*, i32 } %179, 1
  store i32 %184, i32* %183, align 8
  %185 = bitcast %struct.TYPE_5__* %6 to i8*
  %186 = bitcast %struct.TYPE_5__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %185, i8* align 8 %186, i64 16, i1 false)
  br label %187

187:                                              ; preds = %170, %169, %108, %26
  %188 = bitcast %struct.TYPE_5__* %6 to { i8*, i32 }*
  %189 = load { i8*, i32 }, { i8*, i32 }* %188, align 8
  ret { i8*, i32 } %189
}

declare dso_local { i8*, i32 } @h2o_iovec_init(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i8*, i32 } @rebuild_path(i32*, i8*, i64, i64*, i64**) #1

declare dso_local i64 @h2o_strstr(i8*, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @h2o_error_printf(i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
