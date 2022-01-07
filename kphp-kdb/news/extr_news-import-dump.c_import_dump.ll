; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_import_dump.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_import_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@import_file = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@import_fd = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Can not open dump (file %s)\0A\00", align 1
@log_split_mod = common dso_local global i32 0, align 4
@cur_write_name = common dso_local global i8* null, align 8
@O_APPEND = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@write_fd = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"can not open file %s for write\0A\00", align 1
@write_buff = common dso_local global i32* null, align 8
@wptr = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"VALUES\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"assert: d = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@rptr = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@verbosity = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"written %d items\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"assert: c = %c\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Total %d bookmarks.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @import_dump() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1001 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = load i8*, i8** @import_file, align 8
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = call i64 (i8*, i32, ...) @open(i8* %14, i32 %15)
  store i64 %16, i64* @import_fd, align 8
  %17 = load i64, i64* @import_fd, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %0
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8*, i8** @import_file, align 8
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 1, i32* %1, align 4
  br label %211

23:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %62, %23
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @log_split_mod, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @generate_write_name(i32 %29)
  %31 = load i8*, i8** @cur_write_name, align 8
  %32 = load i32, i32* @O_APPEND, align 4
  %33 = load i32, i32* @O_WRONLY, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @O_CREAT, align 4
  %36 = or i32 %34, %35
  %37 = call i64 (i8*, i32, ...) @open(i8* %31, i32 %36, i32 420)
  %38 = load i64*, i64** @write_fd, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  store i64 %37, i64* %41, align 8
  %42 = load i64*, i64** @write_fd, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %28
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** @cur_write_name, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  store i32 1, i32* %1, align 4
  br label %211

52:                                               ; preds = %28
  %53 = load i32*, i32** @write_buff, align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** @wptr, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %2, align 4
  br label %24

65:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %186
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %78
  %68 = getelementptr inbounds [1001 x i8], [1001 x i8]* %4, i64 0, i64 0
  %69 = call i32 @next_str(i8* %68, i32 1000)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %79

73:                                               ; preds = %67
  %74 = getelementptr inbounds [1001 x i8], [1001 x i8]* %4, i64 0, i64 0
  %75 = call i32 @strncmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  store i32 1, i32* %5, align 4
  br label %79

78:                                               ; preds = %73
  br label %67

79:                                               ; preds = %77, %72
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  br label %187

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %182
  %85 = call i32 @search_char(i8 signext 40)
  %86 = call i32 (...) @read_int()
  store i32 %86, i32* %7, align 4
  %87 = call i32 (...) @read_int()
  store i32 %87, i32* %8, align 4
  %88 = call i32 (...) @read_int()
  store i32 %88, i32* %9, align 4
  %89 = call i32 (...) @read_int()
  store i32 %89, i32* %10, align 4
  %90 = call i32 (...) @read_int()
  store i32 %90, i32* %11, align 4
  %91 = call i32 (...) @read_int()
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @new_type(i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i64 @valid_type(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %84
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @write_event(i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %126

105:                                              ; preds = %84
  %106 = load i32, i32* @stderr, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  store i32 -100, i32* %2, align 4
  br label %109

109:                                              ; preds = %120, %105
  %110 = load i32, i32* %2, align 4
  %111 = icmp slt i32 %110, 100
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load i32, i32* @stderr, align 4
  %114 = load i32*, i32** @rptr, align 8
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %2, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %2, align 4
  br label %109

123:                                              ; preds = %109
  %124 = load i32, i32* @stderr, align 4
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %97
  %127 = load i32, i32* @verbosity, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i32, i32* %3, align 4
  %131 = and i32 %130, 1048575
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* @stderr, align 4
  %135 = load i32, i32* %3, align 4
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %133, %129, %126
  %138 = call signext i8 (...) @read_char()
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 41
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = call signext i8 (...) @read_char()
  store i8 %143, i8* %13, align 1
  %144 = load i8, i8* %13, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 59
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  br label %186

148:                                              ; preds = %137
  %149 = load i8, i8* %13, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 44
  br i1 %151, label %152, label %174

152:                                              ; preds = %148
  %153 = load i32, i32* @stderr, align 4
  %154 = load i8, i8* %13, align 1
  %155 = sext i8 %154 to i32
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %155)
  store i32 -100, i32* %2, align 4
  br label %157

157:                                              ; preds = %168, %152
  %158 = load i32, i32* %2, align 4
  %159 = icmp slt i32 %158, 100
  br i1 %159, label %160, label %171

160:                                              ; preds = %157
  %161 = load i32, i32* @stderr, align 4
  %162 = load i32*, i32** @rptr, align 8
  %163 = load i32, i32* %2, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32, i8*, ...) @fprintf(i32 %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %160
  %169 = load i32, i32* %2, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %2, align 4
  br label %157

171:                                              ; preds = %157
  %172 = load i32, i32* @stderr, align 4
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %148
  %175 = load i8, i8* %13, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 44
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load i8, i8* %13, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 45
  br label %182

182:                                              ; preds = %178, %174
  %183 = phi i1 [ true, %174 ], [ %181, %178 ]
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
  br label %84

186:                                              ; preds = %147
  br label %66

187:                                              ; preds = %82
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %195, %187
  %189 = load i32, i32* %2, align 4
  %190 = load i32, i32* @log_split_mod, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = load i32, i32* %2, align 4
  %194 = call i32 @flush_write(i32 %193)
  br label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %2, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %2, align 4
  br label %188

198:                                              ; preds = %188
  %199 = load i32, i32* @verbosity, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %198
  %202 = load i32, i32* @stderr, align 4
  %203 = load i32, i32* %3, align 4
  %204 = call i32 (i32, i8*, ...) @fprintf(i32 %202, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* @verbosity, align 4
  %206 = icmp sge i32 %205, 2
  br i1 %206, label %207, label %209

207:                                              ; preds = %201
  %208 = call i32 (...) @write_stat()
  br label %209

209:                                              ; preds = %207, %201
  br label %210

210:                                              ; preds = %209, %198
  store i32 0, i32* %1, align 4
  br label %211

211:                                              ; preds = %210, %48, %19
  %212 = load i32, i32* %1, align 4
  ret i32 %212
}

declare dso_local i64 @open(i8*, i32, ...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @generate_write_name(i32) #1

declare dso_local i32 @next_str(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @search_char(i8 signext) #1

declare dso_local i32 @read_int(...) #1

declare dso_local i32 @new_type(i32) #1

declare dso_local i64 @valid_type(i32) #1

declare dso_local i32 @write_event(i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local signext i8 @read_char(...) #1

declare dso_local i32 @flush_write(i32) #1

declare dso_local i32 @write_stat(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
