; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_news_parse_function.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_news_parse_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"News only support actor_id = 0\00", align 1
@TL_ERROR_WRONG_ACTOR_ID = common dso_local global i32 0, align 4
@UG_MODE = common dso_local global i32 0, align 4
@NOTIFY_MODE = common dso_local global i32 0, align 4
@COMM_MODE = common dso_local global i32 0, align 4
@RECOMMEND_MODE = common dso_local global i32 0, align 4
@TL_ERROR_UNKNOWN_FUNCTION_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unknown op 0x%08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @news_parse_function(i64 %0) #0 {
  %2 = alloca %struct.tl_act_extra*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @TL_ERROR_WRONG_ACTOR_ID, align 4
  %9 = call i32 @tl_fetch_set_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %221

10:                                               ; preds = %1
  %11 = call i32 (...) @tl_fetch_int()
  store i32 %11, i32* %4, align 4
  %12 = call i64 (...) @tl_fetch_error()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %221

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %217 [
    i32 140, label %17
    i32 144, label %25
    i32 141, label %33
    i32 143, label %41
    i32 142, label %49
    i32 132, label %57
    i32 138, label %65
    i32 139, label %73
    i32 134, label %81
    i32 137, label %89
    i32 133, label %97
    i32 135, label %105
    i32 136, label %113
    i32 145, label %121
    i32 150, label %129
    i32 151, label %137
    i32 146, label %145
    i32 148, label %153
    i32 147, label %161
    i32 152, label %169
    i32 149, label %177
    i32 128, label %185
    i32 129, label %193
    i32 131, label %201
    i32 130, label %209
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @UG_MODE, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %21)
  store %struct.tl_act_extra* %22, %struct.tl_act_extra** %2, align 8
  br label %221

23:                                               ; preds = %17
  %24 = call %struct.tl_act_extra* (...) @tl_news_update()
  store %struct.tl_act_extra* %24, %struct.tl_act_extra** %2, align 8
  br label %221

25:                                               ; preds = %15
  %26 = load i32, i32* @UG_MODE, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %29)
  store %struct.tl_act_extra* %30, %struct.tl_act_extra** %2, align 8
  br label %221

31:                                               ; preds = %25
  %32 = call %struct.tl_act_extra* (...) @tl_news_delete()
  store %struct.tl_act_extra* %32, %struct.tl_act_extra** %2, align 8
  br label %221

33:                                               ; preds = %15
  %34 = load i32, i32* @UG_MODE, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %37)
  store %struct.tl_act_extra* %38, %struct.tl_act_extra** %2, align 8
  br label %221

39:                                               ; preds = %33
  %40 = call %struct.tl_act_extra* (...) @tl_news_set_privacy_mask()
  store %struct.tl_act_extra* %40, %struct.tl_act_extra** %2, align 8
  br label %221

41:                                               ; preds = %15
  %42 = load i32, i32* @UG_MODE, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %45)
  store %struct.tl_act_extra* %46, %struct.tl_act_extra** %2, align 8
  br label %221

47:                                               ; preds = %41
  %48 = call %struct.tl_act_extra* (...) @tl_news_get_privacy_mask()
  store %struct.tl_act_extra* %48, %struct.tl_act_extra** %2, align 8
  br label %221

49:                                               ; preds = %15
  %50 = load i32, i32* @UG_MODE, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %53)
  store %struct.tl_act_extra* %54, %struct.tl_act_extra** %2, align 8
  br label %221

55:                                               ; preds = %49
  %56 = call %struct.tl_act_extra* (...) @tl_news_get_raw_updates()
  store %struct.tl_act_extra* %56, %struct.tl_act_extra** %2, align 8
  br label %221

57:                                               ; preds = %15
  %58 = load i32, i32* @NOTIFY_MODE, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %61)
  store %struct.tl_act_extra* %62, %struct.tl_act_extra** %2, align 8
  br label %221

63:                                               ; preds = %57
  %64 = call %struct.tl_act_extra* (...) @tl_nnews_update()
  store %struct.tl_act_extra* %64, %struct.tl_act_extra** %2, align 8
  br label %221

65:                                               ; preds = %15
  %66 = load i32, i32* @NOTIFY_MODE, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %69)
  store %struct.tl_act_extra* %70, %struct.tl_act_extra** %2, align 8
  br label %221

71:                                               ; preds = %65
  %72 = call %struct.tl_act_extra* (...) @tl_nnews_delete_updates()
  store %struct.tl_act_extra* %72, %struct.tl_act_extra** %2, align 8
  br label %221

73:                                               ; preds = %15
  %74 = load i32, i32* @NOTIFY_MODE, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  %78 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %77)
  store %struct.tl_act_extra* %78, %struct.tl_act_extra** %2, align 8
  br label %221

79:                                               ; preds = %73
  %80 = call %struct.tl_act_extra* (...) @tl_nnews_delete_update()
  store %struct.tl_act_extra* %80, %struct.tl_act_extra** %2, align 8
  br label %221

81:                                               ; preds = %15
  %82 = load i32, i32* @NOTIFY_MODE, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %85)
  store %struct.tl_act_extra* %86, %struct.tl_act_extra** %2, align 8
  br label %221

87:                                               ; preds = %81
  %88 = call %struct.tl_act_extra* (...) @tl_nnews_undelete_update()
  store %struct.tl_act_extra* %88, %struct.tl_act_extra** %2, align 8
  br label %221

89:                                               ; preds = %15
  %90 = load i32, i32* @NOTIFY_MODE, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %93)
  store %struct.tl_act_extra* %94, %struct.tl_act_extra** %2, align 8
  br label %221

95:                                               ; preds = %89
  %96 = call %struct.tl_act_extra* (...) @tl_nnews_delete_user_update()
  store %struct.tl_act_extra* %96, %struct.tl_act_extra** %2, align 8
  br label %221

97:                                               ; preds = %15
  %98 = load i32, i32* @NOTIFY_MODE, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %4, align 4
  %102 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %101)
  store %struct.tl_act_extra* %102, %struct.tl_act_extra** %2, align 8
  br label %221

103:                                              ; preds = %97
  %104 = call %struct.tl_act_extra* (...) @tl_nnews_undelete_user_update()
  store %struct.tl_act_extra* %104, %struct.tl_act_extra** %2, align 8
  br label %221

105:                                              ; preds = %15
  %106 = load i32, i32* @NOTIFY_MODE, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %4, align 4
  %110 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %109)
  store %struct.tl_act_extra* %110, %struct.tl_act_extra** %2, align 8
  br label %221

111:                                              ; preds = %105
  %112 = call %struct.tl_act_extra* (...) @tl_nnews_get_updates()
  store %struct.tl_act_extra* %112, %struct.tl_act_extra** %2, align 8
  br label %221

113:                                              ; preds = %15
  %114 = load i32, i32* @NOTIFY_MODE, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %4, align 4
  %118 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %117)
  store %struct.tl_act_extra* %118, %struct.tl_act_extra** %2, align 8
  br label %221

119:                                              ; preds = %113
  %120 = call %struct.tl_act_extra* (...) @tl_nnews_get_grouped_updates()
  store %struct.tl_act_extra* %120, %struct.tl_act_extra** %2, align 8
  br label %221

121:                                              ; preds = %15
  %122 = load i32, i32* @COMM_MODE, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %4, align 4
  %126 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %125)
  store %struct.tl_act_extra* %126, %struct.tl_act_extra** %2, align 8
  br label %221

127:                                              ; preds = %121
  %128 = call %struct.tl_act_extra* (...) @tl_cnews_update()
  store %struct.tl_act_extra* %128, %struct.tl_act_extra** %2, align 8
  br label %221

129:                                              ; preds = %15
  %130 = load i32, i32* @COMM_MODE, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %4, align 4
  %134 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %133)
  store %struct.tl_act_extra* %134, %struct.tl_act_extra** %2, align 8
  br label %221

135:                                              ; preds = %129
  %136 = call %struct.tl_act_extra* (...) @tl_cnews_delete_updates()
  store %struct.tl_act_extra* %136, %struct.tl_act_extra** %2, align 8
  br label %221

137:                                              ; preds = %15
  %138 = load i32, i32* @COMM_MODE, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %4, align 4
  %142 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %141)
  store %struct.tl_act_extra* %142, %struct.tl_act_extra** %2, align 8
  br label %221

143:                                              ; preds = %137
  %144 = call %struct.tl_act_extra* (...) @tl_cnews_delete_update()
  store %struct.tl_act_extra* %144, %struct.tl_act_extra** %2, align 8
  br label %221

145:                                              ; preds = %15
  %146 = load i32, i32* @COMM_MODE, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %4, align 4
  %150 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %149)
  store %struct.tl_act_extra* %150, %struct.tl_act_extra** %2, align 8
  br label %221

151:                                              ; preds = %145
  %152 = call %struct.tl_act_extra* (...) @tl_cnews_undelete_update()
  store %struct.tl_act_extra* %152, %struct.tl_act_extra** %2, align 8
  br label %221

153:                                              ; preds = %15
  %154 = load i32, i32* @COMM_MODE, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %4, align 4
  %158 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %157)
  store %struct.tl_act_extra* %158, %struct.tl_act_extra** %2, align 8
  br label %221

159:                                              ; preds = %153
  %160 = call %struct.tl_act_extra* (...) @tl_cnews_get_raw_updates()
  store %struct.tl_act_extra* %160, %struct.tl_act_extra** %2, align 8
  br label %221

161:                                              ; preds = %15
  %162 = load i32, i32* @COMM_MODE, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %4, align 4
  %166 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %165)
  store %struct.tl_act_extra* %166, %struct.tl_act_extra** %2, align 8
  br label %221

167:                                              ; preds = %161
  %168 = call %struct.tl_act_extra* (...) @tl_cnews_get_raw_user_updates()
  store %struct.tl_act_extra* %168, %struct.tl_act_extra** %2, align 8
  br label %221

169:                                              ; preds = %15
  %170 = load i32, i32* @COMM_MODE, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %4, align 4
  %174 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %173)
  store %struct.tl_act_extra* %174, %struct.tl_act_extra** %2, align 8
  br label %221

175:                                              ; preds = %169
  %176 = call %struct.tl_act_extra* (...) @tl_cnews_add_bookmark()
  store %struct.tl_act_extra* %176, %struct.tl_act_extra** %2, align 8
  br label %221

177:                                              ; preds = %15
  %178 = load i32, i32* @COMM_MODE, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %4, align 4
  %182 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %181)
  store %struct.tl_act_extra* %182, %struct.tl_act_extra** %2, align 8
  br label %221

183:                                              ; preds = %177
  %184 = call %struct.tl_act_extra* (...) @tl_cnews_del_bookmark()
  store %struct.tl_act_extra* %184, %struct.tl_act_extra** %2, align 8
  br label %221

185:                                              ; preds = %15
  %186 = load i32, i32* @RECOMMEND_MODE, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %4, align 4
  %190 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %189)
  store %struct.tl_act_extra* %190, %struct.tl_act_extra** %2, align 8
  br label %221

191:                                              ; preds = %185
  %192 = call %struct.tl_act_extra* (...) @tl_rnews_update()
  store %struct.tl_act_extra* %192, %struct.tl_act_extra** %2, align 8
  br label %221

193:                                              ; preds = %15
  %194 = load i32, i32* @RECOMMEND_MODE, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %4, align 4
  %198 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %197)
  store %struct.tl_act_extra* %198, %struct.tl_act_extra** %2, align 8
  br label %221

199:                                              ; preds = %193
  %200 = call %struct.tl_act_extra* (...) @tl_rnews_set_rate()
  store %struct.tl_act_extra* %200, %struct.tl_act_extra** %2, align 8
  br label %221

201:                                              ; preds = %15
  %202 = load i32, i32* @RECOMMEND_MODE, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %4, align 4
  %206 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %205)
  store %struct.tl_act_extra* %206, %struct.tl_act_extra** %2, align 8
  br label %221

207:                                              ; preds = %201
  %208 = call %struct.tl_act_extra* (...) @tl_rnews_get_rate()
  store %struct.tl_act_extra* %208, %struct.tl_act_extra** %2, align 8
  br label %221

209:                                              ; preds = %15
  %210 = load i32, i32* @RECOMMEND_MODE, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %4, align 4
  %214 = call %struct.tl_act_extra* @tl_news_error_bad_mode(i32 %213)
  store %struct.tl_act_extra* %214, %struct.tl_act_extra** %2, align 8
  br label %221

215:                                              ; preds = %209
  %216 = call %struct.tl_act_extra* (...) @tl_rnews_get_raw_updates()
  store %struct.tl_act_extra* %216, %struct.tl_act_extra** %2, align 8
  br label %221

217:                                              ; preds = %15
  %218 = load i32, i32* @TL_ERROR_UNKNOWN_FUNCTION_ID, align 4
  %219 = load i32, i32* %4, align 4
  %220 = call i32 @tl_fetch_set_error_format(i32 %218, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %219)
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %221

221:                                              ; preds = %217, %215, %212, %207, %204, %199, %196, %191, %188, %183, %180, %175, %172, %167, %164, %159, %156, %151, %148, %143, %140, %135, %132, %127, %124, %119, %116, %111, %108, %103, %100, %95, %92, %87, %84, %79, %76, %71, %68, %63, %60, %55, %52, %47, %44, %39, %36, %31, %28, %23, %20, %14, %7
  %222 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  ret %struct.tl_act_extra* %222
}

declare dso_local i32 @tl_fetch_set_error(i8*, i32) #1

declare dso_local i32 @tl_fetch_int(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

declare dso_local %struct.tl_act_extra* @tl_news_error_bad_mode(i32) #1

declare dso_local %struct.tl_act_extra* @tl_news_update(...) #1

declare dso_local %struct.tl_act_extra* @tl_news_delete(...) #1

declare dso_local %struct.tl_act_extra* @tl_news_set_privacy_mask(...) #1

declare dso_local %struct.tl_act_extra* @tl_news_get_privacy_mask(...) #1

declare dso_local %struct.tl_act_extra* @tl_news_get_raw_updates(...) #1

declare dso_local %struct.tl_act_extra* @tl_nnews_update(...) #1

declare dso_local %struct.tl_act_extra* @tl_nnews_delete_updates(...) #1

declare dso_local %struct.tl_act_extra* @tl_nnews_delete_update(...) #1

declare dso_local %struct.tl_act_extra* @tl_nnews_undelete_update(...) #1

declare dso_local %struct.tl_act_extra* @tl_nnews_delete_user_update(...) #1

declare dso_local %struct.tl_act_extra* @tl_nnews_undelete_user_update(...) #1

declare dso_local %struct.tl_act_extra* @tl_nnews_get_updates(...) #1

declare dso_local %struct.tl_act_extra* @tl_nnews_get_grouped_updates(...) #1

declare dso_local %struct.tl_act_extra* @tl_cnews_update(...) #1

declare dso_local %struct.tl_act_extra* @tl_cnews_delete_updates(...) #1

declare dso_local %struct.tl_act_extra* @tl_cnews_delete_update(...) #1

declare dso_local %struct.tl_act_extra* @tl_cnews_undelete_update(...) #1

declare dso_local %struct.tl_act_extra* @tl_cnews_get_raw_updates(...) #1

declare dso_local %struct.tl_act_extra* @tl_cnews_get_raw_user_updates(...) #1

declare dso_local %struct.tl_act_extra* @tl_cnews_add_bookmark(...) #1

declare dso_local %struct.tl_act_extra* @tl_cnews_del_bookmark(...) #1

declare dso_local %struct.tl_act_extra* @tl_rnews_update(...) #1

declare dso_local %struct.tl_act_extra* @tl_rnews_set_rate(...) #1

declare dso_local %struct.tl_act_extra* @tl_rnews_get_rate(...) #1

declare dso_local %struct.tl_act_extra* @tl_rnews_get_raw_updates(...) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
