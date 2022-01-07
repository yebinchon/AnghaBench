; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar_run_suite.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar_run_suite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32*, i64, i64, %struct.clar_report*, %struct.clar_report*, i32, i32, i32 }
%struct.clar_report = type { i8*, %struct.clar_report*, i32, i32, i32* }
%struct.clar_suite = type { i8*, i64, i32, i32, i32, %struct.clar_func* }
%struct.clar_func = type { i32* }

@_clar = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CL_TRACE__SUITE_BEGIN = common dso_local global i32 0, align 4
@CL_TEST_NOTRUN = common dso_local global i32 0, align 4
@CL_TRACE__SUITE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clar_suite*, i8*)* @clar_run_suite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clar_run_suite(%struct.clar_suite* %0, i8* %1) #0 {
  %3 = alloca %struct.clar_suite*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.clar_func*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clar_report*, align 8
  %9 = alloca i64, align 8
  store %struct.clar_suite* %0, %struct.clar_suite** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.clar_suite*, %struct.clar_suite** %3, align 8
  %11 = getelementptr inbounds %struct.clar_suite, %struct.clar_suite* %10, i32 0, i32 5
  %12 = load %struct.clar_func*, %struct.clar_func** %11, align 8
  store %struct.clar_func* %12, %struct.clar_func** %5, align 8
  %13 = load %struct.clar_suite*, %struct.clar_suite** %3, align 8
  %14 = getelementptr inbounds %struct.clar_suite, %struct.clar_suite* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %144

18:                                               ; preds = %2
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 3), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 2), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %144

25:                                               ; preds = %21, %18
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 8), align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load %struct.clar_suite*, %struct.clar_suite** %3, align 8
  %30 = getelementptr inbounds %struct.clar_suite, %struct.clar_suite* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 7), align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 7), align 4
  %34 = call i32 @clar_print_onsuite(i8* %31, i32 %33)
  br label %35

35:                                               ; preds = %28, %25
  %36 = load %struct.clar_suite*, %struct.clar_suite** %3, align 8
  %37 = getelementptr inbounds %struct.clar_suite, %struct.clar_suite* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 1), align 8
  %39 = load i32, i32* @CL_TRACE__SUITE_BEGIN, align 4
  %40 = call i32 @CL_TRACE(i32 %39)
  %41 = load i8*, i8** %4, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %70

43:                                               ; preds = %35
  %44 = load %struct.clar_suite*, %struct.clar_suite** %3, align 8
  %45 = getelementptr inbounds %struct.clar_suite, %struct.clar_suite* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strlen(i8* %46)
  store i64 %47, i64* %9, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @strlen(i8* %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ule i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i8* null, i8** %4, align 8
  br label %69

54:                                               ; preds = %43
  %55 = load i64, i64* %9, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %63, %54
  %59 = load i8*, i8** %4, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 58
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %4, align 8
  br label %58

66:                                               ; preds = %58
  %67 = load i8*, i8** %4, align 8
  %68 = call i64 @strlen(i8* %67)
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %66, %53
  br label %70

70:                                               ; preds = %69, %35
  store i64 0, i64* %6, align 8
  br label %71

71:                                               ; preds = %138, %70
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.clar_suite*, %struct.clar_suite** %3, align 8
  %74 = getelementptr inbounds %struct.clar_suite, %struct.clar_suite* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %141

77:                                               ; preds = %71
  %78 = load i8*, i8** %4, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.clar_func*, %struct.clar_func** %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds %struct.clar_func, %struct.clar_func* %81, i64 %82
  %84 = getelementptr inbounds %struct.clar_func, %struct.clar_func* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call i64 @strncmp(i32* %85, i8* %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %138

91:                                               ; preds = %80, %77
  %92 = load %struct.clar_func*, %struct.clar_func** %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds %struct.clar_func, %struct.clar_func* %92, i64 %93
  %95 = getelementptr inbounds %struct.clar_func, %struct.clar_func* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 1), align 8
  %97 = call %struct.clar_report* @calloc(i32 1, i32 32)
  store %struct.clar_report* %97, %struct.clar_report** %8, align 8
  %98 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 0), align 8
  %99 = load %struct.clar_report*, %struct.clar_report** %8, align 8
  %100 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 1), align 8
  %102 = load %struct.clar_report*, %struct.clar_report** %8, align 8
  %103 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %102, i32 0, i32 4
  store i32* %101, i32** %103, align 8
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 6), align 8
  %105 = load %struct.clar_report*, %struct.clar_report** %8, align 8
  %106 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @CL_TEST_NOTRUN, align 4
  %108 = load %struct.clar_report*, %struct.clar_report** %8, align 8
  %109 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.clar_report*, %struct.clar_report** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 5), align 8
  %111 = icmp eq %struct.clar_report* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %91
  %113 = load %struct.clar_report*, %struct.clar_report** %8, align 8
  store %struct.clar_report* %113, %struct.clar_report** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 5), align 8
  br label %114

114:                                              ; preds = %112, %91
  %115 = load %struct.clar_report*, %struct.clar_report** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 4), align 8
  %116 = icmp ne %struct.clar_report* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.clar_report*, %struct.clar_report** %8, align 8
  %119 = load %struct.clar_report*, %struct.clar_report** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 4), align 8
  %120 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %119, i32 0, i32 1
  store %struct.clar_report* %118, %struct.clar_report** %120, align 8
  br label %121

121:                                              ; preds = %117, %114
  %122 = load %struct.clar_report*, %struct.clar_report** %8, align 8
  store %struct.clar_report* %122, %struct.clar_report** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 4), align 8
  %123 = load %struct.clar_func*, %struct.clar_func** %5, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds %struct.clar_func, %struct.clar_func* %123, i64 %124
  %126 = load %struct.clar_suite*, %struct.clar_suite** %3, align 8
  %127 = getelementptr inbounds %struct.clar_suite, %struct.clar_suite* %126, i32 0, i32 3
  %128 = load %struct.clar_suite*, %struct.clar_suite** %3, align 8
  %129 = getelementptr inbounds %struct.clar_suite, %struct.clar_suite* %128, i32 0, i32 2
  %130 = call i32 @clar_run_test(%struct.clar_func* %125, i32* %127, i32* %129)
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 3), align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %121
  %134 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 2), align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %144

137:                                              ; preds = %133, %121
  br label %138

138:                                              ; preds = %137, %90
  %139 = load i64, i64* %6, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %6, align 8
  br label %71

141:                                              ; preds = %71
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 1), align 8
  %142 = load i32, i32* @CL_TRACE__SUITE_END, align 4
  %143 = call i32 @CL_TRACE(i32 %142)
  br label %144

144:                                              ; preds = %141, %136, %24, %17
  ret void
}

declare dso_local i32 @clar_print_onsuite(i8*, i32) #1

declare dso_local i32 @CL_TRACE(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i32*, i8*, i64) #1

declare dso_local %struct.clar_report* @calloc(i32, i32) #1

declare dso_local i32 @clar_run_test(%struct.clar_func*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
