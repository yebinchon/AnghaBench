; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-mirb/tools/mirb/extr_mirb.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-mirb/tools/mirb/extr_mirb.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._args = type { i8**, i8**, i32, i32*, i8*, i32, i8*, i32 }

@parse_args.args_zero = internal constant %struct._args zeroinitializer, align 8
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"%s: No library specified for -r\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Cannot open program file. (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, %struct._args*)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_args(i32* %0, i32 %1, i8** %2, %struct._args* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct._args*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store %struct._args* %3, %struct._args** %9, align 8
  %12 = load i8**, i8*** %8, align 8
  store i8** %12, i8*** %10, align 8
  %13 = load %struct._args*, %struct._args** %9, align 8
  %14 = bitcast %struct._args* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct._args* @parse_args.args_zero to i8*), i64 64, i1 false)
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %7, align 4
  %17 = load i8**, i8*** %8, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %18, i8*** %8, align 8
  br label %19

19:                                               ; preds = %155, %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %160

22:                                               ; preds = %19
  %23 = load i8**, i8*** %8, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 45
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %160

31:                                               ; preds = %22
  %32 = load i8**, i8*** %8, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %11, align 8
  %38 = load i8, i8* %36, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %152 [
    i32 100, label %40
    i32 114, label %44
    i32 118, label %105
    i32 45, label %117
  ]

40:                                               ; preds = %31
  %41 = load i8*, i8** @TRUE, align 8
  %42 = load %struct._args*, %struct._args** %9, align 8
  %43 = getelementptr inbounds %struct._args, %struct._args* %42, i32 0, i32 6
  store i8* %41, i8** %43, align 8
  br label %154

44:                                               ; preds = %31
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = icmp sle i32 %50, 1
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i8**, i8*** %10, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %56, i32* %5, align 4
  br label %219

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %7, align 4
  %60 = load i8**, i8*** %8, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %8, align 8
  %62 = load i8**, i8*** %8, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %11, align 8
  br label %65

65:                                               ; preds = %57, %44
  %66 = load %struct._args*, %struct._args** %9, align 8
  %67 = getelementptr inbounds %struct._args, %struct._args* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32*, i32** %6, align 8
  %72 = call i64 @mrb_malloc(i32* %71, i32 8)
  %73 = inttoptr i64 %72 to i8**
  %74 = load %struct._args*, %struct._args** %9, align 8
  %75 = getelementptr inbounds %struct._args, %struct._args* %74, i32 0, i32 0
  store i8** %73, i8*** %75, align 8
  br label %92

76:                                               ; preds = %65
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct._args*, %struct._args** %9, align 8
  %79 = getelementptr inbounds %struct._args, %struct._args* %78, i32 0, i32 0
  %80 = load i8**, i8*** %79, align 8
  %81 = load %struct._args*, %struct._args** %9, align 8
  %82 = getelementptr inbounds %struct._args, %struct._args* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = mul i64 8, %85
  %87 = trunc i64 %86 to i32
  %88 = call i64 @mrb_realloc(i32* %77, i8** %80, i32 %87)
  %89 = inttoptr i64 %88 to i8**
  %90 = load %struct._args*, %struct._args** %9, align 8
  %91 = getelementptr inbounds %struct._args, %struct._args* %90, i32 0, i32 0
  store i8** %89, i8*** %91, align 8
  br label %92

92:                                               ; preds = %76, %70
  %93 = load i32*, i32** %6, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = call i8* @dup_arg_item(i32* %93, i8* %94)
  %96 = load %struct._args*, %struct._args** %9, align 8
  %97 = getelementptr inbounds %struct._args, %struct._args* %96, i32 0, i32 0
  %98 = load i8**, i8*** %97, align 8
  %99 = load %struct._args*, %struct._args** %9, align 8
  %100 = getelementptr inbounds %struct._args, %struct._args* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8*, i8** %98, i64 %103
  store i8* %95, i8** %104, align 8
  br label %154

105:                                              ; preds = %31
  %106 = load %struct._args*, %struct._args** %9, align 8
  %107 = getelementptr inbounds %struct._args, %struct._args* %106, i32 0, i32 4
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @mrb_show_version(i32* %111)
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i8*, i8** @TRUE, align 8
  %115 = load %struct._args*, %struct._args** %9, align 8
  %116 = getelementptr inbounds %struct._args, %struct._args* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  br label %154

117:                                              ; preds = %31
  %118 = load i8**, i8*** %8, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 2
  %121 = call i32 @strcmp(i8* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @mrb_show_version(i32* %124)
  %126 = load i32, i32* @EXIT_SUCCESS, align 4
  %127 = call i32 @exit(i32 %126) #4
  unreachable

128:                                              ; preds = %117
  %129 = load i8**, i8*** %8, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i8*, i8** @TRUE, align 8
  %136 = load %struct._args*, %struct._args** %9, align 8
  %137 = getelementptr inbounds %struct._args, %struct._args* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  br label %154

138:                                              ; preds = %128
  %139 = load i8**, i8*** %8, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 2
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @mrb_show_copyright(i32* %145)
  %147 = load i32, i32* @EXIT_SUCCESS, align 4
  %148 = call i32 @exit(i32 %147) #4
  unreachable

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %31, %151
  %153 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %153, i32* %5, align 4
  br label %219

154:                                              ; preds = %134, %113, %92, %40
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %7, align 4
  %158 = load i8**, i8*** %8, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i32 1
  store i8** %159, i8*** %8, align 8
  br label %19

160:                                              ; preds = %30, %19
  %161 = load %struct._args*, %struct._args** %9, align 8
  %162 = getelementptr inbounds %struct._args, %struct._args* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %191

165:                                              ; preds = %160
  %166 = load i8**, i8*** %8, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %190

169:                                              ; preds = %165
  %170 = load i8**, i8*** %8, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32* @fopen(i8* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %174 = load %struct._args*, %struct._args** %9, align 8
  %175 = getelementptr inbounds %struct._args, %struct._args* %174, i32 0, i32 3
  store i32* %173, i32** %175, align 8
  %176 = load %struct._args*, %struct._args** %9, align 8
  %177 = getelementptr inbounds %struct._args, %struct._args* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %169
  %181 = load i8**, i8*** %8, align 8
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %182)
  %184 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %184, i32* %5, align 4
  br label %219

185:                                              ; preds = %169
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %7, align 4
  %188 = load i8**, i8*** %8, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i32 1
  store i8** %189, i8*** %8, align 8
  br label %190

190:                                              ; preds = %185, %165
  br label %191

191:                                              ; preds = %190, %160
  %192 = load i32*, i32** %6, align 8
  %193 = load %struct._args*, %struct._args** %9, align 8
  %194 = getelementptr inbounds %struct._args, %struct._args* %193, i32 0, i32 1
  %195 = load i8**, i8*** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = mul i64 8, %198
  %200 = trunc i64 %199 to i32
  %201 = call i64 @mrb_realloc(i32* %192, i8** %195, i32 %200)
  %202 = inttoptr i64 %201 to i8**
  %203 = load %struct._args*, %struct._args** %9, align 8
  %204 = getelementptr inbounds %struct._args, %struct._args* %203, i32 0, i32 1
  store i8** %202, i8*** %204, align 8
  %205 = load %struct._args*, %struct._args** %9, align 8
  %206 = getelementptr inbounds %struct._args, %struct._args* %205, i32 0, i32 1
  %207 = load i8**, i8*** %206, align 8
  %208 = load i8**, i8*** %8, align 8
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = mul i64 %211, 8
  %213 = trunc i64 %212 to i32
  %214 = call i32 @memcpy(i8** %207, i8** %208, i32 %213)
  %215 = load i32, i32* %7, align 4
  %216 = load %struct._args*, %struct._args** %9, align 8
  %217 = getelementptr inbounds %struct._args, %struct._args* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  %218 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %191, %180, %152, %52
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i64 @mrb_malloc(i32*, i32) #2

declare dso_local i64 @mrb_realloc(i32*, i8**, i32) #2

declare dso_local i8* @dup_arg_item(i32*, i8*) #2

declare dso_local i32 @mrb_show_version(i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @mrb_show_copyright(i32*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @memcpy(i8**, i8**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
