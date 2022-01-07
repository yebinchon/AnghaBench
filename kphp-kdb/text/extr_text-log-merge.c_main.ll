; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-merge.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-merge.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"hvu:\00", align 1
@verbosity = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@idx_fname = common dso_local global i8* null, align 8
@src_fname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@idx_fd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"cannot open index %s: %m\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@idx_size = common dso_local global i8* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@src_fd = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"cannot open %s: %m\0A\00", align 1
@targ_fname = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"cannot create %s: %m\0A\00", align 1
@targ_orig_size = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@rend = common dso_local global i32 0, align 4
@rptr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"error syncing %s: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** @progname, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %22 [
    i32 118, label %17
    i32 104, label %18
    i32 117, label %20
  ]

17:                                               ; preds = %15
  store i64 1, i64* @verbosity, align 8
  br label %22

18:                                               ; preds = %15
  %19 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %185

20:                                               ; preds = %15
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @username, align 8
  br label %22

22:                                               ; preds = %15, %20, %17
  br label %10

23:                                               ; preds = %10
  %24 = load i32, i32* @optind, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %4, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @optind, align 4
  %30 = add nsw i32 %29, 3
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %23
  %34 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %185

35:                                               ; preds = %28
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* @optind, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** @idx_fname, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* @optind, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** @src_fname, align 8
  %47 = load i8*, i8** @username, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %35
  %50 = load i8*, i8** @username, align 8
  %51 = call i64 @change_user(i8* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8*, i8** @username, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i8*, i8** @username, align 8
  br label %60

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i8* [ %58, %57 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %59 ]
  %62 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  store i32 1, i32* %3, align 4
  br label %185

63:                                               ; preds = %49, %35
  %64 = load i8*, i8** @idx_fname, align 8
  %65 = load i32, i32* @O_RDONLY, align 4
  %66 = call i8* (i8*, i32, ...) @open(i8* %64, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* @idx_fd, align 4
  %68 = load i32, i32* @idx_fd, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @stderr, align 4
  %72 = load i8*, i8** @idx_fname, align 8
  %73 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  store i32 1, i32* %3, align 4
  br label %185

74:                                               ; preds = %63
  %75 = load i32, i32* @idx_fd, align 4
  %76 = load i32, i32* @SEEK_END, align 4
  %77 = call i8* @lseek(i32 %75, i32 0, i32 %76)
  store i8* %77, i8** @idx_size, align 8
  %78 = load i32, i32* @idx_fd, align 4
  %79 = load i32, i32* @SEEK_SET, align 4
  %80 = call i8* @lseek(i32 %78, i32 0, i32 %79)
  %81 = load i32, i32* @idx_fd, align 4
  %82 = load i8*, i8** @idx_size, align 8
  %83 = call i32 @load_index_header(i32 %81, i8* %82)
  %84 = load i8*, i8** @src_fname, align 8
  %85 = load i32, i32* @O_RDONLY, align 4
  %86 = call i8* (i8*, i32, ...) @open(i8* %84, i32 %85)
  %87 = ptrtoint i8* %86 to i64
  store i64 %87, i64* @src_fd, align 8
  %88 = load i64, i64* @src_fd, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %74
  %91 = load i32, i32* @stderr, align 4
  %92 = load i8*, i8** @src_fname, align 8
  %93 = call i32 @fprintf(i32 %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  store i32 1, i32* %3, align 4
  br label %185

94:                                               ; preds = %74
  %95 = load i32, i32* @optind, align 4
  %96 = add nsw i32 %95, 2
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %129

99:                                               ; preds = %94
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* @optind, align 4
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** @targ_fname, align 8
  %106 = load i8*, i8** @targ_fname, align 8
  %107 = load i32, i32* @O_WRONLY, align 4
  %108 = load i32, i32* @O_APPEND, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @O_CREAT, align 4
  %111 = or i32 %109, %110
  %112 = call i8* (i8*, i32, ...) @open(i8* %106, i32 %111, i32 420)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* @targ_fd, align 4
  %114 = load i32, i32* @targ_fd, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %99
  %117 = load i32, i32* @stderr, align 4
  %118 = load i8*, i8** @targ_fname, align 8
  %119 = call i32 @fprintf(i32 %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  store i32 1, i32* %3, align 4
  br label %185

120:                                              ; preds = %99
  %121 = load i32, i32* @targ_fd, align 4
  %122 = load i32, i32* @SEEK_END, align 4
  %123 = call i8* @lseek(i32 %121, i32 0, i32 %122)
  %124 = ptrtoint i8* %123 to i64
  store i64 %124, i64* @targ_orig_size, align 8
  %125 = load i64, i64* @targ_orig_size, align 8
  %126 = icmp sgt i64 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  br label %130

129:                                              ; preds = %94
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** @targ_fname, align 8
  store i32 1, i32* @targ_fd, align 4
  br label %130

130:                                              ; preds = %129, %120
  %131 = call i32 (...) @prepare_read()
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %150, %130
  %133 = load i32, i32* %6, align 4
  %134 = icmp sle i32 %133, 2
  br i1 %134, label %135, label %153

135:                                              ; preds = %132
  %136 = load i32, i32* @rend, align 4
  %137 = load i32, i32* @rptr, align 4
  %138 = sub nsw i32 %136, %137
  %139 = icmp sge i32 %138, 4096
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load i32, i32* @rptr, align 4
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 74671691
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32, i32* @rptr, align 4
  %148 = add nsw i32 %147, 4096
  store i32 %148, i32* @rptr, align 4
  br label %149

149:                                              ; preds = %146, %140, %135
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %132

153:                                              ; preds = %132
  br label %154

154:                                              ; preds = %157, %153
  %155 = call i64 (...) @process_record()
  %156 = icmp sge i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %154

158:                                              ; preds = %154
  %159 = call i32 (...) @flush_out()
  %160 = load i32, i32* @targ_fd, align 4
  %161 = icmp ne i32 %160, 1
  br i1 %161, label %162, label %174

162:                                              ; preds = %158
  %163 = load i32, i32* @targ_fd, align 4
  %164 = call i64 @fdatasync(i32 %163)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load i32, i32* @stderr, align 4
  %168 = load i8*, i8** @targ_fname, align 8
  %169 = call i32 @fprintf(i32 %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %168)
  %170 = call i32 @exit(i32 1) #3
  unreachable

171:                                              ; preds = %162
  %172 = load i32, i32* @targ_fd, align 4
  %173 = call i32 @close(i32 %172)
  br label %174

174:                                              ; preds = %171, %158
  %175 = load i64, i64* @verbosity, align 8
  %176 = icmp sgt i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = call i32 (...) @output_stats()
  br label %179

179:                                              ; preds = %177, %174
  %180 = load i32, i32* @rend, align 4
  %181 = load i32, i32* @rptr, align 4
  %182 = icmp sgt i32 %180, %181
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 1, i32 0
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %179, %116, %90, %70, %60, %33, %18
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @open(i8*, i32, ...) #1

declare dso_local i8* @lseek(i32, i32, i32) #1

declare dso_local i32 @load_index_header(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @prepare_read(...) #1

declare dso_local i64 @process_record(...) #1

declare dso_local i32 @flush_out(...) #1

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
