; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_query_refspecs_multiple.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_query_refspecs_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.refspec = type { i32, %struct.refspec_item* }
%struct.refspec_item = type { i8*, i8*, i64 }
%struct.string_list = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"query_refspecs_multiple: need either src or dst\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.refspec*, %struct.refspec_item*, %struct.string_list*)* @query_refspecs_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_refspecs_multiple(%struct.refspec* %0, %struct.refspec_item* %1, %struct.string_list* %2) #0 {
  %4 = alloca %struct.refspec*, align 8
  %5 = alloca %struct.refspec_item*, align 8
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.refspec_item*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  store %struct.refspec* %0, %struct.refspec** %4, align 8
  store %struct.refspec_item* %1, %struct.refspec_item** %5, align 8
  store %struct.string_list* %2, %struct.string_list** %6, align 8
  %14 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %15 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %24 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 @BUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22, %3
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %123, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.refspec*, %struct.refspec** %4, align 8
  %33 = getelementptr inbounds %struct.refspec, %struct.refspec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %126

36:                                               ; preds = %30
  %37 = load %struct.refspec*, %struct.refspec** %4, align 8
  %38 = getelementptr inbounds %struct.refspec, %struct.refspec* %37, i32 0, i32 1
  %39 = load %struct.refspec_item*, %struct.refspec_item** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %39, i64 %41
  store %struct.refspec_item* %42, %struct.refspec_item** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.refspec_item*, %struct.refspec_item** %9, align 8
  %47 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  br label %53

49:                                               ; preds = %36
  %50 = load %struct.refspec_item*, %struct.refspec_item** %9, align 8
  %51 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i8* [ %48, %45 ], [ %52, %49 ]
  store i8* %54, i8** %10, align 8
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.refspec_item*, %struct.refspec_item** %9, align 8
  %59 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  br label %65

61:                                               ; preds = %53
  %62 = load %struct.refspec_item*, %struct.refspec_item** %9, align 8
  %63 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i8* [ %60, %57 ], [ %64, %61 ]
  store i8* %66, i8** %11, align 8
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %71 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  br label %77

73:                                               ; preds = %65
  %74 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %75 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i8* [ %72, %69 ], [ %76, %73 ]
  store i8* %78, i8** %12, align 8
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %83 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %82, i32 0, i32 0
  br label %87

84:                                               ; preds = %77
  %85 = load %struct.refspec_item*, %struct.refspec_item** %5, align 8
  %86 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %85, i32 0, i32 1
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i8** [ %83, %81 ], [ %86, %84 ]
  store i8** %88, i8*** %13, align 8
  %89 = load %struct.refspec_item*, %struct.refspec_item** %9, align 8
  %90 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %123

94:                                               ; preds = %87
  %95 = load %struct.refspec_item*, %struct.refspec_item** %9, align 8
  %96 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %94
  %100 = load i8*, i8** %10, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = load i8**, i8*** %13, align 8
  %104 = call i64 @match_name_with_pattern(i8* %100, i8* %101, i8* %102, i8** %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.string_list*, %struct.string_list** %6, align 8
  %108 = load i8**, i8*** %13, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @string_list_append_nodup(%struct.string_list* %107, i8* %109)
  br label %111

111:                                              ; preds = %106, %99
  br label %122

112:                                              ; preds = %94
  %113 = load i8*, i8** %12, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @strcmp(i8* %113, i8* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = load %struct.string_list*, %struct.string_list** %6, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 @string_list_append(%struct.string_list* %118, i8* %119)
  br label %121

121:                                              ; preds = %117, %112
  br label %122

122:                                              ; preds = %121, %111
  br label %123

123:                                              ; preds = %122, %93
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %30

126:                                              ; preds = %30
  ret void
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i64 @match_name_with_pattern(i8*, i8*, i8*, i8**) #1

declare dso_local i32 @string_list_append_nodup(%struct.string_list*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
