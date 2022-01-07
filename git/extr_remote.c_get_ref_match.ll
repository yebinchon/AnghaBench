; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_get_ref_match.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_get_ref_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.refspec = type { i32, %struct.refspec_item* }
%struct.refspec_item = type { i8*, i8*, i64, i64, i64 }
%struct.ref = type { i32 }

@FROM_SRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.refspec*, %struct.ref*, i32, i32, %struct.refspec_item**)* @get_ref_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_ref_match(%struct.refspec* %0, %struct.ref* %1, i32 %2, i32 %3, %struct.refspec_item** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.refspec*, align 8
  %8 = alloca %struct.ref*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.refspec_item**, align 8
  %12 = alloca %struct.refspec_item*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.refspec_item*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.refspec* %0, %struct.refspec** %7, align 8
  store %struct.ref* %1, %struct.ref** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.refspec_item** %4, %struct.refspec_item*** %11, align 8
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %94, %5
  %20 = load i32, i32* %14, align 4
  %21 = load %struct.refspec*, %struct.refspec** %7, align 8
  %22 = getelementptr inbounds %struct.refspec, %struct.refspec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %97

25:                                               ; preds = %19
  %26 = load %struct.refspec*, %struct.refspec** %7, align 8
  %27 = getelementptr inbounds %struct.refspec, %struct.refspec* %26, i32 0, i32 1
  %28 = load %struct.refspec_item*, %struct.refspec_item** %27, align 8
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %28, i64 %30
  store %struct.refspec_item* %31, %struct.refspec_item** %16, align 8
  %32 = load %struct.refspec_item*, %struct.refspec_item** %16, align 8
  %33 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %25
  %37 = load i32, i32* %15, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load %struct.refspec_item*, %struct.refspec_item** %16, align 8
  %41 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %36
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %15, align 4
  br label %94

46:                                               ; preds = %39, %25
  %47 = load %struct.refspec_item*, %struct.refspec_item** %16, align 8
  %48 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %93

51:                                               ; preds = %46
  %52 = load %struct.refspec_item*, %struct.refspec_item** %16, align 8
  %53 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.refspec_item*, %struct.refspec_item** %16, align 8
  %58 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  br label %64

60:                                               ; preds = %51
  %61 = load %struct.refspec_item*, %struct.refspec_item** %16, align 8
  %62 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i8* [ %59, %56 ], [ %63, %60 ]
  store i8* %65, i8** %17, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @FROM_SRC, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.refspec_item*, %struct.refspec_item** %16, align 8
  %71 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.ref*, %struct.ref** %8, align 8
  %74 = getelementptr inbounds %struct.ref, %struct.ref* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %17, align 8
  %77 = call i32 @match_name_with_pattern(i8* %72, i32 %75, i8* %76, i8** %13)
  store i32 %77, i32* %18, align 4
  br label %87

78:                                               ; preds = %64
  %79 = load i8*, i8** %17, align 8
  %80 = load %struct.ref*, %struct.ref** %8, align 8
  %81 = getelementptr inbounds %struct.ref, %struct.ref* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.refspec_item*, %struct.refspec_item** %16, align 8
  %84 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @match_name_with_pattern(i8* %79, i32 %82, i8* %85, i8** %13)
  store i32 %86, i32* %18, align 4
  br label %87

87:                                               ; preds = %78, %69
  %88 = load i32, i32* %18, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %15, align 4
  br label %97

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %46
  br label %94

94:                                               ; preds = %93, %44
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %19

97:                                               ; preds = %90, %19
  %98 = load i32, i32* %15, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i8* null, i8** %6, align 8
  br label %135

101:                                              ; preds = %97
  %102 = load %struct.refspec*, %struct.refspec** %7, align 8
  %103 = getelementptr inbounds %struct.refspec, %struct.refspec* %102, i32 0, i32 1
  %104 = load %struct.refspec_item*, %struct.refspec_item** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %104, i64 %106
  store %struct.refspec_item* %107, %struct.refspec_item** %12, align 8
  %108 = load %struct.refspec_item*, %struct.refspec_item** %12, align 8
  %109 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %101
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = load %struct.ref*, %struct.ref** %8, align 8
  %117 = getelementptr inbounds %struct.ref, %struct.ref* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @starts_with(i32 %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  store i8* null, i8** %6, align 8
  br label %135

122:                                              ; preds = %115, %112
  %123 = load %struct.ref*, %struct.ref** %8, align 8
  %124 = getelementptr inbounds %struct.ref, %struct.ref* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @xstrdup(i32 %125)
  store i8* %126, i8** %13, align 8
  br label %127

127:                                              ; preds = %122, %101
  %128 = load %struct.refspec_item**, %struct.refspec_item*** %11, align 8
  %129 = icmp ne %struct.refspec_item** %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.refspec_item*, %struct.refspec_item** %12, align 8
  %132 = load %struct.refspec_item**, %struct.refspec_item*** %11, align 8
  store %struct.refspec_item* %131, %struct.refspec_item** %132, align 8
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i8*, i8** %13, align 8
  store i8* %134, i8** %6, align 8
  br label %135

135:                                              ; preds = %133, %121, %100
  %136 = load i8*, i8** %6, align 8
  ret i8* %136
}

declare dso_local i32 @match_name_with_pattern(i8*, i32, i8*, i8**) #1

declare dso_local i32 @starts_with(i32, i8*) #1

declare dso_local i8* @xstrdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
