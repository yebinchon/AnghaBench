; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_throttle_resp.c_on_setup_ostream.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_throttle_resp.c_on_setup_ostream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_27__*, %struct.TYPE_26__, %struct.TYPE_24__ }
%struct.TYPE_27__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i64, i32, %struct.TYPE_31__*, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_20__* }
%struct.TYPE_30__ = type { i32*, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@H2O_TOKEN_X_TRAFFIC = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@HUNDRED_MS = common dso_local global i64 0, align 8
@ONE_SECOND = common dso_local global i64 0, align 8
@on_send = common dso_local global i32 0, align 4
@on_stop = common dso_local global i32 0, align 4
@add_token = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_20__*, i32**)* @on_setup_ostream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_setup_ostream(i32* %0, %struct.TYPE_20__* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32** %2, i32*** %6, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 200
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %144

18:                                               ; preds = %3
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = call i64 @h2o_memis(i32 %23, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %144

33:                                               ; preds = %18
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 1
  %37 = load i32, i32* @H2O_TOKEN_X_TRAFFIC, align 4
  %38 = call i32 @h2o_find_header(%struct.TYPE_22__* %36, i32 %37, i32 -1)
  store i32 %38, i32* %10, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %144

41:                                               ; preds = %33
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = bitcast %struct.TYPE_21__* %8 to i8*
  %52 = bitcast %struct.TYPE_21__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @h2o_strtosizefwd(i8** %11, i32 %56)
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* @SIZE_MAX, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @H2O_UNLIKELY(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %41
  br label %144

64:                                               ; preds = %41
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %67 = call i32 @H2O_ALIGNOF(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %66)
  %68 = load i32**, i32*** %6, align 8
  %69 = call i64 @h2o_add_ostream(%struct.TYPE_20__* %65, i32 %67, i32 72, i32** %68)
  %70 = inttoptr i64 %69 to i8*
  %71 = bitcast i8* %70 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %71, %struct.TYPE_19__** %7, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @HUNDRED_MS, align 8
  %74 = mul i64 %72, %73
  %75 = load i64, i64* @ONE_SECOND, align 8
  %76 = udiv i64 %74, %75
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ugt i64 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %64
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %86, %64
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 1
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @h2o_delete_header(%struct.TYPE_22__* %95, i32 %96)
  %98 = load i32, i32* @on_send, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* @on_stop, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %109, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 3
  store %struct.TYPE_31__* %110, %struct.TYPE_31__** %112, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 6
  store %struct.TYPE_20__* %113, %struct.TYPE_20__** %115, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 0
  store i32** %131, i32*** %6, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 2
  %134 = load i32, i32* @add_token, align 4
  %135 = call i32 @h2o_timer_init(i32* %133, i32 %134)
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 2
  %143 = call i32 @h2o_timer_link(i32 %140, i32 100, i32* %142)
  br label %144

144:                                              ; preds = %92, %63, %40, %32, %17
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %146 = load i32**, i32*** %6, align 8
  %147 = call i32 @h2o_setup_next_ostream(%struct.TYPE_20__* %145, i32** %146)
  ret void
}

declare dso_local i64 @h2o_memis(i32, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_find_header(%struct.TYPE_22__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @H2O_UNLIKELY(i32) #1

declare dso_local i64 @h2o_strtosizefwd(i8**, i32) #1

declare dso_local i64 @h2o_add_ostream(%struct.TYPE_20__*, i32, i32, i32**) #1

declare dso_local i32 @H2O_ALIGNOF(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8) #1

declare dso_local i32 @h2o_delete_header(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @h2o_timer_init(i32*, i32) #1

declare dso_local i32 @h2o_timer_link(i32, i32, i32*) #1

declare dso_local i32 @h2o_setup_next_ostream(%struct.TYPE_20__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
