; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_gen_function_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_gen_function_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator = type { i32, i32, i32, i32, i32, %struct.TYPE_3__**, i64 }
%struct.TYPE_3__ = type { i32 }

@tls_store_int = common dso_local global i8* null, align 8
@FLAG_OPT_VAR = common dso_local global i32 0, align 4
@FLAG_EXCL = common dso_local global i32 0, align 4
@tlsub_ret = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_function_store(%struct.tl_combinator* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tl_combinator*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tl_combinator* %0, %struct.tl_combinator** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %15, 10
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %176

18:                                               ; preds = %3
  %19 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %20 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  store i32 0, i32* %8, align 4
  %26 = load i8*, i8** @tls_store_int, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  store i8* %26, i8** %31, align 8
  %32 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %33 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i8**, i8*** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8*, i8** %36, i64 %39
  store i8* %35, i8** %40, align 8
  %41 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %42 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %10, align 8
  %46 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %11, align 8
  %47 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %48 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memset(i32* %46, i32 0, i32 %52)
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %131, %18
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %57 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %134

60:                                               ; preds = %54
  %61 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %62 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %61, i32 0, i32 5
  %63 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %63, i64 %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @FLAG_OPT_VAR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %130, label %73

73:                                               ; preds = %60
  %74 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %75 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %74, i32 0, i32 5
  %76 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %76, i64 %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @FLAG_EXCL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %73
  %87 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %88 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %87, i32 0, i32 5
  %89 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %89, i64 %91
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i8**, i8*** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @gen_field_excl(%struct.TYPE_3__* %93, i8** %97, i32 %100, i32* %46, i32 %102)
  store i32 %103, i32* %12, align 4
  br label %122

104:                                              ; preds = %73
  %105 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %106 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %105, i32 0, i32 5
  %107 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %107, i64 %109
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i8**, i8*** %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  %121 = call i32 @gen_field(%struct.TYPE_3__* %111, i8** %115, i32 %118, i32* %46, i32 %120, i32 0)
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %104, %86
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %174

126:                                              ; preds = %122
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %126, %60
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %54

134:                                              ; preds = %54
  %135 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %136 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load i8**, i8*** %6, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %8, align 4
  %144 = sub nsw i32 %142, %143
  %145 = call i32 @gen_create(i32 %137, i8** %141, i32 %144, i32* %46)
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %134
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %174

149:                                              ; preds = %134
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %8, align 4
  %155 = sub nsw i32 %153, %154
  %156 = icmp sle i32 %155, 10
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %174

158:                                              ; preds = %149
  %159 = load i8*, i8** @tlsub_ret, align 8
  %160 = load i8**, i8*** %6, align 8
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8*, i8** %160, i64 %163
  store i8* %159, i8** %164, align 8
  %165 = load i8**, i8*** %6, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @IP_dup(i8** %165, i32 %166)
  %168 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %169 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.tl_combinator*, %struct.tl_combinator** %5, align 8
  %172 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %174

174:                                              ; preds = %158, %157, %148, %125
  %175 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %175)
  br label %176

176:                                              ; preds = %174, %17
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @gen_field_excl(%struct.TYPE_3__*, i8**, i32, i32*, i32) #1

declare dso_local i32 @gen_field(%struct.TYPE_3__*, i8**, i32, i32*, i32, i32) #1

declare dso_local i32 @gen_create(i32, i8**, i32, i32*) #1

declare dso_local i32 @IP_dup(i8**, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
