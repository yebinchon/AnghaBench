; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_parse_short_opt.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_parse_short_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i64* }
%struct.option = type { i64, i64, i32 (%struct.parse_opt_ctx_t*, %struct.option*, i8*, i32)*, i64 (%struct.option*, i8*, i32)* }

@OPTION_END = common dso_local global i64 0, align 8
@OPT_SHORT = common dso_local global i32 0, align 4
@OPTION_NUMBER = common dso_local global i64 0, align 8
@PARSE_OPT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, %struct.option*)* @parse_short_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_short_opt(%struct.parse_opt_ctx_t* %0, %struct.option* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parse_opt_ctx_t*, align 8
  %5 = alloca %struct.option*, align 8
  %6 = alloca %struct.option*, align 8
  %7 = alloca %struct.option*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %4, align 8
  store %struct.option* %1, %struct.option** %5, align 8
  %11 = load %struct.option*, %struct.option** %5, align 8
  store %struct.option* %11, %struct.option** %6, align 8
  store %struct.option* null, %struct.option** %7, align 8
  br label %12

12:                                               ; preds = %58, %2
  %13 = load %struct.option*, %struct.option** %5, align 8
  %14 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OPTION_END, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %12
  %19 = load %struct.option*, %struct.option** %5, align 8
  %20 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %23 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %21, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %18
  %28 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %29 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %36 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  br label %40

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi i64* [ %38, %34 ], [ null, %39 ]
  %42 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %43 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %42, i32 0, i32 0
  store i64* %41, i64** %43, align 8
  %44 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %45 = load %struct.option*, %struct.option** %5, align 8
  %46 = load %struct.option*, %struct.option** %6, align 8
  %47 = load i32, i32* @OPT_SHORT, align 4
  %48 = call i32 @get_value(%struct.parse_opt_ctx_t* %44, %struct.option* %45, %struct.option* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %136

49:                                               ; preds = %18
  %50 = load %struct.option*, %struct.option** %5, align 8
  %51 = getelementptr inbounds %struct.option, %struct.option* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @OPTION_NUMBER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load %struct.option*, %struct.option** %5, align 8
  store %struct.option* %56, %struct.option** %7, align 8
  br label %57

57:                                               ; preds = %55, %49
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.option*, %struct.option** %5, align 8
  %60 = getelementptr inbounds %struct.option, %struct.option* %59, i32 1
  store %struct.option* %60, %struct.option** %5, align 8
  br label %12

61:                                               ; preds = %12
  %62 = load %struct.option*, %struct.option** %7, align 8
  %63 = icmp ne %struct.option* %62, null
  br i1 %63, label %64, label %134

64:                                               ; preds = %61
  %65 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %66 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @isdigit(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %134

71:                                               ; preds = %64
  store i64 1, i64* %8, align 8
  br label %72

72:                                               ; preds = %81, %71
  %73 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %74 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @isdigit(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %8, align 8
  br label %72

84:                                               ; preds = %72
  %85 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %86 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i8* @xmemdupz(i64* %87, i64 %88)
  store i8* %89, i8** %9, align 8
  %90 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %91 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %84
  %98 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %99 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  br label %104

103:                                              ; preds = %84
  br label %104

104:                                              ; preds = %103, %97
  %105 = phi i64* [ %102, %97 ], [ null, %103 ]
  %106 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %107 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %106, i32 0, i32 0
  store i64* %105, i64** %107, align 8
  %108 = load %struct.option*, %struct.option** %7, align 8
  %109 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 3
  %110 = load i64 (%struct.option*, i8*, i32)*, i64 (%struct.option*, i8*, i32)** %109, align 8
  %111 = icmp ne i64 (%struct.option*, i8*, i32)* %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %104
  %113 = load %struct.option*, %struct.option** %7, align 8
  %114 = getelementptr inbounds %struct.option, %struct.option* %113, i32 0, i32 3
  %115 = load i64 (%struct.option*, i8*, i32)*, i64 (%struct.option*, i8*, i32)** %114, align 8
  %116 = load %struct.option*, %struct.option** %7, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = call i64 %115(%struct.option* %116, i8* %117, i32 0)
  %119 = icmp ne i64 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 -1, i32 0
  store i32 %121, i32* %10, align 4
  br label %130

122:                                              ; preds = %104
  %123 = load %struct.option*, %struct.option** %7, align 8
  %124 = getelementptr inbounds %struct.option, %struct.option* %123, i32 0, i32 2
  %125 = load i32 (%struct.parse_opt_ctx_t*, %struct.option*, i8*, i32)*, i32 (%struct.parse_opt_ctx_t*, %struct.option*, i8*, i32)** %124, align 8
  %126 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %127 = load %struct.option*, %struct.option** %7, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 %125(%struct.parse_opt_ctx_t* %126, %struct.option* %127, i8* %128, i32 0)
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %122, %112
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 @free(i8* %131)
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %3, align 4
  br label %136

134:                                              ; preds = %64, %61
  %135 = load i32, i32* @PARSE_OPT_UNKNOWN, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %130, %40
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @get_value(%struct.parse_opt_ctx_t*, %struct.option*, %struct.option*, i32) #1

declare dso_local i64 @isdigit(i64) #1

declare dso_local i8* @xmemdupz(i64*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
