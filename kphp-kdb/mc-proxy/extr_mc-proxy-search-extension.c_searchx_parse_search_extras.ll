; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_searchx_parse_search_extras.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_searchx_parse_search_extras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_raw = common dso_local global i32 0, align 4
@Q_order = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i32 0, align 4
@Q_slice_limit = common dso_local global i64 0, align 8
@Q_limit_end = common dso_local global i8* null, align 8
@Q_limit_ptr = common dso_local global i8* null, align 8
@Q_searchx_hash_off = common dso_local global i32 0, align 4
@MAX_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @searchx_parse_search_extras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @searchx_parse_search_extras(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %4, align 8
  store i32 0, i32* @Q_raw, align 4
  store i32 0, i32* @Q_order, align 4
  store i32 0, i32* @Q_limit, align 4
  store i64 0, i64* @Q_slice_limit, align 8
  store i8* null, i8** @Q_limit_end, align 8
  store i8* null, i8** @Q_limit_ptr, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 6
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 120
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 117
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i1 [ true, %1 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 117
  br i1 %25, label %26, label %44

26:                                               ; preds = %18
  %27 = load i32, i32* @Q_order, align 4
  %28 = or i32 %27, 2
  store i32 %28, i32* @Q_order, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sle i32 97, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sle i32 %38, 122
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  br label %43

43:                                               ; preds = %40, %35, %26
  br label %47

44:                                               ; preds = %18
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  br label %47

47:                                               ; preds = %44, %43
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 35
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 37
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 -1, i32* @Q_limit, align 4
  store i8* null, i8** %2, align 8
  br label %140

58:                                               ; preds = %52, %47
  %59 = load i8*, i8** %4, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* @Q_searchx_hash_off, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 37
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store i32 1, i32* @Q_raw, align 4
  br label %70

70:                                               ; preds = %69, %58
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %4, align 8
  %73 = load i32, i32* @Q_order, align 4
  %74 = or i32 %73, 8
  store i32 %74, i32* @Q_order, align 4
  %75 = load i32, i32* @Q_order, align 4
  %76 = or i32 %75, 4
  store i32 %76, i32* @Q_order, align 4
  br label %77

77:                                               ; preds = %99, %70
  %78 = load i8*, i8** %4, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load i8*, i8** %4, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 40
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load i8*, i8** %4, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 60
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i8*, i8** %4, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 91
  br label %97

97:                                               ; preds = %92, %87, %82, %77
  %98 = phi i1 [ false, %87 ], [ false, %82 ], [ false, %77 ], [ %96, %92 ]
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %4, align 8
  br label %77

102:                                              ; preds = %97
  %103 = load i8*, i8** %4, align 8
  %104 = load i8, i8* %103, align 1
  %105 = icmp ne i8 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  store i32 -1, i32* @Q_limit, align 4
  %107 = load i8*, i8** %4, align 8
  store i8* %107, i8** %2, align 8
  br label %140

108:                                              ; preds = %102
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 -1
  store i8* %110, i8** %4, align 8
  br label %111

111:                                              ; preds = %123, %108
  %112 = load i8*, i8** %4, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp sge i32 %114, 48
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i8*, i8** %4, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp sle i32 %119, 57
  br label %121

121:                                              ; preds = %116, %111
  %122 = phi i1 [ false, %111 ], [ %120, %116 ]
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = load i8*, i8** %4, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 -1
  store i8* %125, i8** %4, align 8
  br label %111

126:                                              ; preds = %121
  %127 = load i8*, i8** %4, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %4, align 8
  %129 = load i8*, i8** %4, align 8
  %130 = call i32 @strtol(i8* %129, i8** %5, i32 10)
  store i32 %130, i32* @Q_limit, align 4
  %131 = load i8*, i8** %4, align 8
  store i8* %131, i8** @Q_limit_ptr, align 8
  %132 = load i8*, i8** %5, align 8
  store i8* %132, i8** @Q_limit_end, align 8
  %133 = load i32, i32* @Q_limit, align 4
  %134 = load i32, i32* @MAX_RES, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = load i32, i32* @MAX_RES, align 4
  store i32 %137, i32* @Q_limit, align 4
  br label %138

138:                                              ; preds = %136, %126
  %139 = load i8*, i8** %5, align 8
  store i8* %139, i8** %2, align 8
  br label %140

140:                                              ; preds = %138, %106, %57
  %141 = load i8*, i8** %2, align 8
  ret i8* %141
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
