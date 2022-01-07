; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_memcache_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_memcache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }

@C_INTIMEOUT = common dso_local global i32 0, align 4
@UG_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"updates%d\00", align 1
@ug_mode = common dso_local global i32 0, align 4
@delete_queries = common dso_local global i32 0, align 4
@COMM_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"undelete_comm_update%d_%d_%d_%d\00", align 1
@undelete_queries = common dso_local global i32 0, align 4
@NOTIFY_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"undelete_notification_update%d_%d_%d_%d\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"undelete_notification_user_update%d_%d_%d_%d_%d\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"comm_updates%d_%d_%d\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"comm_update%d_%d_%d_%d\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"bookmark_%d_%d_%d:%d\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"notification_updates%d_%d_%d\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"notification_update%d_%d_%d_%d\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"notification_user_update%d_%d_%d_%d_%d\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_delete(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @C_INTIMEOUT, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.connection*, %struct.connection** %4, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  store i32 0, i32* %12, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %221 [
    i32 117, label %22
    i32 99, label %110
    i32 98, label %150
    i32 110, label %164
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* @UG_MODE, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %7)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ug_mode, align 4
  %35 = xor i32 %33, %34
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @delete_queries, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @delete_queries, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @do_delete_user(i32 %40)
  store i32 %41, i32* %12, align 4
  br label %109

42:                                               ; preds = %32, %29, %25, %22
  %43 = load i32, i32* @COMM_MODE, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i32* %11)
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i32, i32* @undelete_queries, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @undelete_queries, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @do_undelete_comment(i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %12, align 4
  br label %108

63:                                               ; preds = %52, %49, %45, %42
  %64 = load i32, i32* @NOTIFY_MODE, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i32* %11)
  %69 = icmp eq i32 %68, 4
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* @undelete_queries, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @undelete_queries, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @do_undelete_comment(i32 %79, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %12, align 4
  br label %107

84:                                               ; preds = %73, %70, %66, %63
  %85 = load i32, i32* @NOTIFY_MODE, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %88, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32* %7, i32* %8, i32* %9, i32* %10, i32* %11)
  %90 = icmp eq i32 %89, 5
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i32, i32* @undelete_queries, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @undelete_queries, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @do_undelete_user_comment(i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %97, %94, %91, %87, %84
  br label %107

107:                                              ; preds = %106, %76
  br label %108

108:                                              ; preds = %107, %55
  br label %109

109:                                              ; preds = %108, %37
  br label %221

110:                                              ; preds = %3
  %111 = load i32, i32* @COMM_MODE, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32* %8, i32* %9, i32* %10)
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i32, i32* %10, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i32, i32* @delete_queries, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @delete_queries, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @do_delete_place(i32 %123, i32 %124, i32 %125)
  store i32 %126, i32* %12, align 4
  br label %149

127:                                              ; preds = %117, %113, %110
  %128 = load i32, i32* @COMM_MODE, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %127
  %131 = load i8*, i8** %5, align 8
  %132 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %131, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i32* %11)
  %133 = icmp eq i32 %132, 4
  br i1 %133, label %134, label %148

134:                                              ; preds = %130
  %135 = load i32, i32* %10, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %134
  %138 = load i32, i32* %11, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i32, i32* @delete_queries, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @delete_queries, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @do_delete_comment(i32 %143, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %140, %137, %134, %130, %127
  br label %149

149:                                              ; preds = %148, %120
  br label %221

150:                                              ; preds = %3
  %151 = load i32, i32* @COMM_MODE, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load i8*, i8** %5, align 8
  %155 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i32* %7)
  %156 = icmp eq i32 %155, 4
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @do_add_del_bookmark(i32 %158, i32 %159, i32 %160, i32 %161, i32 0)
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %157, %153, %150
  br label %221

164:                                              ; preds = %3
  %165 = load i32, i32* @NOTIFY_MODE, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %181

167:                                              ; preds = %164
  %168 = load i8*, i8** %5, align 8
  %169 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32* %8, i32* %9, i32* %10)
  %170 = icmp eq i32 %169, 3
  br i1 %170, label %171, label %181

171:                                              ; preds = %167
  %172 = load i32, i32* %10, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i32, i32* @delete_queries, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* @delete_queries, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %10, align 4
  %180 = call i32 @do_delete_place(i32 %177, i32 %178, i32 %179)
  store i32 %180, i32* %12, align 4
  br label %220

181:                                              ; preds = %171, %167, %164
  %182 = load i32, i32* @NOTIFY_MODE, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %181
  %185 = load i8*, i8** %5, align 8
  %186 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %185, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i32* %11)
  %187 = icmp eq i32 %186, 4
  br i1 %187, label %188, label %199

188:                                              ; preds = %184
  %189 = load i32, i32* %10, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %188
  %192 = load i32, i32* @delete_queries, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* @delete_queries, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @do_delete_comment(i32 %194, i32 %195, i32 %196, i32 %197)
  store i32 %198, i32* %12, align 4
  br label %219

199:                                              ; preds = %188, %184, %181
  %200 = load i32, i32* @NOTIFY_MODE, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %218

202:                                              ; preds = %199
  %203 = load i8*, i8** %5, align 8
  %204 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %203, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32* %7, i32* %8, i32* %9, i32* %10, i32* %11)
  %205 = icmp eq i32 %204, 5
  br i1 %205, label %206, label %218

206:                                              ; preds = %202
  %207 = load i32, i32* %10, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %206
  %210 = load i32, i32* @delete_queries, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* @delete_queries, align 4
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %11, align 4
  %217 = call i32 @do_delete_user_comment(i32 %212, i32 %213, i32 %214, i32 %215, i32 %216)
  store i32 %217, i32* %12, align 4
  br label %218

218:                                              ; preds = %209, %206, %202, %199
  br label %219

219:                                              ; preds = %218, %191
  br label %220

220:                                              ; preds = %219, %174
  br label %221

221:                                              ; preds = %3, %220, %163, %149, %109
  %222 = load i32, i32* %12, align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load %struct.connection*, %struct.connection** %4, align 8
  %226 = getelementptr inbounds %struct.connection, %struct.connection* %225, i32 0, i32 0
  %227 = call i32 @write_out(i32* %226, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 9)
  br label %232

228:                                              ; preds = %221
  %229 = load %struct.connection*, %struct.connection** %4, align 8
  %230 = getelementptr inbounds %struct.connection, %struct.connection* %229, i32 0, i32 0
  %231 = call i32 @write_out(i32* %230, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 11)
  br label %232

232:                                              ; preds = %228, %224
  ret i32 0
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @do_delete_user(i32) #1

declare dso_local i32 @do_undelete_comment(i32, i32, i32, i32) #1

declare dso_local i32 @do_undelete_user_comment(i32, i32, i32, i32, i32) #1

declare dso_local i32 @do_delete_place(i32, i32, i32) #1

declare dso_local i32 @do_delete_comment(i32, i32, i32, i32) #1

declare dso_local i32 @do_add_del_bookmark(i32, i32, i32, i32, i32) #1

declare dso_local i32 @do_delete_user_comment(i32, i32, i32, i32, i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
