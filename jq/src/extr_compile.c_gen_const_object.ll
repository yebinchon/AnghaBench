; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_gen_const_object.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_gen_const_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }

@PUSHK_UNDER = common dso_local global i64 0, align 8
@SUBEXP_BEGIN = common dso_local global i64 0, align 8
@LOADK = common dso_local global i64 0, align 8
@SUBEXP_END = common dso_local global i64 0, align 8
@INSERT = common dso_local global i64 0, align 8
@JV_KIND_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, %struct.TYPE_9__* } @gen_const_object(i64 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = bitcast %struct.TYPE_10__* %4 to { i64, %struct.TYPE_9__* }*
  %11 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %10, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %10, i32 0, i32 1
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %12, align 8
  store i32 1, i32* %5, align 4
  %13 = call i32 (...) @jv_object()
  store i32 %13, i32* %6, align 4
  %14 = call i32 (...) @jv_null()
  store i32 %14, i32* %7, align 4
  %15 = call i32 (...) @jv_null()
  store i32 %15, i32* %8, align 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %9, align 8
  br label %18

18:                                               ; preds = %186, %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %190

21:                                               ; preds = %18
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PUSHK_UNDER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @jv_copy(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %9, align 8
  br label %89

36:                                               ; preds = %21
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SUBEXP_BEGIN, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %72, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = icmp eq %struct.TYPE_9__* %45, null
  br i1 %46, label %72, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LOADK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %72, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = icmp eq %struct.TYPE_9__* %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %55
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SUBEXP_END, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62, %55, %47, %42, %36
  store i32 0, i32* %5, align 4
  br label %190

73:                                               ; preds = %62
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @jv_copy(i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %9, align 8
  br label %88

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %27
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %91 = icmp ne %struct.TYPE_9__* %90, null
  br i1 %91, label %92, label %107

92:                                               ; preds = %89
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PUSHK_UNDER, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @jv_copy(i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %9, align 8
  br label %163

107:                                              ; preds = %92, %89
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %109 = icmp eq %struct.TYPE_9__* %108, null
  br i1 %109, label %146, label %110

110:                                              ; preds = %107
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SUBEXP_BEGIN, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %146, label %116

116:                                              ; preds = %110
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = icmp eq %struct.TYPE_9__* %119, null
  br i1 %120, label %146, label %121

121:                                              ; preds = %116
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @LOADK, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %146, label %129

129:                                              ; preds = %121
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = icmp eq %struct.TYPE_9__* %134, null
  br i1 %135, label %146, label %136

136:                                              ; preds = %129
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @SUBEXP_END, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %136, %129, %121, %116, %110, %107
  store i32 0, i32* %5, align 4
  br label %190

147:                                              ; preds = %136
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @jv_copy(i32 %153)
  store i32 %154, i32* %8, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  store %struct.TYPE_9__* %161, %struct.TYPE_9__** %9, align 8
  br label %162

162:                                              ; preds = %147
  br label %163

163:                                              ; preds = %162, %98
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %165 = icmp eq %struct.TYPE_9__* %164, null
  br i1 %165, label %172, label %166

166:                                              ; preds = %163
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @INSERT, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %166, %163
  store i32 0, i32* %5, align 4
  br label %190

173:                                              ; preds = %166
  %174 = load i32, i32* %7, align 4
  %175 = call i64 @jv_get_kind(i32 %174)
  %176 = load i64, i64* @JV_KIND_STRING, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  store i32 0, i32* %5, align 4
  br label %190

179:                                              ; preds = %173
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @jv_object_set(i32 %180, i32 %181, i32 %182)
  store i32 %183, i32* %6, align 4
  %184 = call i32 (...) @jv_null()
  store i32 %184, i32* %7, align 4
  %185 = call i32 (...) @jv_null()
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %179
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  store %struct.TYPE_9__* %189, %struct.TYPE_9__** %9, align 8
  br label %18

190:                                              ; preds = %178, %172, %146, %72, %18
  %191 = load i32, i32* %5, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %201, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @jv_free(i32 %194)
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @jv_free(i32 %196)
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @jv_free(i32 %198)
  %200 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %200, i8 0, i64 16, i1 false)
  br label %215

201:                                              ; preds = %190
  %202 = bitcast %struct.TYPE_10__* %4 to { i64, %struct.TYPE_9__* }*
  %203 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %202, i32 0, i32 1
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = call i32 @block_free(i64 %204, %struct.TYPE_9__* %206)
  %208 = load i32, i32* %6, align 4
  %209 = call { i64, %struct.TYPE_9__* } @gen_const(i32 %208)
  %210 = bitcast %struct.TYPE_10__* %3 to { i64, %struct.TYPE_9__* }*
  %211 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %210, i32 0, i32 0
  %212 = extractvalue { i64, %struct.TYPE_9__* } %209, 0
  store i64 %212, i64* %211, align 8
  %213 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %210, i32 0, i32 1
  %214 = extractvalue { i64, %struct.TYPE_9__* } %209, 1
  store %struct.TYPE_9__* %214, %struct.TYPE_9__** %213, align 8
  br label %215

215:                                              ; preds = %201, %193
  %216 = bitcast %struct.TYPE_10__* %3 to { i64, %struct.TYPE_9__* }*
  %217 = load { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %216, align 8
  ret { i64, %struct.TYPE_9__* } %217
}

declare dso_local i32 @jv_object(...) #1

declare dso_local i32 @jv_null(...) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_object_set(i32, i32, i32) #1

declare dso_local i32 @jv_free(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @block_free(i64, %struct.TYPE_9__*) #1

declare dso_local { i64, %struct.TYPE_9__* } @gen_const(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
