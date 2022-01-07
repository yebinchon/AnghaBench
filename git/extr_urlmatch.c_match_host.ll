; ModuleID = '/home/carl/AnghaBench/git/extr_urlmatch.c_match_host.c'
source_filename = "/home/carl/AnghaBench/git/extr_urlmatch.c_match_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url_info = type { i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.url_info*, %struct.url_info*)* @match_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_host(%struct.url_info* %0, %struct.url_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.url_info*, align 8
  %5 = alloca %struct.url_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.url_info* %0, %struct.url_info** %4, align 8
  store %struct.url_info* %1, %struct.url_info** %5, align 8
  %12 = load %struct.url_info*, %struct.url_info** %4, align 8
  %13 = getelementptr inbounds %struct.url_info, %struct.url_info* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.url_info*, %struct.url_info** %4, align 8
  %16 = getelementptr inbounds %struct.url_info, %struct.url_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  store i8* %19, i8** %6, align 8
  %20 = load %struct.url_info*, %struct.url_info** %5, align 8
  %21 = getelementptr inbounds %struct.url_info, %struct.url_info* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.url_info*, %struct.url_info** %5, align 8
  %24 = getelementptr inbounds %struct.url_info, %struct.url_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  store i8* %27, i8** %7, align 8
  %28 = load %struct.url_info*, %struct.url_info** %4, align 8
  %29 = getelementptr inbounds %struct.url_info, %struct.url_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.url_info*, %struct.url_info** %5, align 8
  %32 = getelementptr inbounds %struct.url_info, %struct.url_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %116, %2
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ false, %34 ], [ %39, %37 ]
  br i1 %41, label %42, label %127

42:                                               ; preds = %40
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @end_of_token(i8* %43, i8 signext 46, i32 %44)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i8* @end_of_token(i8* %46, i8 signext 46, i32 %47)
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = icmp eq i8* %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %42
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 42
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %86

60:                                               ; preds = %53, %42
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = icmp eq i64 %65, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %60
  %73 = load i8*, i8** %6, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memcmp(i8* %73, i8* %74, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %72
  br label %85

84:                                               ; preds = %72, %60
  store i32 0, i32* %3, align 4
  br label %137

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %85, %59
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = icmp ult i8* %87, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %10, align 8
  br label %96

96:                                               ; preds = %93, %86
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %8, align 4
  %106 = load i8*, i8** %10, align 8
  store i8* %106, i8** %6, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = icmp ult i8* %107, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %96
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %11, align 8
  br label %116

116:                                              ; preds = %113, %96
  %117 = load i8*, i8** %11, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = sub nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %9, align 4
  %126 = load i8*, i8** %11, align 8
  store i8* %126, i8** %7, align 8
  br label %34

127:                                              ; preds = %40
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  br label %134

134:                                              ; preds = %130, %127
  %135 = phi i1 [ false, %127 ], [ %133, %130 ]
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %134, %84
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i8* @end_of_token(i8*, i8 signext, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
