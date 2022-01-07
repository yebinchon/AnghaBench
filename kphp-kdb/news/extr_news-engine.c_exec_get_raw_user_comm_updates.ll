; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_exec_get_raw_user_comm_updates.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_exec_get_raw_user_comm_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"raw_user_comm_updates[%d,%d]:%n\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"raw_user_comm_updates%n%d\00", align 1
@Q = common dso_local global i32* null, align 8
@MAX_QUERY = common dso_local global i32 0, align 4
@QL = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"QL = %d, bookmarks_size = %d\0A\00", align 1
@bookmarks_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"prepare_raw_comm_updates(%d_%d_%d) = %d\0A\00", align 1
@R = common dso_local global i64 0, align 8
@R_end = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, i8*, i32, i32)* @exec_get_raw_user_comm_updates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_get_raw_user_comm_updates(%struct.connection* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  br label %25

25:                                               ; preds = %24, %4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12, i32* %13)
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32* %13, i32* %10)
  %38 = icmp sge i32 %37, 1
  br i1 %38, label %39, label %173

39:                                               ; preds = %32, %25
  %40 = load i32, i32* %13, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %173

42:                                               ; preds = %39
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %13, align 4
  store i8* null, i8** %16, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = call i32 @strtol(i8* %49, i8** %16, i32 10)
  store i32 %50, i32* %10, align 4
  %51 = load i8*, i8** %16, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = icmp ult i8* %51, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %42
  %58 = load i8*, i8** %16, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 44
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8*, i8** %16, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %16, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = call i32 @strtol(i8* %65, i8** %16, i32 10)
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %62, %57, %42
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32*, i32** @Q, align 8
  %71 = load i32, i32* @MAX_QUERY, align 4
  %72 = sdiv i32 %71, 3
  %73 = call i32 @get_bookmarks(i32 %68, i32 %69, i32* %70, i32 %72)
  store i32 %73, i32* @QL, align 4
  %74 = load i32, i32* @verbosity, align 4
  %75 = icmp sge i32 %74, 2
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load i32, i32* @stderr, align 4
  %78 = load i32, i32* @QL, align 4
  %79 = load i32, i32* @bookmarks_size, align 4
  %80 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %67
  %82 = load i32, i32* @QL, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 -2, i32* %5, align 4
  br label %174

85:                                               ; preds = %81
  %86 = call i32 (...) @clear_result_buffer()
  store i32 0, i32* %18, align 4
  %87 = load i32, i32* @QL, align 4
  %88 = mul nsw i32 %87, 3
  store i32 %88, i32* @QL, align 4
  %89 = load i32, i32* @QL, align 4
  %90 = load i32, i32* @MAX_QUERY, align 4
  %91 = icmp sle i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  store i32 0, i32* %17, align 4
  br label %94

94:                                               ; preds = %149, %85
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @QL, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %152

98:                                               ; preds = %94
  %99 = load i32*, i32** @Q, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** @Q, align 8
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** @Q, align 8
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @prepare_raw_comm_updates(i32 %103, i32 %109, i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* @verbosity, align 4
  %120 = icmp sgt i32 %119, 2
  br i1 %120, label %121, label %142

121:                                              ; preds = %98
  %122 = load i32, i32* @stderr, align 4
  %123 = load i32*, i32** @Q, align 8
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** @Q, align 8
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** @Q, align 8
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %19, align 4
  %141 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 %133, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %121, %98
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* %19, align 4
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %146, %142
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, 3
  store i32 %151, i32* %17, align 4
  br label %94

152:                                              ; preds = %94
  %153 = load i32, i32* %18, align 4
  %154 = icmp sge i32 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %152
  %156 = load %struct.connection*, %struct.connection** %6, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = sub i64 0, %159
  %161 = getelementptr inbounds i8, i8* %157, i64 %160
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* %14, align 4
  %166 = sub nsw i32 0, %165
  %167 = load i64, i64* @R, align 8
  %168 = load i64, i64* @R_end, align 8
  %169 = load i64, i64* @R, align 8
  %170 = sub nsw i64 %168, %169
  %171 = call i32 @return_one_key_list(%struct.connection* %156, i8* %161, i32 %164, i32 2147483647, i32 %166, i64 %167, i64 %170)
  store i32 %171, i32* %5, align 4
  br label %174

172:                                              ; preds = %152
  br label %173

173:                                              ; preds = %172, %39, %32
  store i32 0, i32* %5, align 4
  br label %174

174:                                              ; preds = %173, %155, %84
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @get_bookmarks(i32, i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @clear_result_buffer(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @prepare_raw_comm_updates(i32, i32, i32, i32, i32) #1

declare dso_local i32 @return_one_key_list(%struct.connection*, i8*, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
