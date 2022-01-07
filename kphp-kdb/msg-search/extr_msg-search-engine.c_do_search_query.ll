; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_do_search_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_do_search_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"search(\00", align 1
@MAX_NET_RES = common dso_local global i32 0, align 4
@MAX_QUERY_WORDS = common dso_local global i32 0, align 4
@MaxQw = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"%d search query: uid=%d, max_res=%d, keywords=%d, text='%s'\0A\00", align 1
@now = common dso_local global i32 0, align 4
@Qw = common dso_local global i32 0, align 4
@UH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"no_user\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"empty_query\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"search_error\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"VALUE \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c" 0 .........\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ResL = common dso_local global i32 0, align 4
@Res = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"% 9d\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\0D\0AEND\0D\0A\00", align 1
@tot_response_words = common dso_local global i32 0, align 4
@tot_response_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_search_query(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %222

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 7
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 @strtol(i8* %23, i8** %12, i32 10)
  store i32 %24, i32* %8, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %20
  %29 = load i8*, i8** %12, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 44
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp sgt i64 %38, 1073741824
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %33, %28, %20
  store i32 -1, i32* %4, align 4
  br label %222

41:                                               ; preds = %36
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %13, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 @strtol(i8* %44, i8** %12, i32 10)
  store i32 %45, i32* %9, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %41
  %50 = load i8*, i8** %12, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 44
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @MAX_NET_RES, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %54, %49, %41
  store i32 -1, i32* %4, align 4
  br label %222

62:                                               ; preds = %57
  %63 = load i32, i32* @MAX_QUERY_WORDS, align 4
  store i32 %63, i32* @MaxQw, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = call i32 @process_text(i8* %65)
  %67 = load i64, i64* @verbosity, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load i32, i32* @stderr, align 4
  %71 = load i32, i32* @now, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @Qw, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72, i32 %73, i32 %74, i8* %76)
  br label %78

78:                                               ; preds = %69, %62
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @dyn_user_header(i32 %79, i32 0)
  store i32 %80, i32* @UH, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @load_user(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @UH, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load %struct.connection*, %struct.connection** %5, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @return_key_value(%struct.connection* %88, i8* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  store i32 %90, i32* %4, align 4
  br label %222

91:                                               ; preds = %84, %78
  %92 = load i32, i32* @Qw, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load %struct.connection*, %struct.connection** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @return_key_value(%struct.connection* %95, i8* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  store i32 %97, i32* %4, align 4
  br label %222

98:                                               ; preds = %91
  %99 = call i64 (...) @do_combined_search()
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load %struct.connection*, %struct.connection** %5, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @return_key_value(%struct.connection* %102, i8* %103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 12)
  store i32 %104, i32* %4, align 4
  br label %222

105:                                              ; preds = %98
  %106 = load %struct.connection*, %struct.connection** %5, align 8
  %107 = getelementptr inbounds %struct.connection, %struct.connection* %106, i32 0, i32 0
  %108 = call i8* @get_write_ptr(i32* %107, i32 512)
  store i8* %108, i8** %12, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  store i32 -1, i32* %4, align 4
  br label %222

112:                                              ; preds = %105
  %113 = load i8*, i8** %12, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 480
  store i8* %114, i8** %13, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = call i32 @memcpy(i8* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %117 = load i8*, i8** %12, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 6
  store i8* %118, i8** %12, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @memcpy(i8* %119, i8* %120, i32 %121)
  %123 = load i32, i32* %7, align 4
  %124 = load i8*, i8** %12, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %12, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = call i32 @memcpy(i8* %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 14)
  %129 = load i8*, i8** %12, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 3
  store i8* %130, i8** %14, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 14
  store i8* %132, i8** %12, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = load i32, i32* @ResL, align 4
  %135 = call i64 @sprintf(i8* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %134)
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %11, align 4
  %137 = load i8*, i8** %12, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %193, %112
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @ResL, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %145, %146
  br label %148

148:                                              ; preds = %144, %140
  %149 = phi i1 [ false, %140 ], [ %147, %144 ]
  br i1 %149, label %150, label %196

150:                                              ; preds = %148
  %151 = load i8*, i8** %12, align 8
  %152 = load i8*, i8** %13, align 8
  %153 = icmp uge i8* %151, %152
  br i1 %153, label %154, label %174

154:                                              ; preds = %150
  %155 = load %struct.connection*, %struct.connection** %5, align 8
  %156 = getelementptr inbounds %struct.connection, %struct.connection* %155, i32 0, i32 0
  %157 = load i8*, i8** %12, align 8
  %158 = load i8*, i8** %13, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 -480
  %160 = ptrtoint i8* %157 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  %163 = trunc i64 %162 to i32
  %164 = call i32 @advance_write_ptr(i32* %156, i32 %163)
  %165 = load %struct.connection*, %struct.connection** %5, align 8
  %166 = getelementptr inbounds %struct.connection, %struct.connection* %165, i32 0, i32 0
  %167 = call i8* @get_write_ptr(i32* %166, i32 512)
  store i8* %167, i8** %12, align 8
  %168 = load i8*, i8** %12, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %154
  store i32 -1, i32* %4, align 4
  br label %222

171:                                              ; preds = %154
  %172 = load i8*, i8** %12, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 480
  store i8* %173, i8** %13, align 8
  br label %174

174:                                              ; preds = %171, %150
  %175 = load i8*, i8** %12, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %12, align 8
  store i8 44, i8* %175, align 1
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  %179 = load i8*, i8** %12, align 8
  %180 = load i32*, i32** @Res, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @sprintf(i8* %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %184)
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %15, align 4
  %190 = load i8*, i8** %12, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  store i8* %192, i8** %12, align 8
  br label %193

193:                                              ; preds = %174
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %10, align 4
  br label %140

196:                                              ; preds = %148
  %197 = load i8*, i8** %14, align 8
  %198 = load i8*, i8** %14, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i64 @sprintf(i8* %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %199)
  %201 = getelementptr inbounds i8, i8* %197, i64 %200
  store i8 13, i8* %201, align 1
  %202 = load i8*, i8** %12, align 8
  %203 = call i32 @memcpy(i8* %202, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 7)
  %204 = load i8*, i8** %12, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 7
  store i8* %205, i8** %12, align 8
  %206 = load %struct.connection*, %struct.connection** %5, align 8
  %207 = getelementptr inbounds %struct.connection, %struct.connection* %206, i32 0, i32 0
  %208 = load i8*, i8** %12, align 8
  %209 = load i8*, i8** %13, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 -480
  %211 = ptrtoint i8* %208 to i64
  %212 = ptrtoint i8* %210 to i64
  %213 = sub i64 %211, %212
  %214 = trunc i64 %213 to i32
  %215 = call i32 @advance_write_ptr(i32* %207, i32 %214)
  %216 = load i32, i32* @ResL, align 4
  %217 = load i32, i32* @tot_response_words, align 4
  %218 = add nsw i32 %217, %216
  store i32 %218, i32* @tot_response_words, align 4
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* @tot_response_bytes, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* @tot_response_bytes, align 4
  store i32 0, i32* %4, align 4
  br label %222

222:                                              ; preds = %196, %170, %111, %101, %94, %87, %61, %40, %19
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @process_text(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @dyn_user_header(i32, i32) #1

declare dso_local i32 @load_user(i32) #1

declare dso_local i32 @return_key_value(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i64 @do_combined_search(...) #1

declare dso_local i8* @get_write_ptr(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @advance_write_ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
