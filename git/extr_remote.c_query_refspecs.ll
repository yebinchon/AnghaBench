; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_query_refspecs.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_query_refspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.refspec = type { i32, %struct.refspec_item* }
%struct.refspec_item = type { i8*, i8*, i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"query_refspecs: need either src or dst\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query_refspecs(%struct.refspec* %0, %struct.refspec_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.refspec*, align 8
  %5 = alloca %struct.refspec_item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.refspec_item*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.refspec* %0, %struct.refspec** %4, align 8
  store %struct.refspec_item* %1, %struct.refspec_item** %5, align 8
  %13 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %14 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %23 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %27 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i8* [ %24, %21 ], [ %28, %25 ]
  store i8* %30, i8** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %35 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %34, i32 0, i32 0
  br label %39

36:                                               ; preds = %29
  %37 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %38 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %37, i32 0, i32 1
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i8** [ %35, %33 ], [ %38, %36 ]
  store i8** %40, i8*** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %45 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = call i32 @BUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43, %39
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %128, %50
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.refspec*, %struct.refspec** %4, align 8
  %54 = getelementptr inbounds %struct.refspec, %struct.refspec* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %131

57:                                               ; preds = %51
  %58 = load %struct.refspec*, %struct.refspec** %4, align 8
  %59 = getelementptr inbounds %struct.refspec, %struct.refspec* %58, i32 0, i32 1
  %60 = load %struct.refspec_item*, %struct.refspec_item** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %60, i64 %62
  store %struct.refspec_item* %63, %struct.refspec_item** %10, align 8
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.refspec_item*, %struct.refspec_item** %10, align 8
  %68 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  br label %74

70:                                               ; preds = %57
  %71 = load %struct.refspec_item*, %struct.refspec_item** %10, align 8
  %72 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i8* [ %69, %66 ], [ %73, %70 ]
  store i8* %75, i8** %11, align 8
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.refspec_item*, %struct.refspec_item** %10, align 8
  %80 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  br label %86

82:                                               ; preds = %74
  %83 = load %struct.refspec_item*, %struct.refspec_item** %10, align 8
  %84 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i8* [ %81, %78 ], [ %85, %82 ]
  store i8* %87, i8** %12, align 8
  %88 = load %struct.refspec_item*, %struct.refspec_item** %10, align 8
  %89 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  br label %128

93:                                               ; preds = %86
  %94 = load %struct.refspec_item*, %struct.refspec_item** %10, align 8
  %95 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load i8*, i8** %11, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load i8**, i8*** %9, align 8
  %103 = call i64 @match_name_with_pattern(i8* %99, i8* %100, i8* %101, i8** %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load %struct.refspec_item*, %struct.refspec_item** %10, align 8
  %107 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %110 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  store i32 0, i32* %3, align 4
  br label %132

111:                                              ; preds = %98
  br label %127

112:                                              ; preds = %93
  %113 = load i8*, i8** %8, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @strcmp(i8* %113, i8* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %112
  %118 = load i8*, i8** %12, align 8
  %119 = call i8* @xstrdup(i8* %118)
  %120 = load i8**, i8*** %9, align 8
  store i8* %119, i8** %120, align 8
  %121 = load %struct.refspec_item*, %struct.refspec_item** %10, align 8
  %122 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %125 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  store i32 0, i32* %3, align 4
  br label %132

126:                                              ; preds = %112
  br label %127

127:                                              ; preds = %126, %111
  br label %128

128:                                              ; preds = %127, %92
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %51

131:                                              ; preds = %51
  store i32 -1, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %117, %105
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i64 @match_name_with_pattern(i8*, i8*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
