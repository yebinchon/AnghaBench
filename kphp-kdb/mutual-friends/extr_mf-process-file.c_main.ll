; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-process-file.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-process-file.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"i:o:hvU:E:u:T:m:\00", align 1
@verbosity = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@input_name = common dso_local global i8* null, align 8
@output_name = common dso_local global i8* null, align 8
@userN = common dso_local global i32 0, align 4
@engineN = common dso_local global i32 0, align 4
@uf = common dso_local global i32 0, align 4
@username = common dso_local global i8* null, align 8
@max_user_events = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"userN = %d, engineN = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@v = common dso_local global %struct.TYPE_4__* null, align 8
@fsize = common dso_local global i32* null, align 8
@A = common dso_local global i32 0, align 4
@friends_list = common dso_local global i32* null, align 8
@friends_list_n = common dso_local global i64 0, align 8
@B = common dso_local global i32 0, align 4
@fd = common dso_local global i32* null, align 8
@l_len = common dso_local global i64* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call i32 (...) @set_debug_handlers()
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** @progname, align 8
  %16 = call i32 @time(i32* null)
  %17 = call i32 @srand(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %269

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %66, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %6, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %67

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %66 [
    i32 118, label %30
    i32 104, label %33
    i32 105, label %35
    i32 111, label %37
    i32 85, label %39
    i32 69, label %42
    i32 84, label %45
    i32 117, label %52
    i32 109, label %54
  ]

30:                                               ; preds = %28
  %31 = load i64, i64* @verbosity, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @verbosity, align 8
  br label %66

33:                                               ; preds = %28
  %34 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %269

35:                                               ; preds = %28
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** @input_name, align 8
  br label %66

37:                                               ; preds = %28
  %38 = load i8*, i8** @optarg, align 8
  store i8* %38, i8** @output_name, align 8
  br label %66

39:                                               ; preds = %28
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @atoi(i8* %40)
  store i32 %41, i32* @userN, align 4
  br label %66

42:                                               ; preds = %28
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i32 @atoi(i8* %43)
  store i32 %44, i32* @engineN, align 4
  br label %66

45:                                               ; preds = %28
  %46 = load i32, i32* @uf, align 4
  %47 = icmp eq i32 %46, -1
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i8*, i8** @optarg, align 8
  %51 = call i32 @atoi(i8* %50)
  store i32 %51, i32* @uf, align 4
  br label %66

52:                                               ; preds = %28
  %53 = load i8*, i8** @optarg, align 8
  store i8* %53, i8** @username, align 8
  br label %66

54:                                               ; preds = %28
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i32 @atoi(i8* %55)
  store i32 %56, i32* @max_user_events, align 4
  %57 = load i32, i32* @max_user_events, align 4
  %58 = icmp sle i32 1, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @max_user_events, align 4
  %61 = icmp sle i32 %60, 10000000
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi i1 [ false, %54 ], [ %61, %59 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  br label %66

66:                                               ; preds = %28, %62, %52, %45, %42, %39, %37, %35, %30
  br label %23

67:                                               ; preds = %23
  %68 = load i32, i32* @uf, align 4
  %69 = icmp sge i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @optind, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %269

77:                                               ; preds = %67
  %78 = load i64, i64* @verbosity, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* @userN, align 4
  %83 = load i32, i32* @engineN, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %77
  %86 = load i8*, i8** @username, align 8
  %87 = call i64 @change_user(i8* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load i32, i32* @stderr, align 4
  %91 = load i8*, i8** @username, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i8*, i8** @username, align 8
  br label %96

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i8* [ %94, %93 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %95 ]
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %97)
  %99 = call i32 @exit(i32 1) #3
  unreachable

100:                                              ; preds = %85
  %101 = load i32, i32* @engineN, align 4
  %102 = icmp slt i32 0, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = call i32 @init_files(i32 2)
  %106 = call i32 (...) @init_data()
  %107 = load i32, i32* @userN, align 4
  %108 = load i32, i32* @engineN, align 4
  %109 = sdiv i32 %107, %108
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = mul i64 4, %112
  %114 = trunc i64 %113 to i32
  %115 = call %struct.TYPE_4__* @qmalloc(i32 %114)
  store %struct.TYPE_4__* %115, %struct.TYPE_4__** @v, align 8
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %126, %100
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp sle i32 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = call i32 @vct_init(%struct.TYPE_4__* %124)
  br label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %116

129:                                              ; preds = %116
  %130 = load i32*, i32** @fsize, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = srem i32 %132, 8
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i32*, i32** @fsize, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = sdiv i32 %139, 8
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %8, align 8
  %142 = load i64, i64* %8, align 8
  %143 = icmp sgt i64 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  store i32 -1, i32* %9, align 4
  br label %146

146:                                              ; preds = %160, %129
  %147 = load i64, i64* %8, align 8
  %148 = add nsw i64 %147, -1
  store i64 %148, i64* %8, align 8
  %149 = icmp ne i64 %147, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %146
  %151 = call i32 (...) @my_read()
  %152 = load i32, i32* @A, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load i32, i32* @A, align 4
  store i32 %156, i32* %9, align 4
  %157 = load i32*, i32** @friends_list, align 8
  %158 = load i64, i64* @friends_list_n, align 8
  %159 = call i32 @gen_events(i32* %157, i64 %158)
  store i64 0, i64* @friends_list_n, align 8
  br label %160

160:                                              ; preds = %155, %150
  %161 = load i32, i32* @B, align 4
  %162 = load i32*, i32** @friends_list, align 8
  %163 = load i64, i64* @friends_list_n, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* @friends_list_n, align 8
  %165 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32 %161, i32* %165, align 4
  br label %146

166:                                              ; preds = %146
  %167 = load i32*, i32** @friends_list, align 8
  %168 = load i64, i64* @friends_list_n, align 8
  %169 = call i32 @gen_events(i32* %167, i64 %168)
  store i64 -1, i64* %10, align 8
  %170 = load i32*, i32** @fd, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @write(i32 %172, i64* %10, i32 8)
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 2
  %176 = sext i32 %175 to i64
  %177 = mul i64 4, %176
  %178 = add i64 %177, 8
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  store i64 %181, i64* %10, align 8
  %182 = load i32, i32* %11, align 4
  %183 = call i64* @qmalloc0(i32 %182)
  store i64* %183, i64** @l_len, align 8
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = load i64*, i64** @l_len, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 0
  store i64 %186, i64* %188, align 8
  %189 = load i32*, i32** @fd, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @SEEK_SET, align 4
  %194 = call i32 @lseek(i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %11, align 4
  %196 = icmp eq i32 %194, %195
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert(i32 %197)
  store i32 0, i32* %6, align 4
  br label %199

199:                                              ; preds = %243, %166
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %7, align 4
  %202 = icmp sle i32 %200, %201
  br i1 %202, label %203, label %246

203:                                              ; preds = %199
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = mul i64 %210, 4
  %212 = load i64*, i64** @l_len, align 8
  %213 = load i32, i32* %6, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %212, i64 %215
  store i64 %211, i64* %216, align 8
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = mul i64 %223, 4
  %225 = load i64, i64* %10, align 8
  %226 = add i64 %225, %224
  store i64 %226, i64* %10, align 8
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** @v, align 8
  %234 = load i32, i32* %6, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = mul i64 %239, 4
  %241 = trunc i64 %240 to i32
  %242 = call i32 @my_write(i32 %232, i32 %241)
  br label %243

243:                                              ; preds = %203
  %244 = load i32, i32* %6, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %6, align 4
  br label %199

246:                                              ; preds = %199
  %247 = call i32 (...) @flush_w_buff()
  %248 = load i32*, i32** @fd, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @SEEK_SET, align 4
  %252 = call i32 @lseek(i32 %250, i32 0, i32 %251)
  %253 = icmp eq i32 %252, 0
  %254 = zext i1 %253 to i32
  %255 = call i32 @assert(i32 %254)
  %256 = load i32*, i32** @fd, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @write(i32 %258, i64* %10, i32 8)
  %260 = load i32*, i32** @fd, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = load i64*, i64** @l_len, align 8
  %264 = load i32, i32* %11, align 4
  %265 = sext i32 %264 to i64
  %266 = sub i64 %265, 8
  %267 = trunc i64 %266 to i32
  %268 = call i32 @write(i32 %262, i64* %263, i32 %267)
  store i32 0, i32* %3, align 4
  br label %269

269:                                              ; preds = %246, %75, %33, %20
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @change_user(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @init_files(i32) #1

declare dso_local i32 @init_data(...) #1

declare dso_local %struct.TYPE_4__* @qmalloc(i32) #1

declare dso_local i32 @vct_init(%struct.TYPE_4__*) #1

declare dso_local i32 @my_read(...) #1

declare dso_local i32 @gen_events(i32*, i64) #1

declare dso_local i32 @write(i32, i64*, i32) #1

declare dso_local i64* @qmalloc0(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @my_write(i32, i32) #1

declare dso_local i32 @flush_w_buff(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
