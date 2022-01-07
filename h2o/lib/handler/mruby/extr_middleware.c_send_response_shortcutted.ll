; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_send_response_shortcutted.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_send_response_shortcutted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_mruby_subreq_t = type { %struct.TYPE_22__, %struct.TYPE_19__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__*, %struct.TYPE_18__, %struct.TYPE_17__*, %struct.TYPE_23__* }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_26__*)*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }

@H2O_TOKEN_DATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_mruby_subreq_t*)* @send_response_shortcutted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_response_shortcutted(%struct.st_mruby_subreq_t* %0) #0 {
  %2 = alloca %struct.st_mruby_subreq_t*, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  store %struct.st_mruby_subreq_t* %0, %struct.st_mruby_subreq_t** %2, align 8
  %7 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %2, align 8
  %8 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  store %struct.TYPE_26__* %10, %struct.TYPE_26__** %3, align 8
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %12 = icmp ne %struct.TYPE_26__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %2, align 8
  %16 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 4
  store i32 %19, i32* %24, align 4
  %25 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %2, align 8
  %26 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 3
  store i32 %29, i32* %34, align 4
  %35 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %2, align 8
  %36 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 2
  store i32 %39, i32* %44, align 4
  %45 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %2, align 8
  %46 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  store i32 %49, i32* %54, align 4
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %89, %1
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %2, align 8
  %58 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %56, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %55
  %65 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %2, align 8
  %66 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i64 %72
  store %struct.TYPE_27__* %73, %struct.TYPE_27__** %5, align 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = call i32 @h2o_mruby_set_response_header(i32 %78, i32 %81, i32 %84, %struct.TYPE_17__* %87)
  br label %89

89:                                               ; preds = %64
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %55

92:                                               ; preds = %55
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = load i32, i32* @H2O_TOKEN_DATE, align 4
  %99 = call i32 @h2o_find_header(i32* %97, i32 %98, i32 -1)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %106

101:                                              ; preds = %92
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  %105 = call i32 @h2o_resp_add_date_header(%struct.TYPE_17__* %104)
  br label %106

106:                                              ; preds = %101, %92
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %108 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %2, align 8
  %109 = call i32 (...) @mrb_nil_value()
  %110 = call %struct.TYPE_25__* @create_sender(%struct.TYPE_26__* %107, %struct.st_mruby_subreq_t* %108, i32 %109)
  store %struct.TYPE_25__* %110, %struct.TYPE_25__** %6, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  store %struct.TYPE_25__* %111, %struct.TYPE_25__** %113, align 8
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 1
  %125 = call i32 @h2o_start_response(%struct.TYPE_17__* %122, %struct.TYPE_18__* %124)
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load i32 (%struct.TYPE_26__*)*, i32 (%struct.TYPE_26__*)** %129, align 8
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %132 = call i32 %130(%struct.TYPE_26__* %131)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_mruby_set_response_header(i32, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @h2o_find_header(i32*, i32, i32) #1

declare dso_local i32 @h2o_resp_add_date_header(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_25__* @create_sender(%struct.TYPE_26__*, %struct.st_mruby_subreq_t*, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @h2o_start_response(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
