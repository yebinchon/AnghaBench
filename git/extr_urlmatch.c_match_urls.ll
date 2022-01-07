; ModuleID = '/home/carl/AnghaBench/git/extr_urlmatch.c_match_urls.c'
source_filename = "/home/carl/AnghaBench/git/extr_urlmatch.c_match_urls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url_info = type { i64, i64, i64, i32, i64, i64, i64, i64, i64 }
%struct.urlmatch_item = type { i64, i8, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.url_info*, %struct.url_info*, %struct.urlmatch_item*)* @match_urls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_urls(%struct.url_info* %0, %struct.url_info* %1, %struct.urlmatch_item* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.url_info*, align 8
  %6 = alloca %struct.url_info*, align 8
  %7 = alloca %struct.urlmatch_item*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store %struct.url_info* %0, %struct.url_info** %5, align 8
  store %struct.url_info* %1, %struct.url_info** %6, align 8
  store %struct.urlmatch_item* %2, %struct.urlmatch_item** %7, align 8
  store i8 0, i8* %8, align 1
  %10 = load %struct.url_info*, %struct.url_info** %5, align 8
  %11 = icmp ne %struct.url_info* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load %struct.url_info*, %struct.url_info** %6, align 8
  %14 = icmp ne %struct.url_info* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.url_info*, %struct.url_info** %5, align 8
  %17 = getelementptr inbounds %struct.url_info, %struct.url_info* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.url_info*, %struct.url_info** %6, align 8
  %22 = getelementptr inbounds %struct.url_info, %struct.url_info* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %15, %12, %3
  store i32 0, i32* %4, align 4
  br label %164

26:                                               ; preds = %20
  %27 = load %struct.url_info*, %struct.url_info** %6, align 8
  %28 = getelementptr inbounds %struct.url_info, %struct.url_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.url_info*, %struct.url_info** %5, align 8
  %31 = getelementptr inbounds %struct.url_info, %struct.url_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %26
  %35 = load %struct.url_info*, %struct.url_info** %5, align 8
  %36 = getelementptr inbounds %struct.url_info, %struct.url_info* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.url_info*, %struct.url_info** %6, align 8
  %39 = getelementptr inbounds %struct.url_info, %struct.url_info* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.url_info*, %struct.url_info** %5, align 8
  %42 = getelementptr inbounds %struct.url_info, %struct.url_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @strncmp(i64 %37, i64 %40, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34, %26
  store i32 0, i32* %4, align 4
  br label %164

47:                                               ; preds = %34
  %48 = load %struct.url_info*, %struct.url_info** %6, align 8
  %49 = getelementptr inbounds %struct.url_info, %struct.url_info* %48, i32 0, i32 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %47
  %53 = load %struct.url_info*, %struct.url_info** %5, align 8
  %54 = getelementptr inbounds %struct.url_info, %struct.url_info* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %52
  %58 = load %struct.url_info*, %struct.url_info** %5, align 8
  %59 = getelementptr inbounds %struct.url_info, %struct.url_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.url_info*, %struct.url_info** %6, align 8
  %62 = getelementptr inbounds %struct.url_info, %struct.url_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %85, label %65

65:                                               ; preds = %57
  %66 = load %struct.url_info*, %struct.url_info** %5, align 8
  %67 = getelementptr inbounds %struct.url_info, %struct.url_info* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.url_info*, %struct.url_info** %5, align 8
  %70 = getelementptr inbounds %struct.url_info, %struct.url_info* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.url_info*, %struct.url_info** %6, align 8
  %74 = getelementptr inbounds %struct.url_info, %struct.url_info* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.url_info*, %struct.url_info** %6, align 8
  %77 = getelementptr inbounds %struct.url_info, %struct.url_info* %76, i32 0, i32 8
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = load %struct.url_info*, %struct.url_info** %5, align 8
  %81 = getelementptr inbounds %struct.url_info, %struct.url_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @strncmp(i64 %72, i64 %79, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %65, %57, %52
  store i32 0, i32* %4, align 4
  br label %164

86:                                               ; preds = %65
  store i8 1, i8* %8, align 1
  br label %87

87:                                               ; preds = %86, %47
  %88 = load %struct.url_info*, %struct.url_info** %5, align 8
  %89 = load %struct.url_info*, %struct.url_info** %6, align 8
  %90 = call i32 @match_host(%struct.url_info* %88, %struct.url_info* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %164

93:                                               ; preds = %87
  %94 = load %struct.url_info*, %struct.url_info** %6, align 8
  %95 = getelementptr inbounds %struct.url_info, %struct.url_info* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.url_info*, %struct.url_info** %5, align 8
  %98 = getelementptr inbounds %struct.url_info, %struct.url_info* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %121, label %101

101:                                              ; preds = %93
  %102 = load %struct.url_info*, %struct.url_info** %5, align 8
  %103 = getelementptr inbounds %struct.url_info, %struct.url_info* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.url_info*, %struct.url_info** %5, align 8
  %106 = getelementptr inbounds %struct.url_info, %struct.url_info* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = load %struct.url_info*, %struct.url_info** %6, align 8
  %110 = getelementptr inbounds %struct.url_info, %struct.url_info* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.url_info*, %struct.url_info** %6, align 8
  %113 = getelementptr inbounds %struct.url_info, %struct.url_info* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = load %struct.url_info*, %struct.url_info** %5, align 8
  %117 = getelementptr inbounds %struct.url_info, %struct.url_info* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @strncmp(i64 %108, i64 %115, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %101, %93
  store i32 0, i32* %4, align 4
  br label %164

122:                                              ; preds = %101
  %123 = load %struct.url_info*, %struct.url_info** %5, align 8
  %124 = getelementptr inbounds %struct.url_info, %struct.url_info* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.url_info*, %struct.url_info** %5, align 8
  %127 = getelementptr inbounds %struct.url_info, %struct.url_info* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %125, %128
  %130 = load %struct.url_info*, %struct.url_info** %6, align 8
  %131 = getelementptr inbounds %struct.url_info, %struct.url_info* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.url_info*, %struct.url_info** %6, align 8
  %134 = getelementptr inbounds %struct.url_info, %struct.url_info* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %132, %135
  %137 = load %struct.url_info*, %struct.url_info** %6, align 8
  %138 = getelementptr inbounds %struct.url_info, %struct.url_info* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.url_info*, %struct.url_info** %6, align 8
  %141 = getelementptr inbounds %struct.url_info, %struct.url_info* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %139, %142
  %144 = call i64 @url_match_prefix(i64 %129, i64 %136, i64 %143)
  store i64 %144, i64* %9, align 8
  %145 = load i64, i64* %9, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %164

148:                                              ; preds = %122
  %149 = load %struct.urlmatch_item*, %struct.urlmatch_item** %7, align 8
  %150 = icmp ne %struct.urlmatch_item* %149, null
  br i1 %150, label %151, label %163

151:                                              ; preds = %148
  %152 = load %struct.url_info*, %struct.url_info** %6, align 8
  %153 = getelementptr inbounds %struct.url_info, %struct.url_info* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.urlmatch_item*, %struct.urlmatch_item** %7, align 8
  %156 = getelementptr inbounds %struct.urlmatch_item, %struct.urlmatch_item* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 4
  %157 = load i64, i64* %9, align 8
  %158 = load %struct.urlmatch_item*, %struct.urlmatch_item** %7, align 8
  %159 = getelementptr inbounds %struct.urlmatch_item, %struct.urlmatch_item* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load i8, i8* %8, align 1
  %161 = load %struct.urlmatch_item*, %struct.urlmatch_item** %7, align 8
  %162 = getelementptr inbounds %struct.urlmatch_item, %struct.urlmatch_item* %161, i32 0, i32 1
  store i8 %160, i8* %162, align 8
  br label %163

163:                                              ; preds = %151, %148
  store i32 1, i32* %4, align 4
  br label %164

164:                                              ; preds = %163, %147, %121, %92, %85, %46, %25
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i64 @strncmp(i64, i64, i64) #1

declare dso_local i32 @match_host(%struct.url_info*, %struct.url_info*) #1

declare dso_local i64 @url_match_prefix(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
