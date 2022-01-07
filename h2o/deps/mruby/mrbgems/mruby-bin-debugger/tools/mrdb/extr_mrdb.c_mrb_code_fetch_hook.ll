; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_mrdb.c_mrb_code_fetch_hook.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_mrdb.c_mrb_code_fetch_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64, i8*, i64, i32, i64, i64, i32 (%struct.TYPE_19__*, %struct.TYPE_21__*)*, %struct.TYPE_20__*, i64, i32, i32*, i32*, i32*, %struct.TYPE_20__* }

@DBG_PHASE_RESTART = common dso_local global i64 0, align 8
@DBG_PHASE_RUNNING = common dso_local global i8* null, align 8
@BRK_STEP = common dso_local global i64 0, align 8
@BRK_NEXT = common dso_local global i64 0, align 8
@BRK_BREAK = common dso_local global i64 0, align 8
@BRK_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Cannot get debugging information.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_20__*, i32*, i32*)* @mrb_code_fetch_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrb_code_fetch_hook(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %14 = call %struct.TYPE_21__* @mrb_debug_context_get(%struct.TYPE_19__* %13)
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %12, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %16 = call i32 @mrb_assert(%struct.TYPE_21__* %15)
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 13
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %19, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 12
  store i32* %20, i32** %22, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 11
  store i32* %23, i32** %25, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DBG_PHASE_RESTART, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 7
  store %struct.TYPE_20__* %32, %struct.TYPE_20__** %34, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  store i8* null, i8** %36, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 10
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 3
  store i32 129, i32* %42, align 8
  %43 = load i8*, i8** @DBG_PHASE_RUNNING, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %31, %4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = call i8* @mrb_debug_get_filename(%struct.TYPE_20__* %48, i32* %55)
  store i8* %56, i8** %9, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  %65 = call i64 @mrb_debug_get_line(%struct.TYPE_20__* %57, i32* %64)
  store i64 %65, i64* %10, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %193 [
    i32 128, label %69
    i32 130, label %91
    i32 129, label %128
    i32 131, label %178
  ]

69:                                               ; preds = %47
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = icmp eq i8* %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %69
  br label %224

85:                                               ; preds = %78, %72
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 9
  store i32 0, i32* %87, align 8
  %88 = load i64, i64* @BRK_STEP, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 4
  store i64 %88, i64* %90, align 8
  br label %194

91:                                               ; preds = %47
  %92 = load i8*, i8** %9, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = icmp eq i8* %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %10, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100, %91
  br label %224

107:                                              ; preds = %100, %94
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 10
  %110 = load i32*, i32** %109, align 8
  %111 = ptrtoint i32* %110 to i64
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %111, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  br label %224

120:                                              ; preds = %107
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 10
  store i32* null, i32** %122, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 9
  store i32 0, i32* %124, align 8
  %125 = load i64, i64* @BRK_NEXT, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 4
  store i64 %125, i64* %127, align 8
  br label %194

128:                                              ; preds = %47
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = call i64 @check_method_breakpoint(%struct.TYPE_19__* %129, %struct.TYPE_20__* %130, i32* %131, i32* %132)
  store i64 %133, i64* %11, align 8
  %134 = load i64, i64* %11, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %128
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 8
  store i64 %137, i64* %139, align 8
  %140 = load i64, i64* @BRK_BREAK, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 4
  store i64 %140, i64* %142, align 8
  br label %194

143:                                              ; preds = %128
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = icmp ne i8* %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %10, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %171

155:                                              ; preds = %149, %143
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = load i64, i64* %10, align 8
  %160 = call i64 @mrb_debug_check_breakpoint_line(%struct.TYPE_19__* %156, %struct.TYPE_21__* %157, i8* %158, i64 %159)
  store i64 %160, i64* %11, align 8
  %161 = load i64, i64* %11, align 8
  %162 = icmp sgt i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %155
  %164 = load i64, i64* %11, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 8
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* @BRK_BREAK, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 4
  store i64 %167, i64* %169, align 8
  br label %194

170:                                              ; preds = %155
  br label %171

171:                                              ; preds = %170, %149
  %172 = load i8*, i8** %9, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  store i8* %172, i8** %174, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 2
  store i64 %175, i64* %177, align 8
  br label %224

178:                                              ; preds = %47
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 7
  store %struct.TYPE_20__* %179, %struct.TYPE_20__** %181, align 8
  %182 = load i64, i64* @BRK_INIT, align 8
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 4
  store i64 %182, i64* %184, align 8
  %185 = load i8*, i8** %9, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %178
  %188 = load i64, i64* %10, align 8
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %187, %178
  %191 = call i32 @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %187
  br label %194

193:                                              ; preds = %47
  br label %224

194:                                              ; preds = %192, %163, %136, %120, %85
  %195 = load i8*, i8** %9, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 1
  store i8* %195, i8** %197, align 8
  %198 = load i64, i64* %10, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 2
  store i64 %198, i64* %200, align 8
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @BRK_BREAK, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %194
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 5
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, -1
  store i64 %210, i64* %208, align 8
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  br label %224

213:                                              ; preds = %206, %194
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 6
  %216 = load i32 (%struct.TYPE_19__*, %struct.TYPE_21__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_21__*)** %215, align 8
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %219 = call i32 %216(%struct.TYPE_19__* %217, %struct.TYPE_21__* %218)
  %220 = load i8*, i8** @DBG_PHASE_RUNNING, align 8
  %221 = ptrtoint i8* %220 to i64
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  store i64 %221, i64* %223, align 8
  br label %224

224:                                              ; preds = %213, %212, %193, %171, %119, %106, %84
  ret void
}

declare dso_local %struct.TYPE_21__* @mrb_debug_context_get(%struct.TYPE_19__*) #1

declare dso_local i32 @mrb_assert(%struct.TYPE_21__*) #1

declare dso_local i8* @mrb_debug_get_filename(%struct.TYPE_20__*, i32*) #1

declare dso_local i64 @mrb_debug_get_line(%struct.TYPE_20__*, i32*) #1

declare dso_local i64 @check_method_breakpoint(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i64 @mrb_debug_check_breakpoint_line(%struct.TYPE_19__*, %struct.TYPE_21__*, i8*, i64) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
