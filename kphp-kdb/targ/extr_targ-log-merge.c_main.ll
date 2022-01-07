; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-log-merge.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-log-merge.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"hviu:t:\00", align 1
@verbosity = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@time_offset = common dso_local global i32 0, align 4
@addr_ext_size = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@time_threshold = common dso_local global i64 0, align 8
@src_fname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@src_fd = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"cannot open %s: %m\0A\00", align 1
@curr_fname = common dso_local global i8* null, align 8
@curr_fd = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@targ_fname = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"cannot create %s: %m\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@targ_orig_size = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@rend = common dso_local global i64 0, align 8
@rptr = common dso_local global i64 0, align 8
@position = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"copying from position %lld of file %s\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@WB = common dso_local global i32 0, align 4
@WRITE_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"transferred %lld bytes from %s\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"error syncing %s: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @progname, align 8
  br label %12

12:                                               ; preds = %28, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %28 [
    i32 118, label %19
    i32 104, label %20
    i32 117, label %22
    i32 116, label %24
    i32 105, label %27
  ]

19:                                               ; preds = %17
  store i64 1, i64* @verbosity, align 8
  br label %28

20:                                               ; preds = %17
  %21 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %238

22:                                               ; preds = %17
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** @username, align 8
  br label %28

24:                                               ; preds = %17
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i32 @atoi(i8* %25)
  store i32 %26, i32* @time_offset, align 4
  br label %28

27:                                               ; preds = %17
  store i32 29, i32* @addr_ext_size, align 4
  br label %28

28:                                               ; preds = %17, %27, %24, %22, %19
  br label %12

29:                                               ; preds = %12
  %30 = load i32, i32* @optind, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @optind, align 4
  %35 = add nsw i32 %34, 3
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %29
  %39 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %238

40:                                               ; preds = %33
  %41 = load i32, i32* @time_offset, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 86400, i32* @time_offset, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = call i64 @time(i32 0)
  %46 = load i32, i32* @time_offset, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %45, %47
  store i64 %48, i64* @time_threshold, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* @optind, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** @src_fname, align 8
  %54 = load i8*, i8** @username, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %44
  %57 = load i8*, i8** @username, align 8
  %58 = call i64 @change_user(i8* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8*, i8** @username, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i8*, i8** @username, align 8
  br label %67

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i8* [ %65, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %66 ]
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  store i32 1, i32* %3, align 4
  br label %238

70:                                               ; preds = %56, %44
  %71 = load i8*, i8** @src_fname, align 8
  %72 = load i32, i32* @O_RDONLY, align 4
  %73 = call i8* (i8*, i32, ...) @open(i8* %71, i32 %72)
  %74 = ptrtoint i8* %73 to i64
  store i64 %74, i64* @src_fd, align 8
  %75 = load i64, i64* @src_fd, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** @src_fname, align 8
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  store i32 1, i32* %3, align 4
  br label %238

81:                                               ; preds = %70
  %82 = load i32, i32* @optind, align 4
  %83 = add nsw i32 %82, 2
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %81
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* @optind, align 4
  %89 = add nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** @curr_fname, align 8
  %93 = load i8*, i8** @curr_fname, align 8
  %94 = load i32, i32* @O_RDONLY, align 4
  %95 = call i8* (i8*, i32, ...) @open(i8* %93, i32 %94)
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* @curr_fd, align 4
  store i32 1, i32* @mode, align 4
  %97 = load i32, i32* @curr_fd, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %86
  %100 = load i32, i32* @stderr, align 4
  %101 = load i8*, i8** @curr_fname, align 8
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %101)
  store i32 1, i32* %3, align 4
  br label %238

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103, %81
  %105 = load i32, i32* @optind, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %138

109:                                              ; preds = %104
  %110 = load i8**, i8*** %5, align 8
  %111 = load i32, i32* @optind, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %110, i64 %113
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** @targ_fname, align 8
  %116 = load i8*, i8** @targ_fname, align 8
  %117 = load i32, i32* @O_WRONLY, align 4
  %118 = load i32, i32* @O_APPEND, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @O_CREAT, align 4
  %121 = or i32 %119, %120
  %122 = call i8* (i8*, i32, ...) @open(i8* %116, i32 %121, i32 420)
  %123 = ptrtoint i8* %122 to i32
  store i32 %123, i32* @targ_fd, align 4
  %124 = load i32, i32* @targ_fd, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %109
  %127 = load i32, i32* @stderr, align 4
  %128 = load i8*, i8** @targ_fname, align 8
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %128)
  store i32 1, i32* %3, align 4
  br label %238

130:                                              ; preds = %109
  %131 = load i32, i32* @targ_fd, align 4
  %132 = load i32, i32* @SEEK_END, align 4
  %133 = call i64 @lseek(i32 %131, i64 0, i32 %132)
  store i64 %133, i64* @targ_orig_size, align 8
  %134 = load i64, i64* @targ_orig_size, align 8
  %135 = icmp sgt i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  br label %139

138:                                              ; preds = %104
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  br label %139

139:                                              ; preds = %138, %130
  br label %140

140:                                              ; preds = %143, %139
  %141 = call i64 (...) @process_record()
  %142 = icmp sge i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %140

144:                                              ; preds = %140
  %145 = call i32 (...) @flush_out()
  %146 = load i32, i32* @mode, align 4
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %212

148:                                              ; preds = %144
  %149 = load i64, i64* @rend, align 8
  %150 = load i64, i64* @rptr, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %212

152:                                              ; preds = %148
  %153 = load i64, i64* @position, align 8
  %154 = icmp sgt i64 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load i64, i64* @targ_orig_size, align 8
  %158 = load i64, i64* @position, align 8
  %159 = add nsw i64 %158, %157
  store i64 %159, i64* @position, align 8
  %160 = load i64, i64* @verbosity, align 8
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %152
  %163 = load i32, i32* @stderr, align 4
  %164 = load i64, i64* @position, align 8
  %165 = load i8*, i8** @curr_fname, align 8
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %164, i8* %165)
  br label %167

167:                                              ; preds = %162, %152
  %168 = load i32, i32* @curr_fd, align 4
  %169 = load i64, i64* @position, align 8
  %170 = load i32, i32* @SEEK_SET, align 4
  %171 = call i64 @lseek(i32 %168, i64 %169, i32 %170)
  %172 = load i64, i64* @position, align 8
  %173 = icmp eq i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  br label %176

176:                                              ; preds = %167, %189
  %177 = load i32, i32* @curr_fd, align 4
  %178 = load i32, i32* @WB, align 4
  %179 = load i32, i32* @WRITE_BUFFER_SIZE, align 4
  %180 = call i32 @read(i32 %177, i32 %178, i32 %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp sle i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %176
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  br label %199

189:                                              ; preds = %176
  %190 = load i32, i32* @targ_fd, align 4
  %191 = load i32, i32* @WB, align 4
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @write(i32 %190, i32 %191, i32 %192)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp eq i32 %194, %195
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert(i32 %197)
  br label %176

199:                                              ; preds = %183
  %200 = load i64, i64* @verbosity, align 8
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %199
  %203 = load i32, i32* @stderr, align 4
  %204 = load i32, i32* @curr_fd, align 4
  %205 = load i32, i32* @SEEK_CUR, align 4
  %206 = call i64 @lseek(i32 %204, i64 0, i32 %205)
  %207 = load i64, i64* @position, align 8
  %208 = sub nsw i64 %206, %207
  %209 = load i8*, i8** @curr_fname, align 8
  %210 = call i32 (i32, i8*, ...) @fprintf(i32 %203, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %208, i8* %209)
  br label %211

211:                                              ; preds = %202, %199
  br label %212

212:                                              ; preds = %211, %148, %144
  %213 = load i32, i32* @targ_fd, align 4
  %214 = icmp ne i32 %213, 1
  br i1 %214, label %215, label %227

215:                                              ; preds = %212
  %216 = load i32, i32* @targ_fd, align 4
  %217 = call i64 @fdatasync(i32 %216)
  %218 = icmp slt i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %215
  %220 = load i32, i32* @stderr, align 4
  %221 = load i8*, i8** @targ_fname, align 8
  %222 = call i32 (i32, i8*, ...) @fprintf(i32 %220, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %221)
  %223 = call i32 @exit(i32 1) #3
  unreachable

224:                                              ; preds = %215
  %225 = load i32, i32* @targ_fd, align 4
  %226 = call i32 @close(i32 %225)
  br label %227

227:                                              ; preds = %224, %212
  %228 = load i64, i64* @verbosity, align 8
  %229 = icmp sgt i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = call i32 (...) @output_stats()
  br label %232

232:                                              ; preds = %230, %227
  %233 = load i64, i64* @rend, align 8
  %234 = load i64, i64* @rptr, align 8
  %235 = icmp sgt i64 %233, %234
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i32 1, i32 0
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %232, %126, %99, %77, %67, %38, %20
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @time(i32) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @open(i8*, i32, ...) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @process_record(...) #1

declare dso_local i32 @flush_out(...) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i64 @fdatasync(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @output_stats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
