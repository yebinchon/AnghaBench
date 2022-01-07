; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_prepare_multiple_query_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_prepare_multiple_query_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@tag_id = common dso_local global i64 0, align 8
@value_buff = common dso_local global i8* null, align 8
@stats_buff = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ERROR near '%.256s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_multiple_query_query(%struct.connection* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @parse_search_extras(i8* %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 40
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %144

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @register_long_query(i8* %25, i32 %26)
  %28 = call i32 (...) @clear_query_list()
  store i8* null, i8** %13, align 8
  %29 = load %struct.connection*, %struct.connection** %6, align 8
  %30 = call i64 @load_temp_data(%struct.connection* %29)
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %97

32:                                               ; preds = %24
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %36, 48
  br i1 %37, label %38, label %97

38:                                               ; preds = %32
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 57
  br i1 %43, label %44, label %97

44:                                               ; preds = %38
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = call i64 @strtol(i8* %46, i8** %12, i32 10)
  %48 = load i64, i64* @tag_id, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %97

50:                                               ; preds = %44
  %51 = load i8*, i8** @value_buff, align 8
  store i8* %51, i8** %11, align 8
  %52 = call i64 @compile_add_query(i8** %11)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %74, %54
  %56 = load i8*, i8** %11, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 59
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %11, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i1 [ true, %55 ], [ %64, %60 ]
  br i1 %66, label %67, label %75

67:                                               ; preds = %65
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %11, align 8
  %70 = call i64 @compile_add_query(i8** %11)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %11, align 8
  store i8* %73, i8** %13, align 8
  br label %75

74:                                               ; preds = %67
  br label %55

75:                                               ; preds = %72, %65
  br label %76

76:                                               ; preds = %75, %50
  %77 = load i8*, i8** %13, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %96, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** %11, align 8
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i8*, i8** %11, align 8
  store i8* %84, i8** %13, align 8
  br label %95

85:                                               ; preds = %79
  %86 = load i8*, i8** %12, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %12, align 8
  %88 = load i8, i8* %86, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 59
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 -1
  store i8* %93, i8** %13, align 8
  br label %94

94:                                               ; preds = %91, %85
  br label %95

95:                                               ; preds = %94, %83
  br label %96

96:                                               ; preds = %95, %76
  br label %97

97:                                               ; preds = %96, %44, %38, %32, %24
  %98 = load i8*, i8** %12, align 8
  store i8* %98, i8** %11, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %119, label %101

101:                                              ; preds = %97
  %102 = call i64 @compile_add_query(i8** %11)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %117, %104
  %106 = load i8*, i8** %11, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 59
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %11, align 8
  %113 = call i64 @compile_add_query(i8** %11)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %116 = load i8*, i8** %11, align 8
  store i8* %116, i8** %13, align 8
  br label %118

117:                                              ; preds = %110
  br label %105

118:                                              ; preds = %115, %105
  br label %119

119:                                              ; preds = %118, %101, %97
  %120 = load i8*, i8** %7, align 8
  %121 = call i64 @parse_search_extras(i8* %120)
  %122 = load i8*, i8** %13, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %130, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @parse_search_query_termination(i8* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = load i8*, i8** %11, align 8
  store i8* %129, i8** %13, align 8
  br label %130

130:                                              ; preds = %128, %124, %119
  %131 = load i8*, i8** %13, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load %struct.connection*, %struct.connection** %6, align 8
  %135 = call i32 @complete_long_query(%struct.connection* %134, i32 -1)
  %136 = load %struct.connection*, %struct.connection** %6, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = load i32, i32* @stats_buff, align 4
  %139 = load i32, i32* @stats_buff, align 4
  %140 = load i8*, i8** %13, align 8
  %141 = call i32 @sprintf(i32 %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %140)
  %142 = call i32 @return_one_key(%struct.connection* %136, i8* %137, i32 %138, i32 %141)
  store i32 0, i32* %5, align 4
  br label %144

143:                                              ; preds = %130
  store i32 1, i32* %5, align 4
  br label %144

144:                                              ; preds = %143, %133, %23
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i64 @parse_search_extras(i8*) #1

declare dso_local i32 @register_long_query(i8*, i32) #1

declare dso_local i32 @clear_query_list(...) #1

declare dso_local i64 @load_temp_data(%struct.connection*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @compile_add_query(i8**) #1

declare dso_local i32 @parse_search_query_termination(i8*) #1

declare dso_local i32 @complete_long_query(%struct.connection*, i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
